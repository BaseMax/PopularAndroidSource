package com.adjust.sdk;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.a.a;
import org.a.b;

public class SdkClickHandler implements ISdkClickHandler {
    private static final double MILLISECONDS_TO_SECONDS_DIVISOR = 1000.0d;
    private static final String SCHEDULED_EXECUTOR_SOURCE = "SdkClickHandler";
    private static final String SOURCE_INSTALL_REFERRER = "install_referrer";
    private static final String SOURCE_REFTAG = "reftag";
    /* access modifiers changed from: private */
    public WeakReference<IActivityHandler> activityHandlerWeakRef;
    private BackoffStrategy backoffStrategy = AdjustFactory.getSdkClickBackoffStrategy();
    /* access modifiers changed from: private */
    public ILogger logger = AdjustFactory.getLogger();
    /* access modifiers changed from: private */
    public List<ActivityPackage> packageQueue;
    private boolean paused;
    private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor(SCHEDULED_EXECUTOR_SOURCE, false);

    public SdkClickHandler(IActivityHandler iActivityHandler, boolean z) {
        init(iActivityHandler, z);
    }

    public void init(IActivityHandler iActivityHandler, boolean z) {
        this.paused = !z;
        this.packageQueue = new ArrayList();
        this.activityHandlerWeakRef = new WeakReference<>(iActivityHandler);
    }

    public void pauseSending() {
        this.paused = true;
    }

    public void resumeSending() {
        this.paused = false;
        sendNextSdkClick();
    }

