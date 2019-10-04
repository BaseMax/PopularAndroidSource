package com.crashlytics.android.core;

import android.content.Context;
import android.util.Log;
import com.crashlytics.android.answers.AppMeasurementEventLogger;
import e.a.a.a.a.b.i;
import e.a.a.a.a.b.n;
import e.a.a.a.a.b.s;
import e.a.a.a.a.b.v;
import e.a.a.a.a.c.h;
import e.a.a.a.a.c.k;
import e.a.a.a.a.c.p;
import e.a.a.a.a.e.c;
import e.a.a.a.a.e.f;
import e.a.a.a.a.f.b;
import e.a.a.a.a.f.d;
import e.a.a.a.a.g.u;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;

@h({CrashlyticsNdkDataProvider.class})
public class CrashlyticsCore extends l<Void> {
    public static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    public static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    public static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    public static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    public static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    public static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    public static final int MAX_ATTRIBUTES = 64;
    public static final int MAX_ATTRIBUTE_SIZE = 1024;
    public static final String MISSING_BUILD_ID_MSG = "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.";
    public static final String PREFERENCE_STORE_NAME = "com.crashlytics.android.core.CrashlyticsCore";
    public static final String TAG = "CrashlyticsCore";
    public final ConcurrentHashMap<String, String> attributes;
    public CrashlyticsBackgroundWorker backgroundWorker;
    public CrashlyticsController controller;
    public CrashlyticsFileMarker crashMarker;
    public CrashlyticsNdkDataProvider crashlyticsNdkDataProvider;
    public float delay;
    public boolean disabled;
    public f httpRequestFactory;
    public CrashlyticsFileMarker initializationMarker;
    public CrashlyticsListener listener;
    public final PinningInfoProvider pinningInfo;
    public final long startTime;
    public String userEmail;
    public String userId;
    public String userName;

    public static class Builder {
        public float delay = -1.0f;
        public boolean disabled = false;
        public CrashlyticsListener listener;
        public PinningInfoProvider pinningInfoProvider;

        public CrashlyticsCore build() {
            if (this.delay < 0.0f) {
                this.delay = 1.0f;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }

        public Builder delay(float f2) {
            if (f2 <= 0.0f) {
                throw new IllegalArgumentException("delay must be greater than 0");
            } else if (this.delay <= 0.0f) {
                this.delay = f2;
                return this;
            } else {
                throw new IllegalStateException("delay already set.");
            }
        }

        public Builder disabled(boolean z) {
            this.disabled = z;
            return this;
        }

        public Builder listener(CrashlyticsListener crashlyticsListener) {
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            } else if (this.listener == null) {
                this.listener = crashlyticsListener;
                return this;
            } else {
                throw new IllegalStateException("listener already set.");
            }
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider2) {
            if (pinningInfoProvider2 == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            } else if (this.pinningInfoProvider == null) {
                this.pinningInfoProvider = pinningInfoProvider2;
                return this;
            } else {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
        }
    }

    private static final class CrashMarkerCheck implements Callable<Boolean> {
        public final CrashlyticsFileMarker crashMarker;

        public CrashMarkerCheck(CrashlyticsFileMarker crashlyticsFileMarker) {
            this.crashMarker = crashlyticsFileMarker;
        }

        public Boolean call() {
            if (!this.crashMarker.isPresent()) {
                return Boolean.FALSE;
            }
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Found previous crash marker.");
            this.crashMarker.remove();
            return Boolean.TRUE;
        }
    }

    private static final class NoOpListener implements CrashlyticsListener {
        public NoOpListener() {
        }

        public void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }
    }

    public CrashlyticsCore() {
        this(1.0f, null, null, false);
    }

    private void checkForPreviousCrash() {
        if (Boolean.TRUE.equals((Boolean) this.backgroundWorker.submitAndWait(new CrashMarkerCheck(this.crashMarker)))) {
            try {
                this.listener.crashlyticsDidDetectCrashDuringPreviousExecution();
            } catch (Exception e2) {
                e.a.a.a.f.e().b(TAG, "Exception thrown by CrashlyticsListener while notifying of previous crash.", e2);
            }
        }
    }

