package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import b.f.C0243b;
import c.e.a.b.d.a.a.C0754b;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.o;
import c.e.c.b.h;
import c.e.c.b.j;
import c.e.c.b.n;
import c.e.c.h.f;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class FirebaseApp {

    /* renamed from: a  reason: collision with root package name */
    public static final List<String> f13480a = Arrays.asList(new String[]{"com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId"});

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f13481b = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");

    /* renamed from: c  reason: collision with root package name */
    public static final List<String> f13482c = Arrays.asList(new String[]{"com.google.android.gms.measurement.AppMeasurement"});

    /* renamed from: d  reason: collision with root package name */
    public static final List<String> f13483d = Arrays.asList(new String[0]);

    /* renamed from: e  reason: collision with root package name */
    public static final Set<String> f13484e = Collections.emptySet();

    /* renamed from: f  reason: collision with root package name */
    public static final Object f13485f = new Object();

    /* renamed from: g  reason: collision with root package name */
    public static final Executor f13486g = new d();

    /* renamed from: h  reason: collision with root package name */
    public static final Map<String, FirebaseApp> f13487h = new C0243b();

    /* renamed from: i  reason: collision with root package name */
    public final Context f13488i;

    /* renamed from: j  reason: collision with root package name */
    public final String f13489j;

    /* renamed from: k  reason: collision with root package name */
    public final c.e.c.c f13490k;

    /* renamed from: l  reason: collision with root package name */
    public final n f13491l;
    public final SharedPreferences m;
    public final c.e.c.c.c n;
    public final AtomicBoolean o = new AtomicBoolean(false);
    public final AtomicBoolean p = new AtomicBoolean();
    public final AtomicBoolean q;
    public final List<Object> r = new CopyOnWriteArrayList();
    public final List<a> s = new CopyOnWriteArrayList();
    public final List<Object> t = new CopyOnWriteArrayList();
    public c u;

    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    public interface a {
        void a(boolean z);
    }

    @TargetApi(14)
    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    private static class b implements C0754b.a {

        /* renamed from: a  reason: collision with root package name */
        public static AtomicReference<b> f13492a = new AtomicReference<>();

        public static void b(Context context) {
            if (c.e.a.b.d.g.n.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f13492a.get() == null) {
                    b bVar = new b();
                    if (f13492a.compareAndSet(null, bVar)) {
                        C0754b.a(application);
                        C0754b.a().a((C0754b.a) bVar);
                    }
                }
            }
        }

        public void a(boolean z) {
            synchronized (FirebaseApp.f13485f) {
                Iterator it = new ArrayList(FirebaseApp.f13487h.values()).iterator();
                while (it.hasNext()) {
                    FirebaseApp firebaseApp = (FirebaseApp) it.next();
                    if (firebaseApp.o.get()) {
                        firebaseApp.a(z);
                    }
                }
            }
        }
    }

    @Deprecated
    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    public interface c {
    }

    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    private static class d implements Executor {

        /* renamed from: a  reason: collision with root package name */
        public static final Handler f13493a = new Handler(Looper.getMainLooper());

        public d() {
        }

        public void execute(Runnable runnable) {
            f13493a.post(runnable);
        }
    }

    @TargetApi(24)
    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    private static class e extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        public static AtomicReference<e> f13494a = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        public final Context f13495b;

        public e(Context context) {
            this.f13495b = context;
        }

        public static void b(Context context) {
            if (f13494a.get() == null) {
                e eVar = new e(context);
                if (f13494a.compareAndSet(null, eVar)) {
                    context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.f13485f) {
                for (FirebaseApp a2 : FirebaseApp.f13487h.values()) {
                    a2.f();
                }
            }
            a();
        }

        public void a() {
            this.f13495b.unregisterReceiver(this);
        }
    }

    public FirebaseApp(Context context, String str, c.e.c.c cVar) {
        r.a(context);
        this.f13488i = context;
        r.b(str);
        this.f13489j = str;
        r.a(cVar);
        this.f13490k = cVar;
        this.u = new c.e.c.f.a();
        this.m = context.getSharedPreferences(a(str), 0);
        this.q = new AtomicBoolean(h());
        List<j> a2 = h.a(context).a();
        this.f13491l = new n(f13486g, a2, c.e.c.b.e.a(context, Context.class, new Class[0]), c.e.c.b.e.a(this, FirebaseApp.class, new Class[0]), c.e.c.b.e.a(cVar, c.e.c.c.class, new Class[0]), f.a("fire-android", ""), f.a("fire-core", "16.1.0"), c.e.c.h.c.b());
        this.n = (c.e.c.c.c) this.f13491l.a(c.e.c.c.c.class);
    }

    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (f13485f) {
            firebaseApp = f13487h.get("[DEFAULT]");
            if (firebaseApp == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + o.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return firebaseApp;
    }

    public Context c() {
        b();
        return this.f13488i;
    }

    public String d() {
        b();
        return this.f13489j;
    }

    public c.e.c.c e() {
        b();
        return this.f13490k;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseApp)) {
            return false;
        }
        return this.f13489j.equals(((FirebaseApp) obj).d());
    }

    public final void f() {
        boolean d2 = b.i.b.a.d(this.f13488i);
        if (d2) {
            e.b(this.f13488i);
        } else {
            this.f13491l.a(g());
        }
        a(FirebaseApp.class, this, f13480a, d2);
        if (g()) {
            a(FirebaseApp.class, this, f13481b, d2);
            a(Context.class, this.f13488i, f13482c, d2);
        }
    }

    public boolean g() {
        return "[DEFAULT]".equals(d());
    }

    public final boolean h() {
        if (this.m.contains("firebase_data_collection_default_enabled")) {
            return this.m.getBoolean("firebase_data_collection_default_enabled", true);
        }
        try {
            PackageManager packageManager = this.f13488i.getPackageManager();
            if (packageManager != null) {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.f13488i.getPackageName(), 128);
                if (!(applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled"))) {
                    return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return true;
    }

    public int hashCode() {
        return this.f13489j.hashCode();
    }

    public boolean isDataCollectionDefaultEnabled() {
        b();
        return this.q.get();
    }

    public String toString() {
        C0794q.a a2 = C0794q.a((Object) this);
        a2.a(DefaultAppMeasurementEventListenerRegistrar.NAME, this.f13489j);
        a2.a("options", this.f13490k);
        return a2.toString();
    }

    public final void b() {
        r.b(!this.p.get(), "FirebaseApp was deleted");
    }

    public static String b(String str) {
        return str.trim();
    }

    public static FirebaseApp a(Context context) {
        synchronized (f13485f) {
            if (f13487h.containsKey("[DEFAULT]")) {
                FirebaseApp instance = getInstance();
                return instance;
            }
            c.e.c.c a2 = c.e.c.c.a(context);
            if (a2 == null) {
                Log.d("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            FirebaseApp a3 = a(context, a2);
            return a3;
        }
    }

    public static FirebaseApp a(Context context, c.e.c.c cVar) {
        return a(context, cVar, "[DEFAULT]");
    }

    public static FirebaseApp a(Context context, c.e.c.c cVar, String str) {
        FirebaseApp firebaseApp;
        b.b(context);
        String b2 = b(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f13485f) {
            boolean z = !f13487h.containsKey(b2);
            r.b(z, "FirebaseApp name " + b2 + " already exists!");
            r.a(context, (Object) "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, b2, cVar);
            f13487h.put(b2, firebaseApp);
        }
        firebaseApp.f();
        return firebaseApp;
    }

    public <T> T a(Class<T> cls) {
        b();
        return this.f13491l.a(cls);
    }

    public static String a(String str) {
        return "com.google.firebase.common.prefs:" + str;
    }

    public final void a(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (a a2 : this.s) {
            a2.a(z);
        }
    }

    public final <T> void a(Class<T> cls, T t2, Iterable<String> iterable, boolean z) {
        for (String next : iterable) {
            if (z) {
                try {
                    if (!f13483d.contains(next)) {
                    }
                } catch (ClassNotFoundException unused) {
                    if (!f13484e.contains(next)) {
                        Log.d("FirebaseApp", next + " is not linked. Skipping initialization.");
                    } else {
                        throw new IllegalStateException(next + " is missing, but is required. Check if it has been removed by Proguard.");
                    }
                } catch (NoSuchMethodException unused2) {
                    throw new IllegalStateException(next + "#getInstance has been removed by Proguard. Add keep rule to prevent it.");
                } catch (InvocationTargetException e2) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e2);
                } catch (IllegalAccessException e3) {
                    Log.wtf("FirebaseApp", "Failed to initialize " + next, e3);
                }
            }
            Method method = Class.forName(next).getMethod("getInstance", new Class[]{cls});
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, new Object[]{t2});
            }
        }
    }
}
