package com.a.a.c;

import android.content.Context;
import com.a.a.c.ag;
import com.a.a.c.i;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.common.m;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.e;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.settings.p;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.net.URL;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;
import org.eclipse.paho.a.a.w;

@io.fabric.sdk.android.services.concurrency.c({com.a.a.c.a.a.class})
public class j extends i<Void> {
    public static final String TAG = "CrashlyticsCore";

    /* renamed from: a  reason: collision with root package name */
    final ConcurrentHashMap<String, String> f1801a;

    /* renamed from: b  reason: collision with root package name */
    k f1802b;
    private final long i;
    /* access modifiers changed from: private */
    public k j;
    private l k;
    private i l;
    private String m;
    private String n;
    private String o;
    private float p;
    private boolean q;
    private final ab r;
    private d s;
    private h t;
    private com.a.a.c.a.a u;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private float f1807a = -1.0f;

        /* renamed from: b  reason: collision with root package name */
        private l f1808b;
        private ab c;
        private boolean d = false;

        public final a delay(float f) {
            if (f <= 0.0f) {
                throw new IllegalArgumentException("delay must be greater than 0");
            } else if (this.f1807a <= 0.0f) {
                this.f1807a = f;
                return this;
            } else {
                throw new IllegalStateException("delay already set.");
            }
        }

        public final a listener(l lVar) {
            if (lVar == null) {
                throw new IllegalArgumentException("listener must not be null.");
            } else if (this.f1808b == null) {
                this.f1808b = lVar;
                return this;
            } else {
                throw new IllegalStateException("listener already set.");
            }
        }

        @Deprecated
        public final a pinningInfo(ab abVar) {
            if (abVar == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            } else if (this.c == null) {
                this.c = abVar;
                return this;
            } else {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
        }

        public final a disabled(boolean z) {
            this.d = z;
            return this;
        }

        public final j build() {
            if (this.f1807a < 0.0f) {
                this.f1807a = 1.0f;
            }
            return new j(this.f1807a, this.f1808b, this.c, this.d);
        }
    }

    static final class b implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final k f1809a;

        public b(k kVar) {
            this.f1809a = kVar;
        }

