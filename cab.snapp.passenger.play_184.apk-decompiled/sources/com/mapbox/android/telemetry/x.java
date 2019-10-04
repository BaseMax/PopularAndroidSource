package com.mapbox.android.telemetry;

import android.app.AlarmManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.google.gson.e;
import com.google.gson.f;
import com.mapbox.android.telemetry.Event;
import com.mapbox.android.telemetry.TelemetryEnabler;
import com.mapbox.android.telemetry.ai;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class x implements u {

    /* renamed from: a  reason: collision with root package name */
    static Context f4995a = null;

    /* renamed from: b  reason: collision with root package name */
    private static AtomicReference<String> f4996b = new AtomicReference<>("");
    private String c;
    private final r d;
    private af e;
    private Callback f;
    private final z g;
    private i h = null;
    private final TelemetryEnabler i;
    private CopyOnWriteArraySet<aj> j = null;
    private e k;
    private CopyOnWriteArraySet<c> l = null;
    private n m;
    private final ExecutorService n;

    /* renamed from: com.mapbox.android.telemetry.x$7  reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5007a = new int[Event.Type.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                com.mapbox.android.telemetry.Event$Type[] r0 = com.mapbox.android.telemetry.Event.Type.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5007a = r0
                int[] r0 = f5007a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.mapbox.android.telemetry.Event$Type r1 = com.mapbox.android.telemetry.Event.Type.TURNSTILE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5007a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.mapbox.android.telemetry.Event$Type r1 = com.mapbox.android.telemetry.Event.Type.CRASH     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5007a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.mapbox.android.telemetry.Event$Type r1 = com.mapbox.android.telemetry.Event.Type.VIS_ATTACHMENT     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.telemetry.x.AnonymousClass7.<clinit>():void");
        }
    }

    static final class a {
        private a() {
        }

        static synchronized ExecutorService a(final String str) {
            ThreadPoolExecutor threadPoolExecutor;
            synchronized (a.class) {
                threadPoolExecutor = new ThreadPoolExecutor(0, 3, 20, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() {
                    public final Thread newThread(Runnable runnable) {
                        return new Thread(runnable, str);
                    }
                });
            }
            return threadPoolExecutor;
        }
    }

    public x(Context context, String str, String str2) {
        if (f4995a == null) {
            if (context == null || context.getApplicationContext() == null) {
                throw new IllegalArgumentException("Non-null application context required.");
            }
            f4995a = context.getApplicationContext();
        }
        a(context, str);
        this.c = str2;
        aa aaVar = new aa(f4995a, new a(new y() {
            public final void onError() {
            }

            public final void onPeriodRaised() {
                x.this.a();
            }
        }));
        this.g = new b(aaVar.f4941b, (AlarmManager) aaVar.f4941b.getSystemService(NotificationCompat.CATEGORY_ALARM), aaVar.c);
        this.i = new TelemetryEnabler();
        this.j = new CopyOnWriteArraySet<>();
        this.l = new CopyOnWriteArraySet<>();
        final CopyOnWriteArraySet<aj> copyOnWriteArraySet = this.j;
        this.f = new Callback() {
            public final void onFailure(Call call, IOException iOException) {
                for (aj onHttpFailure : copyOnWriteArraySet) {
                    onHttpFailure.onHttpFailure(iOException.getMessage());
                }
            }

            public final void onResponse(Call call, Response response) throws IOException {
                ResponseBody body = response.body();
                if (body != null) {
                    body.close();
                }
                for (aj onHttpResponse : copyOnWriteArraySet) {
                    onHttpResponse.onHttpResponse(response.isSuccessful(), response.code());
                }
            }
        };
        this.n = a.a("MapboxTelemetryExecutor");
        this.d = r.a(this, this.n);
    }

    public final void onFullQueue(List<Event> list) {
        if (TelemetryEnabler.State.ENABLED.equals(this.i.a()) && !ak.b(f4995a)) {
            a(list, false);
        }
    }

    public final void onTaskRemoved() {
        a();
        c();
    }

    public final boolean push(Event event) {
        if (a(event)) {
            return true;
        }
        if (TelemetryEnabler.State.ENABLED.equals(this.i.a())) {
            return this.d.a(event);
        }
        return false;
    }

    public final boolean enable() {
        if (!TelemetryEnabler.a(f4995a)) {
            return false;
        }
        if (TelemetryEnabler.State.ENABLED.equals(this.i.a())) {
            this.g.register();
            if (this.h == null) {
                this.h = new i();
            }
            this.g.schedule(SystemClock.elapsedRealtime());
            a(true);
        }
        return true;
    }

    public final boolean disable() {
        if (!TelemetryEnabler.a(f4995a)) {
            return false;
        }
        if (TelemetryEnabler.State.ENABLED.equals(this.i.a())) {
            a();
            c();
            a(false);
        }
        return true;
    }

    public final void updateDebugLoggingEnabled(boolean z) {
        af afVar = this.e;
        if (afVar != null) {
            ai aiVar = afVar.d;
            ai.a aVar = new ai.a();
            aVar.f4960a = aiVar.f4958a;
            OkHttpClient okHttpClient = aiVar.f4959b;
            if (okHttpClient != null) {
                aVar.f4961b = okHttpClient;
            }
            ai.a a2 = aVar.a(aiVar.c);
            a2.d = aiVar.d;
            a2.e = aiVar.e;
            a2.f = aiVar.f;
            a2.g = aiVar.g;
            a2.g = z;
            afVar.d = a2.a();
        }
    }

    public final void updateUserAgent(String str) {
        if (b(str)) {
            this.e.c = ak.a(str, f4995a);
        }
    }

    public final boolean updateAccessToken(String str) {
        boolean z;
        if (a(str)) {
            af afVar = this.e;
            if (afVar != null) {
                afVar.f4949b = str;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                f4996b.set(str);
                return true;
            }
        }
        return false;
    }

    public final boolean addTelemetryListener(aj ajVar) {
        return this.j.add(ajVar);
    }

    public final boolean removeTelemetryListener(aj ajVar) {
        return this.j.remove(ajVar);
    }

    public final boolean addAttachmentListener(c cVar) {
        return this.l.add(cVar);
    }

    public final boolean removeAttachmentListener(c cVar) {
        return this.l.remove(cVar);
    }

    private static boolean a(String str) {
        if (ak.a(str)) {
            return false;
        }
        f4996b.set(str);
        return true;
    }

    private boolean b(String str) {
        if (ak.a(str)) {
            return false;
        }
        this.c = str;
        return true;
    }

    /* access modifiers changed from: private */
    public synchronized void a() {
        final List<Event> a2 = this.d.a();
        if (!a2.isEmpty()) {
            a((Runnable) new Runnable() {
                public final void run() {
                    try {
                        x.this.a((List<Event>) a2, false);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    private static boolean b() {
        boolean z = false;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) f4995a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            z = activeNetworkInfo.isConnected();
            return z;
        } catch (Exception unused) {
        }
    }

    /* access modifiers changed from: private */
    public synchronized void a(List<Event> list, boolean z) {
        if (b() && a(f4996b.get(), this.c)) {
            af afVar = this.e;
            Callback callback = this.f;
            List<T> unmodifiableList = Collections.unmodifiableList(list);
            String json = (z ? new f().serializeNulls().create() : new e()).toJson((Object) unmodifiableList);
            RequestBody create = RequestBody.create(af.f4948a, json);
            HttpUrl build = afVar.d.c.newBuilder("/events/v2").addQueryParameter("access_token", afVar.f4949b).build();
            if (afVar.a()) {
                String.format(Locale.US, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s", new Object[]{build, Integer.valueOf(unmodifiableList.size()), afVar.c, json});
            }
            afVar.d.a(afVar.e, (Interceptor) new v()).newCall(new Request.Builder().url(build).header("User-Agent", afVar.c).post(create).build()).enqueue(callback);
        }
    }

    private void c() {
        this.g.unregister();
    }

    private synchronized boolean a(Event event) {
        boolean z;
        synchronized (this) {
            int i2 = AnonymousClass7.f5007a[event.obtainType().ordinal()];
            z = false;
            if (i2 == 1 || i2 == 2) {
                final List singletonList = Collections.singletonList(event);
                a((Runnable) new Runnable() {
                    public final void run() {
                        try {
                            x.this.a((List<Event>) singletonList, true);
                        } catch (Throwable unused) {
                        }
                    }
                });
            } else if (i2 == 3) {
                if (b() && a(f4996b.get(), this.c)) {
                    af afVar = this.e;
                    CopyOnWriteArraySet<c> copyOnWriteArraySet = this.l;
                    List<s> attachments = ((Attachment) event).getAttachments();
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    MultipartBody.Builder type = new MultipartBody.Builder("--01ead4a5-7a67-4703-ad02-589886e00923").setType(MultipartBody.FORM);
                    for (s next : attachments) {
                        t fileData = next.getFileData();
                        d attachmentMetadata = next.getAttachmentMetadata();
                        arrayList.add(attachmentMetadata);
                        type.addFormDataPart("file", attachmentMetadata.getName(), RequestBody.create(fileData.getType(), new File(fileData.getFilePath())));
                        arrayList2.add(attachmentMetadata.getFileId());
                    }
                    type.addFormDataPart("attachments", new e().toJson((Object) arrayList));
                    RequestBody a2 = af.a(type);
                    HttpUrl build = afVar.d.c.newBuilder("/attachments/v1").addQueryParameter("access_token", afVar.f4949b).build();
                    if (afVar.a()) {
                        String.format(Locale.US, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s", new Object[]{build, Integer.valueOf(attachments.size()), afVar.c, arrayList});
                    }
                    afVar.d.a(afVar.e, (Interceptor) null).newCall(new Request.Builder().url(build).header("User-Agent", afVar.c).post(a2).build()).enqueue(new Callback(copyOnWriteArraySet, arrayList2) {

                        /* renamed from: a */
                        final /* synthetic */ CopyOnWriteArraySet f4950a;

                        /* renamed from: b */
                        final /* synthetic */ List f4951b;

                        public final void onFailure(
/*
Method generation error in method: com.mapbox.android.telemetry.af.1.onFailure(okhttp3.Call, java.io.IOException):void, dex: classes2.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: com.mapbox.android.telemetry.af.1.onFailure(okhttp3.Call, java.io.IOException):void, class status: UNLOADED
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
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                        	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                        	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                        	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                        	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:260)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:70)
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

                        public final void onResponse(
/*
Method generation error in method: com.mapbox.android.telemetry.af.1.onResponse(okhttp3.Call, okhttp3.Response):void, dex: classes2.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: com.mapbox.android.telemetry.af.1.onResponse(okhttp3.Call, okhttp3.Response):void, class status: UNLOADED
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
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                        	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                        	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                        	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                        	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:260)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:70)
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
            }
            z = true;
        }
        return z;
    }

    private synchronized void a(final boolean z) {
        a((Runnable) new Runnable() {
            public final void run() {
                try {
                    SharedPreferences.Editor edit = ak.a(x.f4995a).edit();
                    edit.putBoolean("mapboxTelemetryLocationState", z);
                    edit.apply();
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0028, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static synchronized void a(android.content.Context r2, java.lang.String r3) {
        /*
            java.lang.Class<com.mapbox.android.telemetry.x> r0 = com.mapbox.android.telemetry.x.class
            monitor-enter(r0)
            boolean r1 = com.mapbox.android.telemetry.ak.a((java.lang.String) r3)     // Catch:{ all -> 0x0029 }
            if (r1 == 0) goto L_0x000b
            monitor-exit(r0)
            return
        L_0x000b:
            java.util.concurrent.atomic.AtomicReference<java.lang.String> r1 = f4996b     // Catch:{ all -> 0x0029 }
            java.lang.Object r3 = r1.getAndSet(r3)     // Catch:{ all -> 0x0029 }
            java.lang.String r3 = (java.lang.String) r3     // Catch:{ all -> 0x0029 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x0029 }
            if (r3 == 0) goto L_0x0027
            androidx.localbroadcastmanager.content.LocalBroadcastManager r2 = androidx.localbroadcastmanager.content.LocalBroadcastManager.getInstance(r2)     // Catch:{ all -> 0x0029 }
            android.content.Intent r3 = new android.content.Intent     // Catch:{ all -> 0x0029 }
            java.lang.String r1 = "com.mapbox.android.telemetry.action.TOKEN_CHANGED"
            r3.<init>(r1)     // Catch:{ all -> 0x0029 }
            r2.sendBroadcast(r3)     // Catch:{ all -> 0x0029 }
        L_0x0027:
            monitor-exit(r0)
            return
        L_0x0029:
            r2 = move-exception
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.telemetry.x.a(android.content.Context, java.lang.String):void");
    }

    private void a(Runnable runnable) {
        try {
            this.n.execute(runnable);
        } catch (RejectedExecutionException unused) {
        }
    }

    public final boolean updateSessionIdRotationInterval(ac acVar) {
        final long j2 = (long) acVar.f4944a;
        a((Runnable) new Runnable() {
            public final void run() {
                try {
                    SharedPreferences.Editor edit = ak.a(x.f4995a).edit();
                    edit.putLong("mapboxSessionRotationInterval", TimeUnit.HOURS.toMillis(j2));
                    edit.apply();
                } catch (Throwable unused) {
                }
            }
        });
        return true;
    }

    private boolean a(String str, String str2) {
        boolean z = a(str) && b(str2);
        if (z) {
            if (this.m == null) {
                Context context = f4995a;
                this.m = new n(context, ak.a(this.c, context), f4996b.get(), new OkHttpClient());
            }
            if (this.k == null) {
                this.k = new e(f4995a, this.m);
            }
            if (this.e == null) {
                this.e = new ah(f4996b.get(), ak.a(this.c, f4995a), new w(), this.k).a(f4995a);
                this.e = this.e;
            }
        }
        return z;
    }
}
