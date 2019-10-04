package com.adjust.sdk;

import android.content.Context;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class InstallReferrer implements InvocationHandler {
    public static final String PACKAGE_BASE_NAME = "com.android.installreferrer.";
    private static final int STATUS_DEVELOPER_ERROR = 3;
    private static final int STATUS_FEATURE_NOT_SUPPORTED = 2;
    private static final int STATUS_OK = 0;
    private static final int STATUS_SERVICE_DISCONNECTED = -1;
    private static final int STATUS_SERVICE_UNAVAILABLE = 1;
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private Context context;
    private Object flagLock;
    private boolean hasInstallReferrerBeenRead;
    private ILogger logger = AdjustFactory.getLogger();
    private Object referrerClient;
    private int retries;
    private TimerOnce retryTimer;
    private int retryWaitTime = PathInterpolatorCompat.MAX_NUM_POINTS;

    public InstallReferrer(Context context2, IActivityHandler iActivityHandler) {
        this.context = context2;
        this.flagLock = new Object();
        this.hasInstallReferrerBeenRead = false;
        this.retries = 0;
        this.retryTimer = new TimerOnce(new Runnable() {
            public final void run() {
                InstallReferrer.this.startConnection();
            }
        }, "InstallReferrer");
        this.activityHandlerWeakRef = new WeakReference<>(iActivityHandler);
        startConnection();
    }

    public void startConnection() {
        closeReferrerClient();
        synchronized (this.flagLock) {
            if (this.hasInstallReferrerBeenRead) {
                this.logger.debug("Install referrer has already been read", new Object[0]);
                return;
            }
            this.referrerClient = createInstallReferrerClient(this.context);
            Class installReferrerStateListenerClass = getInstallReferrerStateListenerClass();
            startConnection(installReferrerStateListenerClass, createProxyInstallReferrerStateListener(installReferrerStateListenerClass));
        }
    }

    public Object createInstallReferrerClient(Context context2) {
        if (context2 == null) {
            return null;
        }
        try {
            return Reflection.invokeInstanceMethod(Reflection.invokeStaticMethod("com.android.installreferrer.api.InstallReferrerClient", "newBuilder", new Class[]{Context.class}, context2), "build", null, new Object[0]);
        } catch (Exception e) {
            this.logger.warn("Couldn't create instance of referrer client (%s)", e.getMessage());
            return null;
        }
    }

    public Class getInstallReferrerStateListenerClass() {
        try {
            return Class.forName("com.android.installreferrer.api.InstallReferrerStateListener");
        } catch (Exception e) {
            this.logger.error("getInstallReferrerStateListenerClass error (%s)", e.getMessage());
            return null;
        }
    }

    public Object createProxyInstallReferrerStateListener(Class cls) {
        if (cls == null) {
            return null;
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, this);
    }

    public void startConnection(Class cls, Object obj) {
        Object obj2 = this.referrerClient;
        if (!(obj2 == null || cls == null || obj == null)) {
            try {
                Reflection.invokeInstanceMethod(obj2, "startConnection", new Class[]{cls}, obj);
            } catch (Exception e) {
                this.logger.error("startConnection error (%s)", e.getMessage());
            }
        }
    }

    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        try {
            String name = method.getName();
            this.logger.debug("InstallReferrer invoke method name: %s", name);
            for (Object obj2 : objArr) {
                this.logger.debug("InstallReferrer invoke arg: %s", obj2);
            }
            if (name.equals("onInstallReferrerSetupFinished")) {
                onInstallReferrerSetupFinishedInt(objArr[0].intValue());
            } else if (name.equals("onInstallReferrerServiceDisconnected")) {
                this.logger.debug("InstallReferrer onInstallReferrerServiceDisconnected", new Object[0]);
            }
        } catch (Exception e) {
            this.logger.error("InstallReferrer invoke error (%s)", e.getMessage());
        }
        return null;
    }

    public void onInstallReferrerSetupFinishedInt(int i) {
        if (i == -1) {
            this.logger.debug("Play Store service is not connected now. Retrying ...", new Object[0]);
            retry();
        } else if (i == 0) {
            try {
                Object installReferrer = getInstallReferrer();
                String stringInstallReferrer = getStringInstallReferrer(installReferrer);
                long referrerClickTimestampSeconds = getReferrerClickTimestampSeconds(installReferrer);
                long installBeginTimestampSeconds = getInstallBeginTimestampSeconds(installReferrer);
                this.logger.debug("installReferrer: %s, clickTime: %d, installBeginTime: %d", stringInstallReferrer, Long.valueOf(referrerClickTimestampSeconds), Long.valueOf(installBeginTimestampSeconds));
                IActivityHandler iActivityHandler = (IActivityHandler) this.activityHandlerWeakRef.get();
                if (iActivityHandler != null) {
                    iActivityHandler.sendInstallReferrer(referrerClickTimestampSeconds, installBeginTimestampSeconds, stringInstallReferrer);
                }
                synchronized (this.flagLock) {
                    this.hasInstallReferrerBeenRead = true;
                }
            } catch (Exception e) {
                this.logger.debug("Couldn't get install referrer from client (%s). Retrying ...", e.getMessage());
                retry();
            }
        } else if (i == 1) {
            this.logger.debug("Could not initiate connection to the Install Referrer service. Retrying ...", new Object[0]);
            retry();
        } else if (i == 2) {
            this.logger.debug("Install referrer not available on the current Play Store app.", new Object[0]);
        } else if (i != 3) {
            this.logger.debug("Unexpected response code of install referrer response: %d", Integer.valueOf(i));
        } else {
            this.logger.debug("Install referrer general errors caused by incorrect usage. Retrying ...", new Object[0]);
            retry();
        }
        closeReferrerClient();
    }

    private Object getInstallReferrer() {
        Object obj = this.referrerClient;
        if (obj == null) {
            return null;
        }
        try {
            return Reflection.invokeInstanceMethod(obj, "getInstallReferrer", null, new Object[0]);
        } catch (Exception e) {
            this.logger.error("getInstallReferrer error (%s)", e.getMessage());
            return null;
        }
    }

    private String getStringInstallReferrer(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return (String) Reflection.invokeInstanceMethod(obj, "getInstallReferrer", null, new Object[0]);
        } catch (Exception e) {
            this.logger.error("getStringInstallReferrer error (%s)", e.getMessage());
            return null;
        }
    }

    private long getReferrerClickTimestampSeconds(Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            return ((Long) Reflection.invokeInstanceMethod(obj, "getReferrerClickTimestampSeconds", null, new Object[0])).longValue();
        } catch (Exception e) {
            this.logger.error("getReferrerClickTimestampSeconds error (%s)", e.getMessage());
            return -1;
        }
    }

    private long getInstallBeginTimestampSeconds(Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            return ((Long) Reflection.invokeInstanceMethod(obj, "getInstallBeginTimestampSeconds", null, new Object[0])).longValue();
        } catch (Exception e) {
            this.logger.error("getInstallBeginTimestampSeconds error (%s)", e.getMessage());
            return -1;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r7.retries <= 2) goto L_0x0029;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001f, code lost:
        r7.logger.debug("Limit number of retry for install referrer surpassed", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0028, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
        r3 = r7.retryTimer.getFireIn();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        if (r3 <= 0) goto L_0x0045;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0035, code lost:
        r7.logger.debug("Already waiting to retry to read install referrer in %d milliseconds", java.lang.Long.valueOf(r3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0044, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0045, code lost:
        r7.retryTimer.startIn((long) r7.retryWaitTime);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x004d, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0014, code lost:
        r7.retries++;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void retry() {
        /*
            r7 = this;
            java.lang.Object r0 = r7.flagLock
            monitor-enter(r0)
            boolean r1 = r7.hasInstallReferrerBeenRead     // Catch:{ all -> 0x004e }
            r2 = 0
            if (r1 == 0) goto L_0x0013
            com.adjust.sdk.ILogger r1 = r7.logger     // Catch:{ all -> 0x004e }
            java.lang.String r3 = "Install referrer has already been read"
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x004e }
            r1.debug(r3, r2)     // Catch:{ all -> 0x004e }
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            return
        L_0x0013:
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            int r0 = r7.retries
            r1 = 1
            int r0 = r0 + r1
            r7.retries = r0
            int r0 = r7.retries
            r3 = 2
            if (r0 <= r3) goto L_0x0029
            com.adjust.sdk.ILogger r0 = r7.logger
            java.lang.Object[] r1 = new java.lang.Object[r2]
            java.lang.String r2 = "Limit number of retry for install referrer surpassed"
            r0.debug(r2, r1)
            return
        L_0x0029:
            com.adjust.sdk.TimerOnce r0 = r7.retryTimer
            long r3 = r0.getFireIn()
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 <= 0) goto L_0x0045
            com.adjust.sdk.ILogger r0 = r7.logger
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r1[r2] = r3
            java.lang.String r2 = "Already waiting to retry to read install referrer in %d milliseconds"
            r0.debug(r2, r1)
            return
        L_0x0045:
            com.adjust.sdk.TimerOnce r0 = r7.retryTimer
            int r1 = r7.retryWaitTime
            long r1 = (long) r1
            r0.startIn(r1)
            return
        L_0x004e:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.InstallReferrer.retry():void");
    }

    private void closeReferrerClient() {
        Object obj = this.referrerClient;
        if (obj != null) {
            try {
                Reflection.invokeInstanceMethod(obj, "endConnection", null, new Object[0]);
            } catch (Exception e) {
                this.logger.error("closeReferrerClient error (%s)", e.getMessage());
            }
            this.referrerClient = null;
        }
    }
}