    private void doLog(int i2, String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging messages.")) {
            this.controller.writeToLog(System.currentTimeMillis() - this.startTime, formatLogMessage(i2, str, str2));
        }
    }

    public static boolean ensureFabricWithCalled(String str) {
        CrashlyticsCore instance = getInstance();
        if (instance != null && instance.controller != null) {
            return true;
        }
        o e2 = e.a.a.a.f.e();
        e2.b(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) " + str, null);
        return false;
    }

    private void finishInitSynchronously() {
        AnonymousClass1 r0 = new k<Void>() {
            public Priority getPriority() {
                return Priority.IMMEDIATE;
            }

            public Void call() {
                return CrashlyticsCore.this.doInBackground();
            }
        };
        for (p addDependency : getDependencies()) {
            r0.addDependency(addDependency);
        }
        Future submit = getFabric().b().submit(r0);
        e.a.a.a.f.e().d(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e.a.a.a.f.e().b(TAG, "Crashlytics was interrupted during initialization.", e2);
        } catch (ExecutionException e3) {
            e.a.a.a.f.e().b(TAG, "Problem encountered during Crashlytics initialization.", e3);
        } catch (TimeoutException e4) {
            e.a.a.a.f.e().b(TAG, "Crashlytics timed out during initialization.", e4);
        }
    }

    public static String formatLogMessage(int i2, String str, String str2) {
        return CommonUtils.a(i2) + "/" + str + " " + str2;
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore) e.a.a.a.f.a(CrashlyticsCore.class);
    }

    public static boolean isBuildIdValid(String str, boolean z) {
        if (!z) {
            e.a.a.a.f.e().d(TAG, "Configured not to require a build ID.");
            return true;
        } else if (!CommonUtils.b(str)) {
            return true;
        } else {
            Log.e(TAG, ".");
            Log.e(TAG, ".     |  | ");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".   \\ |  | /");
            Log.e(TAG, ".    \\    /");
            Log.e(TAG, ".     \\  /");
            Log.e(TAG, ".      \\/");
            Log.e(TAG, ".");
            Log.e(TAG, MISSING_BUILD_ID_MSG);
            Log.e(TAG, ".");
            Log.e(TAG, ".      /\\");
            Log.e(TAG, ".     /  \\");
            Log.e(TAG, ".    /    \\");
            Log.e(TAG, ".   / |  | \\");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".");
            return false;
        }
    }

    public static String sanitizeAttribute(String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        return trim.length() > 1024 ? trim.substring(0, 1024) : trim;
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    public void createCrashMarker() {
        this.crashMarker.create();
    }

    public boolean didPreviousInitializationFail() {
        return this.initializationMarker.isPresent();
    }

    public Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    public CrashlyticsController getController() {
        return this.controller;
    }

    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    public CrashlyticsNdkData getNativeCrashData() {
        CrashlyticsNdkDataProvider crashlyticsNdkDataProvider2 = this.crashlyticsNdkDataProvider;
        if (crashlyticsNdkDataProvider2 != null) {
            return crashlyticsNdkDataProvider2.getCrashlyticsNdkData();
        }
        return null;
    }

    public PinningInfoProvider getPinningInfoProvider() {
        if (!this.disabled) {
            return this.pinningInfo;
        }
        return null;
    }

    public String getUserEmail() {
        if (getIdManager().a()) {
            return this.userEmail;
        }
        return null;
    }

    public String getUserIdentifier() {
        if (getIdManager().a()) {
            return this.userId;
        }
        return null;
    }

    public String getUserName() {
        if (getIdManager().a()) {
            return this.userName;
        }
        return null;
    }

    public String getVersion() {
        return "2.7.0.33";
    }

    public boolean internalVerifyPinning(URL url) {
        if (getPinningInfoProvider() == null) {
            return false;
        }
        HttpRequest a2 = this.httpRequestFactory.a(HttpMethod.GET, url.toString());
        ((HttpsURLConnection) a2.l()).setInstanceFollowRedirects(false);
        a2.g();
        return true;
    }

    public void log(String str) {
        doLog(3, TAG, str);
    }

    public void logException(Throwable th) {
        if (this.disabled || !ensureFabricWithCalled("prior to logging exceptions.")) {
            return;
        }
        if (th == null) {
            e.a.a.a.f.e().a(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.controller.writeNonFatalException(Thread.currentThread(), th);
        }
    }

    public void markInitializationComplete() {
        this.backgroundWorker.submit(new Callable<Boolean>() {
            public Boolean call() {
                try {
                    boolean remove = CrashlyticsCore.this.initializationMarker.remove();
                    o e2 = e.a.a.a.f.e();
                    e2.d(CrashlyticsCore.TAG, "Initialization marker file removed: " + remove);
                    return Boolean.valueOf(remove);
                } catch (Exception e3) {
                    e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Problem encountered deleting Crashlytics initialization marker.", e3);
                    return false;
                }
            }
        });
    }

    public void markInitializationStarted() {
        this.backgroundWorker.submitAndWait(new Callable<Void>() {
            public Void call() {
                CrashlyticsCore.this.initializationMarker.create();
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Initialization marker file created.");
                return null;
            }
        });
    }

    public boolean onPreExecute() {
        return onPreExecute(super.getContext());
    }

    public void setBool(String str, boolean z) {
        setString(str, Boolean.toString(z));
    }

    public void setCrashlyticsNdkDataProvider(CrashlyticsNdkDataProvider crashlyticsNdkDataProvider2) {
        this.crashlyticsNdkDataProvider = crashlyticsNdkDataProvider2;
    }

    public void setDouble(String str, double d2) {
        setString(str, Double.toString(d2));
    }

    public void setFloat(String str, float f2) {
        setString(str, Float.toString(f2));
    }

    public void setInt(String str, int i2) {
        setString(str, Integer.toString(i2));
    }

    @Deprecated
    public synchronized void setListener(CrashlyticsListener crashlyticsListener) {
        e.a.a.a.f.e().a(TAG, "Use of setListener is deprecated.");
        if (crashlyticsListener != null) {
            this.listener = crashlyticsListener;
        } else {
            throw new IllegalArgumentException("listener must not be null.");
        }
    }

    public void setLong(String str, long j2) {
        setString(str, Long.toString(j2));
    }

    public void setString(String str, String str2) {
        String str3;
        if (this.disabled || !ensureFabricWithCalled("prior to setting keys.")) {
            return;
        }
        if (str == null) {
            Context context = getContext();
            if (context == null || !CommonUtils.j(context)) {
                e.a.a.a.f.e().b(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        String sanitizeAttribute = sanitizeAttribute(str);
        if (this.attributes.size() < 64 || this.attributes.containsKey(sanitizeAttribute)) {
            if (str2 == null) {
                str3 = "";
            } else {
                str3 = sanitizeAttribute(str2);
            }
            this.attributes.put(sanitizeAttribute, str3);
            this.controller.cacheKeyData(this.attributes);
            return;
        }
        e.a.a.a.f.e().d(TAG, "Exceeded maximum number of custom attributes (64)");
    }

    public void setUserEmail(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userEmail = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserIdentifier(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userId = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserName(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userName = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public boolean verifyPinning(URL url) {
        try {
            return internalVerifyPinning(url);
        } catch (Exception e2) {
            e.a.a.a.f.e().b(TAG, "Could not verify SSL pinning", e2);
            return false;
        }
    }

    public CrashlyticsCore(float f2, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z) {
        this(f2, crashlyticsListener, pinningInfoProvider, z, s.a("Crashlytics Exception Handler"));
    }

    public Void doInBackground() {
        markInitializationStarted();
        this.controller.cleanInvalidTempFiles();
        try {
            this.controller.registerDevicePowerStateListener();
            u a2 = e.a.a.a.a.g.s.b().a();
            if (a2 == null) {
                e.a.a.a.f.e().a(TAG, "Received null settings, skipping report submission!");
                markInitializationComplete();
                return null;
            }
            this.controller.registerAnalyticsEventListener(a2);
            if (!a2.f13848d.f13819c) {
                e.a.a.a.f.e().d(TAG, "Collection of crash reports disabled in Crashlytics settings.");
                markInitializationComplete();
                return null;
            } else if (!n.a(getContext()).a()) {
                e.a.a.a.f.e().d(TAG, "Automatic collection of crash reports disabled by Firebase settings.");
                markInitializationComplete();
                return null;
            } else {
                CrashlyticsNdkData nativeCrashData = getNativeCrashData();
                if (nativeCrashData != null && !this.controller.finalizeNativeReport(nativeCrashData)) {
                    e.a.a.a.f.e().d(TAG, "Could not finalize previous NDK sessions.");
                }
                if (!this.controller.finalizeSessions(a2.f13846b)) {
                    e.a.a.a.f.e().d(TAG, "Could not finalize previous sessions.");
                }
                this.controller.submitAllReports(this.delay, a2);
                markInitializationComplete();
                return null;
            }
        } catch (Exception e2) {
            e.a.a.a.f.e().b(TAG, "Crashlytics encountered a problem during asynchronous initialization.", e2);
        } catch (Throwable th) {
            markInitializationComplete();
            throw th;
        }
    }

    public void log(int i2, String str, String str2) {
        doLog(i2, str, str2);
        e.a.a.a.f.e().a(i2, "" + str, "" + str2, true);
    }

    public boolean onPreExecute(Context context) {
        Context context2 = context;
        if (!n.a(context).a()) {
            e.a.a.a.f.e().d(TAG, "Crashlytics is disabled, because data collection is disabled by Firebase.");
            this.disabled = true;
        }
        if (this.disabled) {
            return false;
        }
        String d2 = new i().d(context2);
        if (d2 == null) {
            return false;
        }
        String n = CommonUtils.n(context);
        if (isBuildIdValid(n, CommonUtils.a(context2, CRASHLYTICS_REQUIRE_BUILD_ID, true))) {
            try {
                o e2 = e.a.a.a.f.e();
                e2.e(TAG, "Initializing Crashlytics Core " + getVersion());
                b bVar = new b(this);
                this.crashMarker = new CrashlyticsFileMarker(CRASH_MARKER_FILE_NAME, bVar);
                this.initializationMarker = new CrashlyticsFileMarker(INITIALIZATION_MARKER_FILE_NAME, bVar);
                PreferenceManager create = PreferenceManager.create(new d(getContext(), PREFERENCE_STORE_NAME), this);
                CrashlyticsPinningInfoProvider crashlyticsPinningInfoProvider = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
                this.httpRequestFactory = new c(e.a.a.a.f.e());
                this.httpRequestFactory.a(crashlyticsPinningInfoProvider);
                IdManager idManager = getIdManager();
                AppData create2 = AppData.create(context2, idManager, d2, n);
                CrashlyticsController crashlyticsController = r1;
                CrashlyticsController crashlyticsController2 = new CrashlyticsController(this, this.backgroundWorker, this.httpRequestFactory, idManager, create, bVar, create2, new ResourceUnityVersionProvider(context2, new ManifestUnityVersionProvider(context2, create2.packageName)), new DefaultAppMeasurementEventListenerRegistrar(this), AppMeasurementEventLogger.getEventLogger(context));
                this.controller = crashlyticsController;
                boolean didPreviousInitializationFail = didPreviousInitializationFail();
                checkForPreviousCrash();
                this.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler(), new v().e(context2));
                if (!didPreviousInitializationFail || !CommonUtils.b(context)) {
                    e.a.a.a.f.e().d(TAG, "Exception handling initialization successful");
                    return true;
                }
                e.a.a.a.f.e().d(TAG, "Crashlytics did not finish previous background initialization. Initializing synchronously.");
                finishInitSynchronously();
                return false;
            } catch (Exception e3) {
                e.a.a.a.f.e().b(TAG, "Crashlytics was not started due to an exception during initialization", e3);
                this.controller = null;
                return false;
            }
        } else {
            throw new UnmetDependencyException(MISSING_BUILD_ID_MSG);
        }
    }

    public CrashlyticsCore(float f2, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z, ExecutorService executorService) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.delay = f2;
        this.listener = crashlyticsListener == null ? new NoOpListener() : crashlyticsListener;
        this.pinningInfo = pinningInfoProvider;
        this.disabled = z;
        this.backgroundWorker = new CrashlyticsBackgroundWorker(executorService);
        this.attributes = new ConcurrentHashMap<>();
        this.startTime = System.currentTimeMillis();
    }
}
