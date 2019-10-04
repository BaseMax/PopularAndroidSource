package com.adjust.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Process;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class ActivityHandler implements IActivityHandler {
    private static final String ACTIVITY_STATE_NAME = "Activity state";
    private static final String ATTRIBUTION_NAME = "Attribution";
    private static long BACKGROUND_TIMER_INTERVAL = 0;
    private static final String BACKGROUND_TIMER_NAME = "Background timer";
    private static final String DELAY_START_TIMER_NAME = "Delay Start timer";
    private static long FOREGROUND_TIMER_INTERVAL = 0;
    private static final String FOREGROUND_TIMER_NAME = "Foreground timer";
    private static long FOREGROUND_TIMER_START = 0;
    private static final String SESSION_CALLBACK_PARAMETERS_NAME = "Session Callback parameters";
    private static long SESSION_INTERVAL = 0;
    private static final String SESSION_PARAMETERS_NAME = "Session parameters";
    private static final String SESSION_PARTNER_PARAMETERS_NAME = "Session Partner parameters";
    private static long SUBSESSION_INTERVAL = 0;
    private static final String TIME_TRAVEL = "Time travel!";
    /* access modifiers changed from: private */
    public ActivityState activityState;
    /* access modifiers changed from: private */
    public AdjustConfig adjustConfig;
    /* access modifiers changed from: private */
    public AdjustAttribution attribution;
    private IAttributionHandler attributionHandler;
    private TimerOnce backgroundTimer;
    private TimerOnce delayStartTimer;
    private a deviceInfo;
    private TimerCycle foregroundTimer;
    private InstallReferrer installReferrer;
    private InternalState internalState;
    /* access modifiers changed from: private */
    public ILogger logger = AdjustFactory.getLogger();
    private IPackageHandler packageHandler;
    private CustomScheduledExecutor scheduledExecutor;
    private ISdkClickHandler sdkClickHandler;
    private SessionParameters sessionParameters;

    public class InternalState {
        boolean background;
        boolean delayStart;
        boolean enabled;
        boolean firstLaunch;
        boolean offline;
        boolean sessionResponseProcessed;
        boolean updatePackages;

        public InternalState() {
        }

        public boolean isEnabled() {
            return this.enabled;
        }

        public boolean isDisabled() {
            return !this.enabled;
        }

        public boolean isOffline() {
            return this.offline;
        }

        public boolean isOnline() {
            return !this.offline;
        }

        public boolean isInBackground() {
            return this.background;
        }

        public boolean isInForeground() {
            return !this.background;
        }

        public boolean isInDelayedStart() {
            return this.delayStart;
        }

        public boolean isNotInDelayedStart() {
            return !this.delayStart;
        }

        public boolean itHasToUpdatePackages() {
            return this.updatePackages;
        }

        public boolean isFirstLaunch() {
            return this.firstLaunch;
        }

        public boolean isNotFirstLaunch() {
            return !this.firstLaunch;
        }

        public boolean hasSessionResponseNotBeenProcessed() {
            return !this.sessionResponseProcessed;
        }
    }

    public void teardown(boolean z) {
        TimerOnce timerOnce = this.backgroundTimer;
        if (timerOnce != null) {
            timerOnce.teardown();
        }
        TimerCycle timerCycle = this.foregroundTimer;
        if (timerCycle != null) {
            timerCycle.teardown();
        }
        TimerOnce timerOnce2 = this.delayStartTimer;
        if (timerOnce2 != null) {
            timerOnce2.teardown();
        }
        CustomScheduledExecutor customScheduledExecutor = this.scheduledExecutor;
        if (customScheduledExecutor != null) {
            try {
                customScheduledExecutor.shutdownNow();
            } catch (SecurityException unused) {
            }
        }
        IPackageHandler iPackageHandler = this.packageHandler;
        if (iPackageHandler != null) {
            iPackageHandler.teardown(z);
        }
        IAttributionHandler iAttributionHandler = this.attributionHandler;
        if (iAttributionHandler != null) {
            iAttributionHandler.teardown();
        }
        ISdkClickHandler iSdkClickHandler = this.sdkClickHandler;
        if (iSdkClickHandler != null) {
            iSdkClickHandler.teardown();
        }
        SessionParameters sessionParameters2 = this.sessionParameters;
        if (sessionParameters2 != null) {
            if (sessionParameters2.callbackParameters != null) {
                this.sessionParameters.callbackParameters.clear();
            }
            if (this.sessionParameters.partnerParameters != null) {
                this.sessionParameters.partnerParameters.clear();
            }
        }
        teardownActivityStateS(z);
        teardownAttributionS(z);
        teardownAllSessionParametersS(z);
        if (z) {
            new SharedPreferencesManager(getContext()).clear();
        }
        this.packageHandler = null;
        this.logger = null;
        this.foregroundTimer = null;
        this.scheduledExecutor = null;
        this.backgroundTimer = null;
        this.delayStartTimer = null;
        this.internalState = null;
        this.deviceInfo = null;
        this.adjustConfig = null;
        this.attributionHandler = null;
        this.sdkClickHandler = null;
        this.sessionParameters = null;
    }

    private ActivityHandler(AdjustConfig adjustConfig2) {
        init(adjustConfig2);
        this.logger.lockLogLevel();
        this.scheduledExecutor = new CustomScheduledExecutor("ActivityHandler", false);
        this.internalState = new InternalState();
        this.internalState.enabled = adjustConfig2.startEnabled != null ? adjustConfig2.startEnabled.booleanValue() : true;
        this.internalState.offline = adjustConfig2.startOffline;
        InternalState internalState2 = this.internalState;
        internalState2.background = true;
        internalState2.delayStart = false;
        internalState2.updatePackages = false;
        internalState2.sessionResponseProcessed = false;
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.initI();
            }
        });
    }

    public AdjustConfig getAdjustConfig() {
        return this.adjustConfig;
    }

    public a getDeviceInfo() {
        return this.deviceInfo;
    }

    public ActivityState getActivityState() {
        return this.activityState;
    }

    public SessionParameters getSessionParameters() {
        return this.sessionParameters;
    }

    public void init(AdjustConfig adjustConfig2) {
        this.adjustConfig = adjustConfig2;
    }

    public static ActivityHandler getInstance(AdjustConfig adjustConfig2) {
        if (adjustConfig2 == null) {
            AdjustFactory.getLogger().error("AdjustConfig missing", new Object[0]);
            return null;
        } else if (!adjustConfig2.isValid()) {
            AdjustFactory.getLogger().error("AdjustConfig not initialized correctly", new Object[0]);
            return null;
        } else {
            if (adjustConfig2.processName != null) {
                int myPid = Process.myPid();
                ActivityManager activityManager = (ActivityManager) adjustConfig2.context.getSystemService("activity");
                if (activityManager != null) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = activityManager.getRunningAppProcesses().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.pid == myPid) {
                            if (!next.processName.equalsIgnoreCase(adjustConfig2.processName)) {
                                AdjustFactory.getLogger().info("Skipping initialization in background process (%s)", next.processName);
                                return null;
                            }
                        }
                    }
                } else {
                    return null;
                }
            }
            return new ActivityHandler(adjustConfig2);
        }
    }

    public void onResume() {
        this.internalState.background = false;
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.delayStartI();
                ActivityHandler.this.stopBackgroundTimerI();
                ActivityHandler.this.startForegroundTimerI();
                ActivityHandler.this.logger.verbose("Subsession start", new Object[0]);
                ActivityHandler.this.startI();
            }
        });
    }

    public void onPause() {
        this.internalState.background = true;
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.stopForegroundTimerI();
                ActivityHandler.this.startBackgroundTimerI();
                ActivityHandler.this.logger.verbose("Subsession end", new Object[0]);
                ActivityHandler.this.endI();
            }
        });
    }

    public void trackEvent(final AdjustEvent adjustEvent) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                if (ActivityHandler.this.activityState == null) {
                    ActivityHandler.this.logger.warn("Event tracked before first activity resumed.\nIf it was triggered in the Application class, it might timestamp or even send an install long before the user opens the app.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information.", new Object[0]);
                    ActivityHandler.this.startI();
                }
                ActivityHandler.this.trackEventI(adjustEvent);
            }
        });
    }

    public void finishedTrackingActivity(ResponseData responseData) {
        if (responseData instanceof SessionResponseData) {
            this.attributionHandler.checkSessionResponse((SessionResponseData) responseData);
        } else if (responseData instanceof SdkClickResponseData) {
            SdkClickResponseData sdkClickResponseData = (SdkClickResponseData) responseData;
            checkForInstallReferrerInfo(sdkClickResponseData);
            this.attributionHandler.checkSdkClickResponse(sdkClickResponseData);
        } else {
            if (responseData instanceof EventResponseData) {
                launchEventResponseTasks((EventResponseData) responseData);
            }
        }
    }

    public void setEnabled(final boolean z) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.setEnabledI(z);
            }
        });
    }

    public void setOfflineMode(final boolean z) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.setOfflineModeI(z);
            }
        });
    }

    public boolean isEnabled() {
        return isEnabledI();
    }

    private boolean isEnabledI() {
        ActivityState activityState2 = this.activityState;
        if (activityState2 != null) {
            return activityState2.enabled;
        }
        return this.internalState.isEnabled();
    }

    public void readOpenUrl(final Uri uri, final long j) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.readOpenUrlI(uri, j);
            }
        });
    }

    private void updateAdidI(String str) {
        if (str != null && !str.equals(this.activityState.adid)) {
            this.activityState.adid = str;
            writeActivityStateI();
        }
    }

    public boolean updateAttributionI(AdjustAttribution adjustAttribution) {
        if (adjustAttribution == null || adjustAttribution.equals(this.attribution)) {
            return false;
        }
        this.attribution = adjustAttribution;
        writeAttributionI();
        return true;
    }

    public void setAskingAttribution(final boolean z) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.setAskingAttributionI(z);
            }
        });
    }

    public void sendReftagReferrer() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.sendReftagReferrerI();
            }
        });
    }

    public void sendInstallReferrer(long j, long j2, String str) {
        CustomScheduledExecutor customScheduledExecutor = this.scheduledExecutor;
        final long j3 = j;
        final long j4 = j2;
        final String str2 = str;
        AnonymousClass2 r1 = new Runnable() {
            public final void run() {
                ActivityHandler.this.sendInstallReferrerI(j3, j4, str2);
            }
        };
        customScheduledExecutor.submit(r1);
    }

    public void launchEventResponseTasks(final EventResponseData eventResponseData) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.launchEventResponseTasksI(eventResponseData);
            }
        });
    }

    public void launchSdkClickResponseTasks(final SdkClickResponseData sdkClickResponseData) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.launchSdkClickResponseTasksI(sdkClickResponseData);
            }
        });
    }

    public void launchSessionResponseTasks(final SessionResponseData sessionResponseData) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.launchSessionResponseTasksI(sessionResponseData);
            }
        });
    }

    public void launchAttributionResponseTasks(final AttributionResponseData attributionResponseData) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.launchAttributionResponseTasksI(attributionResponseData);
            }
        });
    }

    public void sendFirstPackages() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.sendFirstPackagesI();
            }
        });
    }

    public void addSessionCallbackParameter(final String str, final String str2) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.addSessionCallbackParameterI(str, str2);
            }
        });
    }

    public void addSessionPartnerParameter(final String str, final String str2) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.addSessionPartnerParameterI(str, str2);
            }
        });
    }

    public void removeSessionCallbackParameter(final String str) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.removeSessionCallbackParameterI(str);
            }
        });
    }

    public void removeSessionPartnerParameter(final String str) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.removeSessionPartnerParameterI(str);
            }
        });
    }

    public void resetSessionCallbackParameters() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.resetSessionCallbackParametersI();
            }
        });
    }

    public void resetSessionPartnerParameters() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.resetSessionPartnerParametersI();
            }
        });
    }

    public void setPushToken(final String str, final boolean z) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                if (!z) {
                    new SharedPreferencesManager(ActivityHandler.this.getContext()).savePushToken(str);
                }
                if (ActivityHandler.this.activityState != null) {
                    ActivityHandler.this.setPushTokenI(str);
                }
            }
        });
    }

    public Context getContext() {
        return this.adjustConfig.context;
    }

    public void foregroundTimerFired() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.foregroundTimerFiredI();
            }
        });
    }

    public void backgroundTimerFired() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                ActivityHandler.this.backgroundTimerFiredI();
            }
        });
    }

    public String getAdid() {
        ActivityState activityState2 = this.activityState;
        if (activityState2 == null) {
            return null;
        }
        return activityState2.adid;
    }

    public AdjustAttribution getAttribution() {
        return this.attribution;
    }

    public ActivityPackage getAttributionPackageI() {
        b bVar = new b(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, System.currentTimeMillis());
        return bVar.buildAttributionPackage();
    }

    public InternalState getInternalState() {
        return this.internalState;
    }

    /* access modifiers changed from: private */
    public void initI() {
        SESSION_INTERVAL = AdjustFactory.getSessionInterval();
        SUBSESSION_INTERVAL = AdjustFactory.getSubsessionInterval();
        FOREGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
        FOREGROUND_TIMER_START = AdjustFactory.getTimerStart();
        BACKGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
        readAttributionI(this.adjustConfig.context);
        readActivityStateI(this.adjustConfig.context);
        this.sessionParameters = new SessionParameters();
        readSessionCallbackParametersI(this.adjustConfig.context);
        readSessionPartnerParametersI(this.adjustConfig.context);
        if (this.adjustConfig.startEnabled != null) {
            if (this.adjustConfig.preLaunchActionsArray == null) {
                this.adjustConfig.preLaunchActionsArray = new ArrayList();
            }
            this.adjustConfig.preLaunchActionsArray.add(new IRunActivityHandler() {
                public final void run(ActivityHandler activityHandler) {
                    activityHandler.setEnabledI(ActivityHandler.this.adjustConfig.startEnabled.booleanValue());
                }
            });
        }
        ActivityState activityState2 = this.activityState;
        if (activityState2 != null) {
            this.internalState.enabled = activityState2.enabled;
            this.internalState.updatePackages = this.activityState.updatePackages;
            this.internalState.firstLaunch = false;
        } else {
            this.internalState.firstLaunch = true;
        }
        readConfigFile(this.adjustConfig.context);
        this.deviceInfo = new a(this.adjustConfig.context, this.adjustConfig.sdkPrefix);
        if (this.adjustConfig.eventBufferingEnabled) {
            this.logger.info("Event buffering is enabled", new Object[0]);
        }
        if (this.deviceInfo.f1941a == null) {
            this.logger.warn("Unable to get Google Play Services Advertising ID at start time", new Object[0]);
            if (this.deviceInfo.c == null && this.deviceInfo.d == null && this.deviceInfo.e == null) {
                this.logger.error("Unable to get any device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
            }
        } else {
            this.logger.info("Google Play Services Advertising ID read correctly at start time", new Object[0]);
        }
        if (this.adjustConfig.defaultTracker != null) {
            this.logger.info("Default tracker: '%s'", this.adjustConfig.defaultTracker);
        }
        if (this.adjustConfig.pushToken != null) {
            this.logger.info("Push token: '%s'", this.adjustConfig.pushToken);
            if (this.activityState != null) {
                setPushToken(this.adjustConfig.pushToken, false);
            } else {
                new SharedPreferencesManager(getContext()).savePushToken(this.adjustConfig.pushToken);
            }
        } else if (this.activityState != null) {
            setPushToken(new SharedPreferencesManager(getContext()).getPushToken(), true);
        }
        TimerCycle timerCycle = new TimerCycle(new Runnable() {
            public final void run() {
                ActivityHandler.this.foregroundTimerFired();
            }
        }, FOREGROUND_TIMER_START, FOREGROUND_TIMER_INTERVAL, FOREGROUND_TIMER_NAME);
        this.foregroundTimer = timerCycle;
        if (this.adjustConfig.sendInBackground) {
            this.logger.info("Send in background configured", new Object[0]);
            this.backgroundTimer = new TimerOnce(new Runnable() {
                public final void run() {
                    ActivityHandler.this.backgroundTimerFired();
                }
            }, BACKGROUND_TIMER_NAME);
        }
        if (this.activityState == null && this.adjustConfig.delayStart != null && this.adjustConfig.delayStart.doubleValue() > 0.0d) {
            this.logger.info("Delay start configured", new Object[0]);
            this.internalState.delayStart = true;
            this.delayStartTimer = new TimerOnce(new Runnable() {
                public final void run() {
                    ActivityHandler.this.sendFirstPackages();
                }
            }, DELAY_START_TIMER_NAME);
        }
        UtilNetworking.setUserAgent(this.adjustConfig.userAgent);
        this.packageHandler = AdjustFactory.getPackageHandler(this, this.adjustConfig.context, toSendI(false));
        this.attributionHandler = AdjustFactory.getAttributionHandler(this, getAttributionPackageI(), toSendI(false));
        this.sdkClickHandler = AdjustFactory.getSdkClickHandler(this, toSendI(true));
        if (isToUpdatePackagesI()) {
            updatePackagesI();
        }
        preLaunchActionsI(this.adjustConfig.preLaunchActionsArray);
        this.installReferrer = new InstallReferrer(this.adjustConfig.context, this);
        sendReftagReferrerI();
    }

    private void readConfigFile(Context context) {
        try {
            InputStream open = context.getAssets().open("adjust_config.properties");
            Properties properties = new Properties();
            properties.load(open);
            this.logger.verbose("adjust_config.properties file read and loaded", new Object[0]);
            String property = properties.getProperty("defaultTracker");
            if (property != null) {
                this.adjustConfig.defaultTracker = property;
            }
        } catch (Exception e) {
            this.logger.debug("%s file not found in this app", e.getMessage());
        }
    }

    private void preLaunchActionsI(List<IRunActivityHandler> list) {
        if (list != null) {
            for (IRunActivityHandler run : list) {
                run.run(this);
            }
        }
    }

    /* access modifiers changed from: private */
    public void startI() {
        ActivityState activityState2 = this.activityState;
        if (activityState2 == null || activityState2.enabled) {
            updateHandlersStatusAndSendI();
            processSessionI();
            checkAttributionStateI();
        }
    }

    private void processSessionI() {
        long currentTimeMillis = System.currentTimeMillis();
        ActivityState activityState2 = this.activityState;
        if (activityState2 == null) {
            this.activityState = new ActivityState();
            SharedPreferencesManager sharedPreferencesManager = new SharedPreferencesManager(getContext());
            this.activityState.pushToken = sharedPreferencesManager.getPushToken();
            if (this.internalState.isEnabled()) {
                this.activityState.sessionCount = 1;
                transferSessionPackageI(currentTimeMillis);
            }
            this.activityState.resetSessionAttributes(currentTimeMillis);
            this.activityState.enabled = this.internalState.isEnabled();
            this.activityState.updatePackages = this.internalState.itHasToUpdatePackages();
            writeActivityStateI();
            sharedPreferencesManager.removePushToken();
            return;
        }
        long j = currentTimeMillis - activityState2.lastActivity;
        if (j < 0) {
            this.logger.error(TIME_TRAVEL, new Object[0]);
            this.activityState.lastActivity = currentTimeMillis;
            writeActivityStateI();
        } else if (j > SESSION_INTERVAL) {
            trackNewSessionI(currentTimeMillis);
        } else if (j > SUBSESSION_INTERVAL) {
            this.activityState.subsessionCount++;
            this.activityState.sessionLength += j;
            ActivityState activityState3 = this.activityState;
            activityState3.lastActivity = currentTimeMillis;
            this.logger.verbose("Started subsession %d of session %d", Integer.valueOf(activityState3.subsessionCount), Integer.valueOf(this.activityState.sessionCount));
            writeActivityStateI();
        } else {
            this.logger.verbose("Time span since last activity too short for a new subsession", new Object[0]);
        }
    }

    private void trackNewSessionI(long j) {
        this.activityState.sessionCount++;
        this.activityState.lastInterval = j - this.activityState.lastActivity;
        transferSessionPackageI(j);
        this.activityState.resetSessionAttributes(j);
        writeActivityStateI();
    }

    private void checkAttributionStateI() {
        if (checkActivityStateI(this.activityState)) {
            if (this.internalState.isFirstLaunch() && this.internalState.hasSessionResponseNotBeenProcessed()) {
                return;
            }
            if (this.attribution == null || this.activityState.askingAttribution) {
                this.attributionHandler.getAttribution();
            }
        }
    }

    /* access modifiers changed from: private */
    public void endI() {
        if (!toSendI()) {
            pauseSendingI();
        }
        if (updateActivityStateI(System.currentTimeMillis())) {
            writeActivityStateI();
        }
    }

    /* access modifiers changed from: private */
    public void trackEventI(AdjustEvent adjustEvent) {
        if (checkActivityStateI(this.activityState) && isEnabledI() && checkEventI(adjustEvent) && checkOrderIdI(adjustEvent.orderId)) {
            long currentTimeMillis = System.currentTimeMillis();
            this.activityState.eventCount++;
            updateActivityStateI(currentTimeMillis);
            b bVar = new b(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, currentTimeMillis);
            ActivityPackage buildEventPackage = bVar.buildEventPackage(adjustEvent, this.internalState.isInDelayedStart());
            this.packageHandler.addPackage(buildEventPackage);
            if (this.adjustConfig.eventBufferingEnabled) {
                this.logger.info("Buffered event %s", buildEventPackage.getSuffix());
            } else {
                this.packageHandler.sendFirstPackage();
            }
            if (this.adjustConfig.sendInBackground && this.internalState.isInBackground()) {
                startBackgroundTimerI();
            }
            writeActivityStateI();
        }
    }

    /* access modifiers changed from: private */
    public void launchEventResponseTasksI(final EventResponseData eventResponseData) {
        updateAdidI(eventResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (!eventResponseData.success || this.adjustConfig.onEventTrackingSucceededListener == null) {
            if (!eventResponseData.success && this.adjustConfig.onEventTrackingFailedListener != null) {
                this.logger.debug("Launching failed event tracking listener", new Object[0]);
                handler.post(new Runnable() {
                    public final void run() {
                        if (ActivityHandler.this.adjustConfig != null && ActivityHandler.this.adjustConfig.onEventTrackingFailedListener != null) {
                            ActivityHandler.this.adjustConfig.onEventTrackingFailedListener.onFinishedEventTrackingFailed(eventResponseData.getFailureResponseData());
                        }
                    }
                });
            }
            return;
        }
        this.logger.debug("Launching success event tracking listener", new Object[0]);
        handler.post(new Runnable() {
            public final void run() {
                if (ActivityHandler.this.adjustConfig != null && ActivityHandler.this.adjustConfig.onEventTrackingSucceededListener != null) {
                    ActivityHandler.this.adjustConfig.onEventTrackingSucceededListener.onFinishedEventTrackingSucceeded(eventResponseData.getSuccessResponseData());
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void launchSdkClickResponseTasksI(SdkClickResponseData sdkClickResponseData) {
        updateAdidI(sdkClickResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (updateAttributionI(sdkClickResponseData.attribution)) {
            launchAttributionListenerI(handler);
        }
    }

    /* access modifiers changed from: private */
    public void launchSessionResponseTasksI(SessionResponseData sessionResponseData) {
        updateAdidI(sessionResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (updateAttributionI(sessionResponseData.attribution)) {
            launchAttributionListenerI(handler);
        }
        if (sessionResponseData.success) {
            new SharedPreferencesManager(getContext()).setInstallTracked();
        }
        launchSessionResponseListenerI(sessionResponseData, handler);
        this.internalState.sessionResponseProcessed = true;
    }

    private void launchSessionResponseListenerI(final SessionResponseData sessionResponseData, Handler handler) {
        if (!sessionResponseData.success || this.adjustConfig.onSessionTrackingSucceededListener == null) {
            if (!sessionResponseData.success && this.adjustConfig.onSessionTrackingFailedListener != null) {
                this.logger.debug("Launching failed session tracking listener", new Object[0]);
                handler.post(new Runnable() {
                    public final void run() {
                        if (ActivityHandler.this.adjustConfig != null && ActivityHandler.this.adjustConfig.onSessionTrackingFailedListener != null) {
                            ActivityHandler.this.adjustConfig.onSessionTrackingFailedListener.onFinishedSessionTrackingFailed(sessionResponseData.getFailureResponseData());
                        }
                    }
                });
            }
            return;
        }
        this.logger.debug("Launching success session tracking listener", new Object[0]);
        handler.post(new Runnable() {
            public final void run() {
                if (ActivityHandler.this.adjustConfig != null && ActivityHandler.this.adjustConfig.onSessionTrackingSucceededListener != null) {
                    ActivityHandler.this.adjustConfig.onSessionTrackingSucceededListener.onFinishedSessionTrackingSucceeded(sessionResponseData.getSuccessResponseData());
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void launchAttributionResponseTasksI(AttributionResponseData attributionResponseData) {
        updateAdidI(attributionResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (updateAttributionI(attributionResponseData.attribution)) {
            launchAttributionListenerI(handler);
        }
        prepareDeeplinkI(attributionResponseData.deeplink, handler);
    }

    private void launchAttributionListenerI(Handler handler) {
        if (this.adjustConfig.onAttributionChangedListener != null) {
            handler.post(new Runnable() {
                public final void run() {
                    if (ActivityHandler.this.adjustConfig != null && ActivityHandler.this.adjustConfig.onAttributionChangedListener != null) {
                        ActivityHandler.this.adjustConfig.onAttributionChangedListener.onAttributionChanged(ActivityHandler.this.attribution);
                    }
                }
            });
        }
    }

    private void prepareDeeplinkI(final Uri uri, Handler handler) {
        if (uri != null) {
            this.logger.info("Deferred deeplink received (%s)", uri);
            final Intent createDeeplinkIntentI = createDeeplinkIntentI(uri);
            handler.post(new Runnable() {
                public final void run() {
                    if (ActivityHandler.this.adjustConfig != null) {
                        boolean z = true;
                        if (ActivityHandler.this.adjustConfig.onDeeplinkResponseListener != null) {
                            z = ActivityHandler.this.adjustConfig.onDeeplinkResponseListener.launchReceivedDeeplink(uri);
                        }
                        if (z) {
                            ActivityHandler.this.launchDeeplinkMain(createDeeplinkIntentI, uri);
                        }
                    }
                }
            });
        }
    }

    private Intent createDeeplinkIntentI(Uri uri) {
        Intent intent;
        if (this.adjustConfig.deepLinkComponent == null) {
            intent = new Intent("android.intent.action.VIEW", uri);
        } else {
            intent = new Intent("android.intent.action.VIEW", uri, this.adjustConfig.context, this.adjustConfig.deepLinkComponent);
        }
        intent.setFlags(268435456);
        intent.setPackage(this.adjustConfig.context.getPackageName());
        return intent;
    }

    /* access modifiers changed from: private */
    public void launchDeeplinkMain(Intent intent, Uri uri) {
        if (!(this.adjustConfig.context.getPackageManager().queryIntentActivities(intent, 0).size() > 0)) {
            this.logger.error("Unable to open deferred deep link (%s)", uri);
            return;
        }
        this.logger.info("Open deferred deep link (%s)", uri);
        this.adjustConfig.context.startActivity(intent);
    }

    /* access modifiers changed from: private */
    public void setEnabledI(boolean z) {
        if (hasChangedStateI(isEnabledI(), z, "Adjust already enabled", "Adjust already disabled")) {
            this.internalState.enabled = z;
            if (this.activityState == null) {
                updateStatusI(!z, "Handlers will start as paused due to the SDK being disabled", "Handlers will still start as paused", "Handlers will start as active due to the SDK being enabled");
                return;
            }
            if (z) {
                SharedPreferencesManager sharedPreferencesManager = new SharedPreferencesManager(getContext());
                if (!sharedPreferencesManager.getInstallTracked()) {
                    trackNewSessionI(System.currentTimeMillis());
                }
                String pushToken = sharedPreferencesManager.getPushToken();
                if (pushToken != null && !pushToken.equals(this.activityState.pushToken)) {
                    setPushToken(pushToken, true);
                }
                if (sharedPreferencesManager.getRawReferrerArray() != null) {
                    sendReftagReferrer();
                }
            }
            this.activityState.enabled = z;
            writeActivityStateI();
            updateStatusI(!z, "Pausing handlers due to SDK being disabled", "Handlers remain paused", "Resuming handlers due to SDK being enabled");
        }
    }

    /* access modifiers changed from: private */
    public void setOfflineModeI(boolean z) {
        if (hasChangedStateI(this.internalState.isOffline(), z, "Adjust already in offline mode", "Adjust already in online mode")) {
            this.internalState.offline = z;
            if (this.activityState == null) {
                updateStatusI(z, "Handlers will start paused due to SDK being offline", "Handlers will still start as paused", "Handlers will start as active due to SDK being online");
            } else {
                updateStatusI(z, "Pausing handlers to put SDK offline mode", "Handlers remain paused", "Resuming handlers to put SDK in online mode");
            }
        }
    }

    private boolean hasChangedStateI(boolean z, boolean z2, String str, String str2) {
        if (z != z2) {
            return true;
        }
        if (z) {
            this.logger.debug(str, new Object[0]);
        } else {
            this.logger.debug(str2, new Object[0]);
        }
        return false;
    }

    private void updateStatusI(boolean z, String str, String str2, String str3) {
        if (z) {
            this.logger.info(str, new Object[0]);
        } else if (!pausedI(false)) {
            this.logger.info(str3, new Object[0]);
        } else if (pausedI(true)) {
            this.logger.info(str2, new Object[0]);
        } else {
            ILogger iLogger = this.logger;
            iLogger.info(str2 + ", except the Sdk Click Handler", new Object[0]);
        }
        updateHandlersStatusAndSendI();
    }

    /* access modifiers changed from: private */
    public void setAskingAttributionI(boolean z) {
        this.activityState.askingAttribution = z;
        writeActivityStateI();
    }

    /* access modifiers changed from: private */
    public void sendReftagReferrerI() {
        if (isEnabledI()) {
            this.sdkClickHandler.sendReftagReferrers();
        }
    }

    /* access modifiers changed from: private */
    public void sendInstallReferrerI(long j, long j2, String str) {
        if (!isEnabledI() || str == null) {
            return;
        }
        if (j != this.activityState.clickTime || j2 != this.activityState.installBegin || !str.equals(this.activityState.installReferrer)) {
            this.sdkClickHandler.sendSdkClick(PackageFactory.buildInstallReferrerSdkClickPackage(str, j, j2, this.activityState, this.adjustConfig, this.deviceInfo, this.sessionParameters));
        }
    }

    /* access modifiers changed from: private */
    public void readOpenUrlI(Uri uri, long j) {
        if (isEnabledI()) {
            ActivityPackage buildDeeplinkSdkClickPackage = PackageFactory.buildDeeplinkSdkClickPackage(uri, j, this.activityState, this.adjustConfig, this.deviceInfo, this.sessionParameters);
            if (buildDeeplinkSdkClickPackage != null) {
                this.sdkClickHandler.sendSdkClick(buildDeeplinkSdkClickPackage);
            }
        }
    }

    private void updateHandlersStatusAndSendI() {
        if (!toSendI()) {
            pauseSendingI();
            return;
        }
        resumeSendingI();
        if (this.internalState.isFirstLaunch() && this.internalState.hasSessionResponseNotBeenProcessed()) {
            this.packageHandler.sendFirstPackage();
        }
        if (!this.adjustConfig.eventBufferingEnabled) {
            this.packageHandler.sendFirstPackage();
        }
    }

    private void pauseSendingI() {
        this.attributionHandler.pauseSending();
        this.packageHandler.pauseSending();
        if (!toSendI(true)) {
            this.sdkClickHandler.pauseSending();
        } else {
            this.sdkClickHandler.resumeSending();
        }
    }

    private void resumeSendingI() {
        this.attributionHandler.resumeSending();
        this.packageHandler.resumeSending();
        this.sdkClickHandler.resumeSending();
    }

    private boolean updateActivityStateI(long j) {
        if (!checkActivityStateI(this.activityState)) {
            return false;
        }
        long j2 = j - this.activityState.lastActivity;
        if (j2 > SESSION_INTERVAL) {
            return false;
        }
        ActivityState activityState2 = this.activityState;
        activityState2.lastActivity = j;
        if (j2 < 0) {
            this.logger.error(TIME_TRAVEL, new Object[0]);
        } else {
            activityState2.sessionLength += j2;
            this.activityState.timeSpent += j2;
        }
        return true;
    }

    public static boolean deleteActivityState(Context context) {
        return context.deleteFile(Constants.ACTIVITY_STATE_FILENAME);
    }

    public static boolean deleteAttribution(Context context) {
        return context.deleteFile(Constants.ATTRIBUTION_FILENAME);
    }

    public static boolean deleteSessionCallbackParameters(Context context) {
        return context.deleteFile(Constants.SESSION_CALLBACK_PARAMETERS_FILENAME);
    }

    public static boolean deleteSessionPartnerParameters(Context context) {
        return context.deleteFile(Constants.SESSION_PARTNER_PARAMETERS_FILENAME);
    }

    private void transferSessionPackageI(long j) {
        b bVar = new b(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, j);
        this.packageHandler.addPackage(bVar.buildSessionPackage(this.internalState.isInDelayedStart()));
        this.packageHandler.sendFirstPackage();
    }

    /* access modifiers changed from: private */
    public void startForegroundTimerI() {
        if (isEnabledI()) {
            this.foregroundTimer.start();
        }
    }

    /* access modifiers changed from: private */
    public void stopForegroundTimerI() {
        this.foregroundTimer.suspend();
    }

    /* access modifiers changed from: private */
    public void foregroundTimerFiredI() {
        if (!isEnabledI()) {
            stopForegroundTimerI();
            return;
        }
        if (toSendI()) {
            this.packageHandler.sendFirstPackage();
        }
        if (updateActivityStateI(System.currentTimeMillis())) {
            writeActivityStateI();
        }
    }

    /* access modifiers changed from: private */
    public void startBackgroundTimerI() {
        if (this.backgroundTimer != null && toSendI() && this.backgroundTimer.getFireIn() <= 0) {
            this.backgroundTimer.startIn(BACKGROUND_TIMER_INTERVAL);
        }
    }

    /* access modifiers changed from: private */
    public void stopBackgroundTimerI() {
        TimerOnce timerOnce = this.backgroundTimer;
        if (timerOnce != null) {
            timerOnce.cancel();
        }
    }

    /* access modifiers changed from: private */
    public void backgroundTimerFiredI() {
        if (toSendI()) {
            this.packageHandler.sendFirstPackage();
        }
    }

    /* access modifiers changed from: private */
    public void delayStartI() {
        if (!this.internalState.isNotInDelayedStart() && !isToUpdatePackagesI()) {
            double doubleValue = this.adjustConfig.delayStart != null ? this.adjustConfig.delayStart.doubleValue() : 0.0d;
            long maxDelayStart = AdjustFactory.getMaxDelayStart();
            long j = (long) (1000.0d * doubleValue);
            if (j > maxDelayStart) {
                double d = (double) (maxDelayStart / 1000);
                this.logger.warn("Delay start of %s seconds bigger than max allowed value of %s seconds", Util.SecondsDisplayFormat.format(doubleValue), Util.SecondsDisplayFormat.format(d));
                doubleValue = d;
            } else {
                maxDelayStart = j;
            }
            this.logger.info("Waiting %s seconds before starting first session", Util.SecondsDisplayFormat.format(doubleValue));
            this.delayStartTimer.startIn(maxDelayStart);
            this.internalState.updatePackages = true;
            ActivityState activityState2 = this.activityState;
            if (activityState2 != null) {
                activityState2.updatePackages = true;
                writeActivityStateI();
            }
        }
    }

    /* access modifiers changed from: private */
    public void sendFirstPackagesI() {
        if (this.internalState.isNotInDelayedStart()) {
            this.logger.info("Start delay expired or never configured", new Object[0]);
            return;
        }
        updatePackagesI();
        this.internalState.delayStart = false;
        this.delayStartTimer.cancel();
        this.delayStartTimer = null;
        updateHandlersStatusAndSendI();
    }

    private void updatePackagesI() {
        this.packageHandler.updatePackages(this.sessionParameters);
        this.internalState.updatePackages = false;
        ActivityState activityState2 = this.activityState;
        if (activityState2 != null) {
            activityState2.updatePackages = false;
            writeActivityStateI();
        }
    }

    private boolean isToUpdatePackagesI() {
        ActivityState activityState2 = this.activityState;
        if (activityState2 != null) {
            return activityState2.updatePackages;
        }
        return this.internalState.itHasToUpdatePackages();
    }

    public void addSessionCallbackParameterI(String str, String str2) {
        if (Util.isValidParameter(str, "key", "Session Callback") && Util.isValidParameter(str2, FirebaseAnalytics.b.VALUE, "Session Callback")) {
            if (this.sessionParameters.callbackParameters == null) {
                this.sessionParameters.callbackParameters = new LinkedHashMap();
            }
            String str3 = this.sessionParameters.callbackParameters.get(str);
            if (str2.equals(str3)) {
                this.logger.verbose("Key %s already present with the same value", str);
                return;
            }
            if (str3 != null) {
                this.logger.warn("Key %s will be overwritten", str);
            }
            this.sessionParameters.callbackParameters.put(str, str2);
            writeSessionCallbackParametersI();
        }
    }

    public void addSessionPartnerParameterI(String str, String str2) {
        if (Util.isValidParameter(str, "key", "Session Partner") && Util.isValidParameter(str2, FirebaseAnalytics.b.VALUE, "Session Partner")) {
            if (this.sessionParameters.partnerParameters == null) {
                this.sessionParameters.partnerParameters = new LinkedHashMap();
            }
            String str3 = this.sessionParameters.partnerParameters.get(str);
            if (str2.equals(str3)) {
                this.logger.verbose("Key %s already present with the same value", str);
                return;
            }
            if (str3 != null) {
                this.logger.warn("Key %s will be overwritten", str);
            }
            this.sessionParameters.partnerParameters.put(str, str2);
            writeSessionPartnerParametersI();
        }
    }

    public void removeSessionCallbackParameterI(String str) {
        if (Util.isValidParameter(str, "key", "Session Callback")) {
            if (this.sessionParameters.callbackParameters == null) {
                this.logger.warn("Session Callback parameters are not set", new Object[0]);
            } else if (this.sessionParameters.callbackParameters.remove(str) == null) {
                this.logger.warn("Key %s does not exist", str);
            } else {
                this.logger.debug("Key %s will be removed", str);
                writeSessionCallbackParametersI();
            }
        }
    }

    public void removeSessionPartnerParameterI(String str) {
        if (Util.isValidParameter(str, "key", "Session Partner")) {
            if (this.sessionParameters.partnerParameters == null) {
                this.logger.warn("Session Partner parameters are not set", new Object[0]);
            } else if (this.sessionParameters.partnerParameters.remove(str) == null) {
                this.logger.warn("Key %s does not exist", str);
            } else {
                this.logger.debug("Key %s will be removed", str);
                writeSessionPartnerParametersI();
            }
        }
    }

    public void resetSessionCallbackParametersI() {
        if (this.sessionParameters.callbackParameters == null) {
            this.logger.warn("Session Callback parameters are not set", new Object[0]);
        }
        this.sessionParameters.callbackParameters = null;
        writeSessionCallbackParametersI();
    }

    public void resetSessionPartnerParametersI() {
        if (this.sessionParameters.partnerParameters == null) {
            this.logger.warn("Session Partner parameters are not set", new Object[0]);
        }
        this.sessionParameters.partnerParameters = null;
        writeSessionPartnerParametersI();
    }

    /* access modifiers changed from: private */
    public void setPushTokenI(String str) {
        if (checkActivityStateI(this.activityState) && isEnabledI() && str != null && !str.equals(this.activityState.pushToken)) {
            this.activityState.pushToken = str;
            writeActivityStateI();
            b bVar = new b(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, System.currentTimeMillis());
            ActivityPackage buildInfoPackage = bVar.buildInfoPackage(Constants.PUSH);
            this.packageHandler.addPackage(buildInfoPackage);
            new SharedPreferencesManager(getContext()).removePushToken();
            if (this.adjustConfig.eventBufferingEnabled) {
                this.logger.info("Buffered event %s", buildInfoPackage.getSuffix());
                return;
            }
            this.packageHandler.sendFirstPackage();
        }
    }

    private void readActivityStateI(Context context) {
        try {
            this.activityState = (ActivityState) Util.readObject(context, Constants.ACTIVITY_STATE_FILENAME, ACTIVITY_STATE_NAME, ActivityState.class);
        } catch (Exception e) {
            this.logger.error("Failed to read %s file (%s)", ACTIVITY_STATE_NAME, e.getMessage());
            this.activityState = null;
        }
    }

    private void readAttributionI(Context context) {
        try {
            this.attribution = (AdjustAttribution) Util.readObject(context, Constants.ATTRIBUTION_FILENAME, ATTRIBUTION_NAME, AdjustAttribution.class);
        } catch (Exception e) {
            this.logger.error("Failed to read %s file (%s)", ATTRIBUTION_NAME, e.getMessage());
            this.attribution = null;
        }
    }

    private void readSessionCallbackParametersI(Context context) {
        try {
            this.sessionParameters.callbackParameters = (Map) Util.readObject(context, Constants.SESSION_CALLBACK_PARAMETERS_FILENAME, SESSION_CALLBACK_PARAMETERS_NAME, Map.class);
        } catch (Exception e) {
            this.logger.error("Failed to read %s file (%s)", SESSION_CALLBACK_PARAMETERS_NAME, e.getMessage());
            this.sessionParameters.callbackParameters = null;
        }
    }

    private void readSessionPartnerParametersI(Context context) {
        try {
            this.sessionParameters.partnerParameters = (Map) Util.readObject(context, Constants.SESSION_PARTNER_PARAMETERS_FILENAME, SESSION_PARTNER_PARAMETERS_NAME, Map.class);
        } catch (Exception e) {
            this.logger.error("Failed to read %s file (%s)", SESSION_PARTNER_PARAMETERS_NAME, e.getMessage());
            this.sessionParameters.partnerParameters = null;
        }
    }

    private void writeActivityStateI() {
        synchronized (ActivityState.class) {
            if (this.activityState != null) {
                Util.writeObject(this.activityState, this.adjustConfig.context, Constants.ACTIVITY_STATE_FILENAME, ACTIVITY_STATE_NAME);
            }
        }
    }

    private void teardownActivityStateS(boolean z) {
        synchronized (ActivityState.class) {
            if (this.activityState != null) {
                if (!(!z || this.adjustConfig == null || this.adjustConfig.context == null)) {
                    deleteActivityState(this.adjustConfig.context);
                }
                this.activityState = null;
            }
        }
    }

    private void writeAttributionI() {
        synchronized (AdjustAttribution.class) {
            if (this.attribution != null) {
                Util.writeObject(this.attribution, this.adjustConfig.context, Constants.ATTRIBUTION_FILENAME, ATTRIBUTION_NAME);
            }
        }
    }

    private void teardownAttributionS(boolean z) {
        synchronized (AdjustAttribution.class) {
            if (this.attribution != null) {
                if (!(!z || this.adjustConfig == null || this.adjustConfig.context == null)) {
                    deleteAttribution(this.adjustConfig.context);
                }
                this.attribution = null;
            }
        }
    }

    private void writeSessionCallbackParametersI() {
        synchronized (SessionParameters.class) {
            if (this.sessionParameters != null) {
                Util.writeObject(this.sessionParameters.callbackParameters, this.adjustConfig.context, Constants.SESSION_CALLBACK_PARAMETERS_FILENAME, SESSION_CALLBACK_PARAMETERS_NAME);
            }
        }
    }

    private void writeSessionPartnerParametersI() {
        synchronized (SessionParameters.class) {
            if (this.sessionParameters != null) {
                Util.writeObject(this.sessionParameters.partnerParameters, this.adjustConfig.context, Constants.SESSION_PARTNER_PARAMETERS_FILENAME, SESSION_PARTNER_PARAMETERS_NAME);
            }
        }
    }

    private void teardownAllSessionParametersS(boolean z) {
        synchronized (SessionParameters.class) {
            if (this.sessionParameters != null) {
                if (!(!z || this.adjustConfig == null || this.adjustConfig.context == null)) {
                    deleteSessionCallbackParameters(this.adjustConfig.context);
                    deleteSessionPartnerParameters(this.adjustConfig.context);
                }
                this.sessionParameters = null;
            }
        }
    }

    private boolean checkEventI(AdjustEvent adjustEvent) {
        if (adjustEvent == null) {
            this.logger.error("Event missing", new Object[0]);
            return false;
        } else if (adjustEvent.isValid()) {
            return true;
        } else {
            this.logger.error("Event not initialized correctly", new Object[0]);
            return false;
        }
    }

    private boolean checkOrderIdI(String str) {
        if (str != null && !str.isEmpty()) {
            if (this.activityState.findOrderId(str)) {
                this.logger.info("Skipping duplicated order ID '%s'", str);
                return false;
            }
            this.activityState.addOrderId(str);
            this.logger.verbose("Added order ID '%s'", str);
        }
        return true;
    }

    private boolean checkActivityStateI(ActivityState activityState2) {
        if (activityState2 != null) {
            return true;
        }
        this.logger.error("Missing activity state", new Object[0]);
        return false;
    }

    private boolean pausedI() {
        return pausedI(false);
    }

    private boolean pausedI(boolean z) {
        return z ? this.internalState.isOffline() || !isEnabledI() : this.internalState.isOffline() || !isEnabledI() || this.internalState.isInDelayedStart();
    }

    private boolean toSendI() {
        return toSendI(false);
    }

    private boolean toSendI(boolean z) {
        if (pausedI(z)) {
            return false;
        }
        if (this.adjustConfig.sendInBackground) {
            return true;
        }
        return this.internalState.isInForeground();
    }

    private void checkForInstallReferrerInfo(SdkClickResponseData sdkClickResponseData) {
        if (sdkClickResponseData.isInstallReferrer) {
            this.activityState.clickTime = sdkClickResponseData.clickTime;
            this.activityState.installBegin = sdkClickResponseData.installBegin;
            this.activityState.installReferrer = sdkClickResponseData.installReferrer;
            writeActivityStateI();
        }
    }
}