    public void sendSdkClick(final ActivityPackage activityPackage) {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                SdkClickHandler.this.packageQueue.add(activityPackage);
                SdkClickHandler.this.logger.debug("Added sdk_click %d", Integer.valueOf(SdkClickHandler.this.packageQueue.size()));
                SdkClickHandler.this.logger.verbose("%s", activityPackage.getExtendedString());
                SdkClickHandler.this.sendNextSdkClick();
            }
        });
    }

    public void sendReftagReferrers() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                IActivityHandler iActivityHandler = (IActivityHandler) SdkClickHandler.this.activityHandlerWeakRef.get();
                SharedPreferencesManager sharedPreferencesManager = new SharedPreferencesManager(iActivityHandler.getContext());
                try {
                    a rawReferrerArray = sharedPreferencesManager.getRawReferrerArray();
                    boolean z = false;
                    for (int i = 0; i < rawReferrerArray.length(); i++) {
                        a jSONArray = rawReferrerArray.getJSONArray(i);
                        if (jSONArray.optInt(2, -1) == 0) {
                            String optString = jSONArray.optString(0, null);
                            long optLong = jSONArray.optLong(1, -1);
                            jSONArray.put(2, 1);
                            SdkClickHandler.this.sendSdkClick(PackageFactory.buildReftagSdkClickPackage(optString, optLong, iActivityHandler.getActivityState(), iActivityHandler.getAdjustConfig(), iActivityHandler.getDeviceInfo(), iActivityHandler.getSessionParameters()));
                            z = true;
                        }
                    }
                    if (z) {
                        sharedPreferencesManager.saveRawReferrerArray(rawReferrerArray);
                    }
                } catch (b e) {
                    SdkClickHandler.this.logger.error("Send saved raw referrers error (%s)", e.getMessage());
                }
            }
        });
    }

    public void teardown() {
        this.logger.verbose("SdkClickHandler teardown", new Object[0]);
        CustomScheduledExecutor customScheduledExecutor = this.scheduledExecutor;
        if (customScheduledExecutor != null) {
            try {
                customScheduledExecutor.shutdownNow();
            } catch (SecurityException unused) {
            }
        }
        List<ActivityPackage> list = this.packageQueue;
        if (list != null) {
            list.clear();
        }
        WeakReference<IActivityHandler> weakReference = this.activityHandlerWeakRef;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.logger = null;
        this.packageQueue = null;
        this.backoffStrategy = null;
        this.scheduledExecutor = null;
    }

    /* access modifiers changed from: private */
    public void sendNextSdkClick() {
        this.scheduledExecutor.submit(new Runnable() {
            public final void run() {
                SdkClickHandler.this.sendNextSdkClickI();
            }
        });
    }

    /* access modifiers changed from: private */
    public void sendNextSdkClickI() {
        if (!this.paused && !this.packageQueue.isEmpty()) {
            final ActivityPackage remove = this.packageQueue.remove(0);
            int retries = remove.getRetries();
            AnonymousClass4 r3 = new Runnable() {
                public final void run() {
                    SdkClickHandler.this.sendSdkClickI(remove);
                    SdkClickHandler.this.sendNextSdkClick();
                }
            };
            if (retries <= 0) {
                r3.run();
                return;
            }
            long waitingTime = Util.getWaitingTime(retries, this.backoffStrategy);
            double d = (double) waitingTime;
            Double.isNaN(d);
            String format = Util.SecondsDisplayFormat.format(d / MILLISECONDS_TO_SECONDS_DIVISOR);
            this.logger.verbose("Waiting for %s seconds before retrying sdk_click for the %d time", format, Integer.valueOf(retries));
            this.scheduledExecutor.schedule(r3, waitingTime, TimeUnit.MILLISECONDS);
        }
    }

    /* access modifiers changed from: private */
    public void sendSdkClickI(ActivityPackage activityPackage) {
        long j;
        ActivityPackage activityPackage2 = activityPackage;
        IActivityHandler iActivityHandler = (IActivityHandler) this.activityHandlerWeakRef.get();
        String str = activityPackage.getParameters().get("source");
        boolean z = false;
        boolean z2 = str != null && str.equals("reftag");
        String str2 = activityPackage.getParameters().get("raw_referrer");
        if (!z2 || new SharedPreferencesManager(iActivityHandler.getContext()).getRawReferrer(str2, activityPackage.getClickTimeInMilliseconds()) != null) {
            if (str != null && str.equals("install_referrer")) {
                z = true;
            }
            String str3 = null;
            long j2 = 0;
            if (z) {
                long clickTimeInSeconds = activityPackage.getClickTimeInSeconds();
                long installBeginTimeInSeconds = activityPackage.getInstallBeginTimeInSeconds();
                str3 = activityPackage.getParameters().get(Constants.REFERRER);
                long j3 = clickTimeInSeconds;
                j2 = installBeginTimeInSeconds;
                j = j3;
            } else {
                j = 0;
            }
            try {
                SdkClickResponseData sdkClickResponseData = (SdkClickResponseData) UtilNetworking.createPOSTHttpsURLConnection(Constants.BASE_URL + activityPackage.getPath(), activityPackage2, this.packageQueue.size() - 1);
                if (sdkClickResponseData.jsonResponse == null) {
                    retrySendingI(activityPackage);
                } else if (iActivityHandler != null) {
                    if (z2) {
                        new SharedPreferencesManager(iActivityHandler.getContext()).removeRawReferrer(str2, activityPackage.getClickTimeInMilliseconds());
                    }
                    if (z) {
                        sdkClickResponseData.clickTime = j;
                        sdkClickResponseData.installBegin = j2;
                        sdkClickResponseData.installReferrer = str3;
                        sdkClickResponseData.isInstallReferrer = true;
                    }
                    iActivityHandler.finishedTrackingActivity(sdkClickResponseData);
                }
            } catch (UnsupportedEncodingException e) {
                logErrorMessageI(activityPackage2, "Sdk_click failed to encode parameters", e);
            } catch (SocketTimeoutException e2) {
                logErrorMessageI(activityPackage2, "Sdk_click request timed out. Will retry later", e2);
                retrySendingI(activityPackage);
            } catch (IOException e3) {
                logErrorMessageI(activityPackage2, "Sdk_click request failed. Will retry later", e3);
                retrySendingI(activityPackage);
            } catch (Throwable th) {
                logErrorMessageI(activityPackage2, "Sdk_click runtime exception", th);
            }
        }
    }

    private void retrySendingI(ActivityPackage activityPackage) {
        int increaseRetries = activityPackage.increaseRetries();
        this.logger.error("Retrying sdk_click package for the %d time", Integer.valueOf(increaseRetries));
        sendSdkClick(activityPackage);
    }

    private void logErrorMessageI(ActivityPackage activityPackage, String str, Throwable th) {
        this.logger.error(Util.formatString("%s. (%s)", activityPackage.getFailureMessage(), Util.getReasonString(str, th)), new Object[0]);
    }
}