        public final Boolean call() throws Exception {
            if (!this.f1809a.isPresent()) {
                return Boolean.FALSE;
            }
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Found previous crash marker.");
            this.f1809a.remove();
            return Boolean.TRUE;
        }
    }

    static final class c implements l {
        public final void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }

        private c() {
        }

        /* synthetic */ c(byte b2) {
            this();
        }
    }

    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    public String getVersion() {
        return "2.3.17.dev";
    }

    public j() {
        this(1.0f, null, null, false);
    }

    j(float f, l lVar, ab abVar, boolean z) {
        this(f, lVar, abVar, z, m.buildSingleThreadExecutorService("Crashlytics Exception Handler"));
    }

    private j(float f, l lVar, ab abVar, boolean z, ExecutorService executorService) {
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = f;
        this.k = lVar == null ? new c((byte) 0) : lVar;
        this.r = abVar;
        this.q = z;
        this.t = new h(executorService);
        this.f1801a = new ConcurrentHashMap<>();
        this.i = System.currentTimeMillis();
    }

    public final boolean onPreExecute() {
        return a(super.getContext());
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x014e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(android.content.Context r17) {
        /*
            r16 = this;
            r10 = r16
            r11 = r17
            boolean r0 = r10.q
            r12 = 0
            if (r0 == 0) goto L_0x000a
            return r12
        L_0x000a:
            io.fabric.sdk.android.services.common.g r0 = new io.fabric.sdk.android.services.common.g
            r0.<init>()
            java.lang.String r0 = r0.getValue(r11)
            if (r0 != 0) goto L_0x0016
            return r12
        L_0x0016:
            java.lang.String r1 = io.fabric.sdk.android.services.common.i.resolveBuildId(r17)
            r13 = 1
            java.lang.String r2 = "com.crashlytics.RequireBuildId"
            boolean r2 = io.fabric.sdk.android.services.common.i.getBooleanResourceValue(r11, r2, r13)
            java.lang.String r14 = "CrashlyticsCore"
            if (r2 != 0) goto L_0x0030
            io.fabric.sdk.android.l r2 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r3 = "Configured not to require a build ID."
            r2.d(r14, r3)
        L_0x002e:
            r2 = 1
            goto L_0x0038
        L_0x0030:
            boolean r2 = io.fabric.sdk.android.services.common.i.isNullOrEmpty(r1)
            if (r2 != 0) goto L_0x0037
            goto L_0x002e
        L_0x0037:
            r2 = 0
        L_0x0038:
            if (r2 == 0) goto L_0x014e
            r15 = 0
            io.fabric.sdk.android.l r2 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x0141 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0141 }
            java.lang.String r4 = "Initializing Crashlytics "
            r3.<init>(r4)     // Catch:{ Exception -> 0x0141 }
            java.lang.String r4 = r16.getVersion()     // Catch:{ Exception -> 0x0141 }
            r3.append(r4)     // Catch:{ Exception -> 0x0141 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x0141 }
            r2.i(r14, r3)     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.services.c.b r7 = new io.fabric.sdk.android.services.c.b     // Catch:{ Exception -> 0x0141 }
            r7.<init>(r10)     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.k r2 = new com.a.a.c.k     // Catch:{ Exception -> 0x0141 }
            java.lang.String r3 = "crash_marker"
            r2.<init>(r3, r7)     // Catch:{ Exception -> 0x0141 }
            r10.f1802b = r2     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.k r2 = new com.a.a.c.k     // Catch:{ Exception -> 0x0141 }
            java.lang.String r3 = "initialization_marker"
            r2.<init>(r3, r7)     // Catch:{ Exception -> 0x0141 }
            r10.j = r2     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.services.c.d r2 = new io.fabric.sdk.android.services.c.d     // Catch:{ Exception -> 0x0141 }
            android.content.Context r3 = r16.getContext()     // Catch:{ Exception -> 0x0141 }
            java.lang.String r4 = "com.crashlytics.android.core.CrashlyticsCore"
            r2.<init>(r3, r4)     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.ac r6 = com.a.a.c.ac.create(r2, r10)     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.ab r2 = r10.r     // Catch:{ Exception -> 0x0141 }
            if (r2 == 0) goto L_0x0086
            com.a.a.c.m r2 = new com.a.a.c.m     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.ab r3 = r10.r     // Catch:{ Exception -> 0x0141 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0141 }
            goto L_0x0087
        L_0x0086:
            r2 = r15
        L_0x0087:
            io.fabric.sdk.android.services.network.b r3 = new io.fabric.sdk.android.services.network.b     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.l r4 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x0141 }
            r3.<init>(r4)     // Catch:{ Exception -> 0x0141 }
            r10.s = r3     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.services.network.d r3 = r10.s     // Catch:{ Exception -> 0x0141 }
            r3.setPinningInfoProvider(r2)     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.services.common.IdManager r5 = r10.g     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.a r8 = com.a.a.c.a.create(r11, r5, r0, r1)     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.w r9 = new com.a.a.c.w     // Catch:{ Exception -> 0x0141 }
            java.lang.String r0 = r8.packageName     // Catch:{ Exception -> 0x0141 }
            r9.<init>(r11, r0)     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x0141 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0141 }
            java.lang.String r2 = "Installer package name is: "
            r1.<init>(r2)     // Catch:{ Exception -> 0x0141 }
            java.lang.String r2 = r8.installerPackageName     // Catch:{ Exception -> 0x0141 }
            r1.append(r2)     // Catch:{ Exception -> 0x0141 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0141 }
            r0.d(r14, r1)     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.i r0 = new com.a.a.c.i     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.h r3 = r10.t     // Catch:{ Exception -> 0x0141 }
            io.fabric.sdk.android.services.network.d r4 = r10.s     // Catch:{ Exception -> 0x0141 }
            r1 = r0
            r2 = r16
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch:{ Exception -> 0x0141 }
            r10.l = r0     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.h r0 = r10.t     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.j$4 r1 = new com.a.a.c.j$4     // Catch:{ Exception -> 0x0141 }
            r1.<init>()     // Catch:{ Exception -> 0x0141 }
            java.lang.Object r0 = r0.a(r1)     // Catch:{ Exception -> 0x0141 }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ Exception -> 0x0141 }
            boolean r1 = r0.booleanValue()     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.h r0 = r10.t     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.j$b r2 = new com.a.a.c.j$b     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.k r3 = r10.f1802b     // Catch:{ Exception -> 0x0141 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0141 }
            java.lang.Object r0 = r0.a(r2)     // Catch:{ Exception -> 0x0141 }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ Exception -> 0x0141 }
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch:{ Exception -> 0x0141 }
            boolean r0 = r2.equals(r0)     // Catch:{ Exception -> 0x0141 }
            if (r0 == 0) goto L_0x0101
            com.a.a.c.l r0 = r10.k     // Catch:{ Exception -> 0x00f7 }
            r0.crashlyticsDidDetectCrashDuringPreviousExecution()     // Catch:{ Exception -> 0x00f7 }
            goto L_0x0101
        L_0x00f7:
            r0 = move-exception
            io.fabric.sdk.android.l r2 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x0141 }
            java.lang.String r3 = "Exception thrown by CrashlyticsListener while notifying of previous crash."
            r2.e(r14, r3, r0)     // Catch:{ Exception -> 0x0141 }
        L_0x0101:
            com.a.a.c.i r0 = r10.l     // Catch:{ Exception -> 0x0141 }
            java.lang.Thread$UncaughtExceptionHandler r2 = java.lang.Thread.getDefaultUncaughtExceptionHandler()     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.h r3 = r0.f     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.i$3 r4 = new com.a.a.c.i$3     // Catch:{ Exception -> 0x0141 }
            r4.<init>()     // Catch:{ Exception -> 0x0141 }
            r3.b(r4)     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.i$11 r3 = new com.a.a.c.i$11     // Catch:{ Exception -> 0x0141 }
            r3.<init>()     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.n r4 = new com.a.a.c.n     // Catch:{ Exception -> 0x0141 }
            r4.<init>(r3, r2)     // Catch:{ Exception -> 0x0141 }
            r0.k = r4     // Catch:{ Exception -> 0x0141 }
            com.a.a.c.n r0 = r0.k     // Catch:{ Exception -> 0x0141 }
            java.lang.Thread.setDefaultUncaughtExceptionHandler(r0)     // Catch:{ Exception -> 0x0141 }
            if (r1 == 0) goto L_0x0137
            boolean r0 = io.fabric.sdk.android.services.common.i.canTryConnection(r17)     // Catch:{ Exception -> 0x0141 }
            if (r0 == 0) goto L_0x0137
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x0141 }
            java.lang.String r1 = "Crashlytics did not finish previous background initialization. Initializing synchronously."
            r0.d(r14, r1)     // Catch:{ Exception -> 0x0141 }
            r16.f()     // Catch:{ Exception -> 0x0141 }
            return r12
        L_0x0137:
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r1 = "Exception handling initialization successful"
            r0.d(r14, r1)
            return r13
        L_0x0141:
            r0 = move-exception
            io.fabric.sdk.android.l r1 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r2 = "Crashlytics was not started due to an exception during initialization"
            r1.e(r14, r2, r0)
            r10.l = r15
            return r12
        L_0x014e:
            io.fabric.sdk.android.services.concurrency.k r0 = new io.fabric.sdk.android.services.concurrency.k
            java.lang.String r1 = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization."
            r0.<init>((java.lang.String) r1)
            goto L_0x0157
        L_0x0156:
            throw r0
        L_0x0157:
            goto L_0x0156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.c.j.a(android.content.Context):boolean");
    }

    public static j getInstance() {
        return (j) io.fabric.sdk.android.c.getKit(j.class);
    }

    public ab getPinningInfoProvider() {
        if (!this.q) {
            return this.r;
        }
        return null;
    }

    public void logException(Throwable th) {
        if (this.q || !a("prior to logging exceptions.")) {
            return;
        }
        if (th == null) {
            io.fabric.sdk.android.c.getLogger().log(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
            return;
        }
        i iVar = this.l;
        Thread currentThread = Thread.currentThread();
        iVar.f.a((Runnable) new Runnable(new Date(), currentThread, th) {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Date f1775a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Thread f1776b;
            final /* synthetic */ Throwable c;

            {
                this.f1775a = r2;
                this.f1776b = r3;
                this.c = r4;
            }

            public final void run() {
                if (!i.this.c()) {
                    i.b(i.this, this.f1775a, this.f1776b, this.c);
                }
            }
        });
    }

    public void log(String str) {
        a(3, TAG, str);
    }

    private void a(int i2, String str, String str2) {
        if (!this.q && a("prior to logging messages.")) {
            this.l.a(System.currentTimeMillis() - this.i, b(i2, str, str2));
        }
    }

    public void log(int i2, String str, String str2) {
        a(i2, str, str2);
        io.fabric.sdk.android.c.getLogger().log(i2, String.valueOf(str), String.valueOf(str2), true);
    }

    public void setUserIdentifier(String str) {
        if (!this.q && a("prior to setting user data.")) {
            this.m = b(str);
            this.l.a(this.m, this.o, this.n);
        }
    }

    public void setUserName(String str) {
        if (!this.q && a("prior to setting user data.")) {
            this.o = b(str);
            this.l.a(this.m, this.o, this.n);
        }
    }

    public void setUserEmail(String str) {
        if (!this.q && a("prior to setting user data.")) {
            this.n = b(str);
            this.l.a(this.m, this.o, this.n);
        }
    }

    public void setString(String str, String str2) {
        String str3;
        if (this.q || !a("prior to setting keys.")) {
            return;
        }
        if (str == null) {
            Context context = getContext();
            if (context == null || !io.fabric.sdk.android.services.common.i.isAppDebuggable(context)) {
                io.fabric.sdk.android.c.getLogger().e(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        String b2 = b(str);
        if (this.f1801a.size() < 64 || this.f1801a.containsKey(b2)) {
            if (str2 == null) {
                str3 = "";
            } else {
                str3 = b(str2);
            }
            this.f1801a.put(b2, str3);
            i iVar = this.l;
            iVar.f.b(new Callable<Void>(this.f1801a) {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map f1779a;

                {
                    this.f1779a = r2;
                }

                public final Void call() throws Exception {
                    new x(i.this.d()).writeKeyData(i.this.i(), this.f1779a);
                    return null;
                }
            });
            return;
        }
        io.fabric.sdk.android.c.getLogger().d(TAG, "Exceeded maximum number of custom attributes (64)");
    }

    public void setBool(String str, boolean z) {
        setString(str, Boolean.toString(z));
    }

    public void setDouble(String str, double d) {
        setString(str, Double.toString(d));
    }

    public void setFloat(String str, float f) {
        setString(str, Float.toString(f));
    }

    public void setInt(String str, int i2) {
        setString(str, Integer.toString(i2));
    }

    public void setLong(String str, long j2) {
        setString(str, Long.toString(j2));
    }

    public void crash() {
        new g().indexOutOfBounds();
    }

    @Deprecated
    public synchronized void setListener(l lVar) {
        io.fabric.sdk.android.c.getLogger().w(TAG, "Use of setListener is deprecated.");
        if (lVar != null) {
            this.k = lVar;
        } else {
            throw new IllegalArgumentException("listener must not be null.");
        }
    }

    private void f() {
        AnonymousClass1 r0 = new e<Void>() {
            public final Void call() throws Exception {
                return j.this.doInBackground();
            }

            public final Priority getPriority() {
                return Priority.IMMEDIATE;
            }
        };
        for (io.fabric.sdk.android.services.concurrency.j addDependency : this.d.getDependencies()) {
            r0.addDependency(addDependency);
        }
        Future submit = getFabric().getExecutorService().submit(r0);
        io.fabric.sdk.android.c.getLogger().d(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            io.fabric.sdk.android.c.getLogger().e(TAG, "Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            io.fabric.sdk.android.c.getLogger().e(TAG, "Problem encountered during Crashlytics initialization.", e2);
        } catch (TimeoutException e3) {
            io.fabric.sdk.android.c.getLogger().e(TAG, "Crashlytics timed out during initialization.", e3);
        }
    }

    private void g() {
        this.t.b(new Callable<Boolean>() {
            public final Boolean call() throws Exception {
                try {
                    boolean remove = j.this.j.remove();
                    io.fabric.sdk.android.c.getLogger().d(j.TAG, "Initialization marker file removed: ".concat(String.valueOf(remove)));
                    return Boolean.valueOf(remove);
                } catch (Exception e) {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "Problem encountered deleting Crashlytics initialization marker.", e);
                    return Boolean.FALSE;
                }
            }
        });
    }

    private static String b(int i2, String str, String str2) {
        return io.fabric.sdk.android.services.common.i.logPriorityToString(i2) + w.TOPIC_LEVEL_SEPARATOR + str + " " + str2;
    }

    private static boolean a(String str) {
        j instance = getInstance();
        if (instance != null && instance.l != null) {
            return true;
        }
        io.fabric.sdk.android.c.getLogger().e(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) ".concat(String.valueOf(str)), null);
        return false;
    }

    private static String b(String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        return trim.length() > 1024 ? trim.substring(0, 1024) : trim;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Void doInBackground() {
        com.a.a.c.a.a.d dVar;
        this.t.a(new Callable<Void>() {
            public final Void call() throws Exception {
                j.this.j.create();
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Initialization marker file created.");
                return null;
            }
        });
        com.a.a.c.a.a aVar = this.u;
        if (aVar != null) {
            dVar = aVar.getCrashEventData();
        } else {
            dVar = null;
        }
        if (dVar != null) {
            i iVar = this.l;
            iVar.f.b(new Callable<Void>(dVar) {

                /* renamed from: a */
                final /* synthetic */ com.a.a.c.a.a.d f1787a;

                public final java.lang.Void call(
/*
Method generation error in method: com.a.a.c.i.7.call():java.lang.Void, dex: classes.dex
                jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: com.a.a.c.i.7.call():java.lang.Void, class status: UNLOADED
                	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:267)
                	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:312)
                	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:665)
                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:596)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:776)
                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:717)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:210)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:317)
                	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                
*/
            });
        }
        i iVar2 = this.l;
        iVar2.f.a((Runnable) new Runnable() {
            public final void run(
/*
Method generation error in method: com.a.a.c.i.5.run():void, dex: classes.dex
            jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: com.a.a.c.i.5.run():void, class status: UNLOADED
            	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:267)
            	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:312)
            	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:665)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:596)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:776)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:717)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:210)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
            	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:317)
            	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
            
*/
        });
        try {
            s awaitSettingsData = q.getInstance().awaitSettingsData();
            if (awaitSettingsData == null) {
                io.fabric.sdk.android.c.getLogger().w(TAG, "Received null settings, skipping report submission!");
                g();
                return null;
            } else if (!awaitSettingsData.featuresData.collectReports) {
                io.fabric.sdk.android.c.getLogger().d(TAG, "Collection of crash reports disabled in Crashlytics settings.");
                g();
                return null;
            } else {
                i iVar3 = this.l;
                if (!((Boolean) iVar3.f.a(new Callable<Boolean>(awaitSettingsData.sessionData) {

                    /* renamed from: a */
                    final /* synthetic */ p f1782a;

                    public final java.lang.Boolean call(
/*
Method generation error in method: com.a.a.c.i.4.call():java.lang.Boolean, dex: classes.dex
                    jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: com.a.a.c.i.4.call():java.lang.Boolean, class status: UNLOADED
                    	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:267)
                    	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:312)
                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:665)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:596)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:776)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:717)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:280)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:686)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.ConditionGen.wrap(ConditionGen.java:95)
                    	at jadx.core.codegen.ConditionGen.addCompare(ConditionGen.java:123)
                    	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:57)
                    	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:46)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:156)
                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:311)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:68)
                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:317)
                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
                    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
                    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                    	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                    	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                    
*/
                })).booleanValue()) {
                    io.fabric.sdk.android.c.getLogger().d(TAG, "Could not finalize previous sessions.");
                }
                i iVar4 = this.l;
                float f = this.p;
                if (awaitSettingsData == null) {
                    io.fabric.sdk.android.c.getLogger().w(TAG, "Could not send reports. Settings are not available.");
                } else {
                    new ag(iVar4.h.apiKey, iVar4.a(awaitSettingsData.appData.reportsUrl), iVar4.i, iVar4.j).uploadReports(f, iVar4.a(awaitSettingsData) ? new i.e(iVar4.e, iVar4.g, awaitSettingsData.promptData) : new ag.a());
                }
                g();
                return null;
            }
        } catch (Exception e) {
            io.fabric.sdk.android.c.getLogger().e(TAG, "Crashlytics encountered a problem during asynchronous initialization.", e);
        } catch (Throwable th) {
            g();
            throw th;
        }
    }

    public boolean verifyPinning(URL url) {
        try {
            if (getPinningInfoProvider() == null) {
                return false;
            }
            io.fabric.sdk.android.services.network.c buildHttpRequest = this.s.buildHttpRequest(HttpMethod.GET, url.toString());
            ((HttpsURLConnection) buildHttpRequest.getConnection()).setInstanceFollowRedirects(false);
            buildHttpRequest.code();
            return true;
        } catch (Exception e) {
            io.fabric.sdk.android.c.getLogger().e(TAG, "Could not verify SSL pinning", e);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final String b() {
        if (this.g.canCollectUserIds()) {
            return this.m;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final String c() {
        if (this.g.canCollectUserIds()) {
            return this.n;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final String d() {
        if (this.g.canCollectUserIds()) {
            return this.o;
        }
        return null;
    }
}
