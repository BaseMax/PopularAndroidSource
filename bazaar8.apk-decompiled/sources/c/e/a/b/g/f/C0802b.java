package c.e.a.b.g.f;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import c.e.a.b.d.a.a.C0756d;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.e;
import c.e.a.b.d.g.h;
import c.e.a.b.h.b.Da;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: c.e.a.b.g.f.b  reason: case insensitive filesystem */
public class C0802b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile C0802b f10325a = null;

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f10326b = null;

    /* renamed from: c  reason: collision with root package name */
    public static Boolean f10327c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f10328d = "use_dynamite_api";

    /* renamed from: e  reason: collision with root package name */
    public static String f10329e = "allow_remote_dynamite";

    /* renamed from: f  reason: collision with root package name */
    public final String f10330f;

    /* renamed from: g  reason: collision with root package name */
    public final e f10331g;

    /* renamed from: h  reason: collision with root package name */
    public final ExecutorService f10332h;

    /* renamed from: i  reason: collision with root package name */
    public final c.e.a.b.h.a.a f10333i;

    /* renamed from: j  reason: collision with root package name */
    public Map<Da, C0129b> f10334j;

    /* renamed from: k  reason: collision with root package name */
    public int f10335k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10336l;
    public String m;
    public cd n;

    /* renamed from: c.e.a.b.g.f.b$a */
    abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final long f10337a;

        /* renamed from: b  reason: collision with root package name */
        public final long f10338b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f10339c;

        public a(C0802b bVar) {
            this(true);
        }

        public abstract void a();

        public void b() {
        }

        public void run() {
            if (C0802b.this.f10336l) {
                b();
                return;
            }
            try {
                a();
            } catch (Exception e2) {
                C0802b.this.a(e2, false, this.f10339c);
                b();
            }
        }

        public a(boolean z) {
            this.f10337a = C0802b.this.f10331g.c();
            this.f10338b = C0802b.this.f10331g.a();
            this.f10339c = z;
        }
    }

    /* renamed from: c.e.a.b.g.f.b$b  reason: collision with other inner class name */
    static class C0129b extends jd {

        /* renamed from: a  reason: collision with root package name */
        public final Da f10341a;

        public C0129b(Da da) {
            this.f10341a = da;
        }

        public final void onEvent(String str, String str2, Bundle bundle, long j2) {
            this.f10341a.onEvent(str, str2, bundle, j2);
        }

        public final int x() {
            return this.f10341a.hashCode();
        }
    }

    /* renamed from: c.e.a.b.g.f.b$c */
    class c implements Application.ActivityLifecycleCallbacks {
        public c() {
        }

        public final void onActivityCreated(Activity activity, Bundle bundle) {
            C0802b.this.a((a) new C0885w(this, activity, bundle));
        }

        public final void onActivityDestroyed(Activity activity) {
            C0802b.this.a((a) new C(this, activity));
        }

        public final void onActivityPaused(Activity activity) {
            C0802b.this.a((a) new C0897z(this, activity));
        }

        public final void onActivityResumed(Activity activity) {
            C0802b.this.a((a) new C0893y(this, activity));
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            bd bdVar = new bd();
            C0802b.this.a((a) new B(this, activity, bdVar));
            Bundle d2 = bdVar.d(50);
            if (d2 != null) {
                bundle.putAll(d2);
            }
        }

        public final void onActivityStarted(Activity activity) {
            C0802b.this.a((a) new C0889x(this, activity));
        }

        public final void onActivityStopped(Activity activity) {
            C0802b.this.a((a) new A(this, activity));
        }
    }

    public C0802b(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !b(str2, str3)) {
            this.f10330f = "FA";
        } else {
            this.f10330f = str;
        }
        this.f10331g = h.d();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.f10332h = threadPoolExecutor;
        this.f10333i = new c.e.a.b.h.a.a(this);
        boolean z = false;
        if (!(!b(context) || e())) {
            this.m = null;
            this.f10336l = true;
            Log.w(this.f10330f, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!b(str2, str3)) {
            this.m = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null ? true : z)) {
                    Log.w(this.f10330f, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f10330f, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
                this.f10336l = true;
                return;
            }
        } else {
            this.m = str2;
        }
        C0806c cVar = new C0806c(this, str2, str3, context, bundle);
        a((a) cVar);
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f10330f, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new c());
        }
    }

    public static C0802b a(Context context) {
        return a(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    public static boolean b(Context context) {
        try {
            C0756d.a(context);
            if (C0756d.a() != null) {
                return true;
            }
        } catch (IllegalStateException unused) {
        }
        return false;
    }

    public static int c(Context context) {
        return DynamiteModule.b(context, ModuleDescriptor.MODULE_ID);
    }

    public static int d(Context context) {
        return DynamiteModule.a(context, ModuleDescriptor.MODULE_ID);
    }

    public static boolean e() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final String f() {
        bd bdVar = new bd();
        a((a) new C0834j(this, bdVar));
        return bdVar.c(50);
    }

    public static C0802b a(Context context, String str, String str2, String str3, Bundle bundle) {
        r.a(context);
        if (f10325a == null) {
            synchronized (C0802b.class) {
                if (f10325a == null) {
                    C0802b bVar = new C0802b(context, str, str2, str3, bundle);
                    f10325a = bVar;
                }
            }
        }
        return f10325a;
    }

    public static void e(Context context) {
        synchronized (C0802b.class) {
            try {
                if (f10326b != null && f10327c != null) {
                    return;
                }
                if (a(context, "app_measurement_internal_disable_startup_flags")) {
                    f10326b = false;
                    f10327c = false;
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                f10326b = Boolean.valueOf(sharedPreferences.getBoolean(f10328d, false));
                f10327c = Boolean.valueOf(sharedPreferences.getBoolean(f10329e, false));
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.remove(f10328d);
                edit.remove(f10329e);
                edit.apply();
            } catch (ClassCastException | IllegalStateException | NullPointerException e2) {
                Log.e("FA", "Exception reading flag from SharedPreferences.", e2);
                f10326b = false;
                f10327c = false;
            }
        }
    }

    public final String c() {
        bd bdVar = new bd();
        a((a) new C0842l(this, bdVar));
        return bdVar.c(500);
    }

    public final String d() {
        bd bdVar = new bd();
        a((a) new C0830i(this, bdVar));
        return bdVar.c(500);
    }

    public static boolean b(String str, String str2) {
        return (str2 == null || str == null || e()) ? false : true;
    }

    public static boolean f(Context context) {
        e(context);
        return f10326b.booleanValue();
    }

    public final void b(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true, true, null);
    }

    public final void b(String str) {
        a((a) new C0826h(this, str));
    }

    public final int c(String str) {
        bd bdVar = new bd();
        a((a) new C0858p(this, str, bdVar));
        Integer num = (Integer) bd.a(bdVar.d(10000), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String b() {
        bd bdVar = new bd();
        a((a) new C0846m(this, bdVar));
        return bdVar.c(500);
    }

    public final void a(a aVar) {
        this.f10332h.execute(aVar);
    }

    public final cd a(Context context, boolean z) {
        DynamiteModule.a aVar;
        if (z) {
            try {
                aVar = DynamiteModule.f13156l;
            } catch (DynamiteModule.LoadingException e2) {
                a((Exception) e2, true, false);
                return null;
            }
        } else {
            aVar = DynamiteModule.f13153i;
        }
        return dd.asInterface(DynamiteModule.a(context, aVar, ModuleDescriptor.MODULE_ID).a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
    }

    public final void a(Exception exc, boolean z, boolean z2) {
        this.f10336l |= z;
        if (z) {
            Log.w(this.f10330f, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            a(5, "Error with data collection. Data lost.", (Object) exc, (Object) null, (Object) null);
        }
        Log.w(this.f10330f, "Error with data collection. Data lost.", exc);
    }

    public final void a(Da da) {
        a((a) new C0862q(this, da));
    }

    public final void a(String str, Bundle bundle) {
        a(null, str, bundle, false, true, null);
    }

    public final void a(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l2) {
        C0873t tVar = new C0873t(this, l2, str, str2, bundle, z, z2);
        a((a) tVar);
    }

    public final void a(String str, String str2, Object obj) {
        a(str, str2, obj, true);
    }

    public final void a(String str, String str2, Object obj, boolean z) {
        C0877u uVar = new C0877u(this, str, str2, obj, z);
        a((a) uVar);
    }

    public final void a(Bundle bundle) {
        a((a) new C0881v(this, bundle));
    }

    public final void a(String str, String str2, Bundle bundle) {
        a((a) new C0810d(this, str, str2, bundle));
    }

    public final List<Bundle> a(String str, String str2) {
        bd bdVar = new bd();
        a((a) new C0814e(this, str, str2, bdVar));
        List<Bundle> list = (List) bd.a(bdVar.d(5000), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final void a(Activity activity, String str, String str2) {
        a((a) new C0818f(this, activity, str, str2));
    }

    public final void a(String str) {
        a((a) new C0822g(this, str));
    }

    public final long a() {
        bd bdVar = new bd();
        a((a) new C0838k(this, bdVar));
        Long l2 = (Long) bd.a(bdVar.d(500), Long.class);
        if (l2 != null) {
            return l2.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.f10331g.c()).nextLong();
        int i2 = this.f10335k + 1;
        this.f10335k = i2;
        return nextLong + ((long) i2);
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        bd bdVar = new bd();
        C0850n nVar = new C0850n(this, str, str2, z, bdVar);
        a((a) nVar);
        Bundle d2 = bdVar.d(5000);
        if (d2 == null || d2.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(d2.size());
        for (String str3 : d2.keySet()) {
            Object obj = d2.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void a(int i2, String str, Object obj, Object obj2, Object obj3) {
        C0854o oVar = new C0854o(this, false, 5, str, obj, null, null);
        a((a) oVar);
    }

    public final void a(boolean z) {
        a((a) new r(this, z));
    }

    public static boolean a(Context context, String str) {
        r.b(str);
        try {
            ApplicationInfo a2 = c.e.a.b.d.h.c.a(context).a(context.getPackageName(), 128);
            if (a2 != null) {
                if (a2.metaData != null) {
                    return a2.metaData.getBoolean(str);
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
