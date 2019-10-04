package c.e.a.b.h.b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.o;
import c.e.a.b.d.h.c;
import c.e.a.b.h.b.C0931k;
import java.lang.reflect.InvocationTargetException;

public final class pc extends C0961ua {

    /* renamed from: b  reason: collision with root package name */
    public Boolean f11008b;

    /* renamed from: c  reason: collision with root package name */
    public rc f11009c = qc.f11017a;

    /* renamed from: d  reason: collision with root package name */
    public Boolean f11010d;

    public pc(Y y) {
        super(y);
        C0931k.a(y);
    }

    public static String o() {
        return C0931k.o.a(null);
    }

    public static long s() {
        return C0931k.R.a(null).longValue();
    }

    public static long t() {
        return C0931k.r.a(null).longValue();
    }

    public static boolean v() {
        return C0931k.n.a(null).booleanValue();
    }

    public static boolean x() {
        return C0931k.na.a(null).booleanValue();
    }

    public final void a(rc rcVar) {
        this.f11009c = rcVar;
    }

    public final int b(String str, C0931k.a<Integer> aVar) {
        if (str == null) {
            return aVar.a(null).intValue();
        }
        String a2 = this.f11009c.a(str, aVar.a());
        if (TextUtils.isEmpty(a2)) {
            return aVar.a(null).intValue();
        }
        try {
            return aVar.a(Integer.valueOf(Integer.parseInt(a2))).intValue();
        } catch (NumberFormatException unused) {
            return aVar.a(null).intValue();
        }
    }

    public final double c(String str, C0931k.a<Double> aVar) {
        if (str == null) {
            return aVar.a(null).doubleValue();
        }
        String a2 = this.f11009c.a(str, aVar.a());
        if (TextUtils.isEmpty(a2)) {
            return aVar.a(null).doubleValue();
        }
        try {
            return aVar.a(Double.valueOf(Double.parseDouble(a2))).doubleValue();
        } catch (NumberFormatException unused) {
            return aVar.a(null).doubleValue();
        }
    }

    public final int d(String str) {
        return b(str, C0931k.C);
    }

    public final boolean e(String str, C0931k.a<Boolean> aVar) {
        return d(str, aVar);
    }

    public final boolean f(String str) {
        return "1".equals(this.f11009c.a(str, "gaia_collection_enabled"));
    }

    public final boolean g(String str) {
        return "1".equals(this.f11009c.a(str, "measurement.event_sampling_enabled"));
    }

    public final boolean h(String str) {
        return d(str, C0931k.ba);
    }

    public final boolean i(String str) {
        return d(str, C0931k.da);
    }

    public final boolean j(String str) {
        return d(str, C0931k.ea);
    }

    public final boolean k(String str) {
        return d(str, C0931k.V);
    }

    public final String l(String str) {
        C0931k.a<String> aVar = C0931k.W;
        if (str == null) {
            return aVar.a(null);
        }
        return aVar.a(this.f11009c.a(str, aVar.a()));
    }

    public final boolean m(String str) {
        return d(str, C0931k.fa);
    }

    public final long n() {
        a();
        return 15300;
    }

    public final boolean p() {
        if (this.f11010d == null) {
            synchronized (this) {
                if (this.f11010d == null) {
                    ApplicationInfo applicationInfo = b().getApplicationInfo();
                    String a2 = o.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f11010d = Boolean.valueOf(str != null && str.equals(a2));
                    }
                    if (this.f11010d == null) {
                        this.f11010d = Boolean.TRUE;
                        e().t().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f11010d.booleanValue();
    }

    public final boolean q() {
        a();
        Boolean e2 = e("firebase_analytics_collection_deactivated");
        return e2 != null && e2.booleanValue();
    }

    public final Boolean r() {
        a();
        return e("firebase_analytics_collection_enabled");
    }

    public final String u() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{"debug.firebase.analytics.app", ""});
        } catch (ClassNotFoundException e2) {
            e().t().a("Could not find SystemProperties class", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            e().t().a("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (IllegalAccessException e4) {
            e().t().a("Could not access SystemProperties.get()", e4);
            return "";
        } catch (InvocationTargetException e5) {
            e().t().a("SystemProperties.get() threw an exception", e5);
            return "";
        }
    }

    public final boolean w() {
        if (this.f11008b == null) {
            this.f11008b = e("app_measurement_lite");
            if (this.f11008b == null) {
                this.f11008b = false;
            }
        }
        if (this.f11008b.booleanValue() || !this.f11077a.t()) {
            return true;
        }
        return false;
    }

    public final long a(String str, C0931k.a<Long> aVar) {
        if (str == null) {
            return aVar.a(null).longValue();
        }
        String a2 = this.f11009c.a(str, aVar.a());
        if (TextUtils.isEmpty(a2)) {
            return aVar.a(null).longValue();
        }
        try {
            return aVar.a(Long.valueOf(Long.parseLong(a2))).longValue();
        } catch (NumberFormatException unused) {
            return aVar.a(null).longValue();
        }
    }

    public final boolean d(String str, C0931k.a<Boolean> aVar) {
        if (str == null) {
            return aVar.a(null).booleanValue();
        }
        String a2 = this.f11009c.a(str, aVar.a());
        if (TextUtils.isEmpty(a2)) {
            return aVar.a(null).booleanValue();
        }
        return aVar.a(Boolean.valueOf(Boolean.parseBoolean(a2))).booleanValue();
    }

    public final Boolean e(String str) {
        r.b(str);
        try {
            if (b().getPackageManager() == null) {
                e().t().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo a2 = c.a(b()).a(b().getPackageName(), 128);
            if (a2 == null) {
                e().t().a("Failed to load metadata: ApplicationInfo is null");
                return null;
            } else if (a2.metaData == null) {
                e().t().a("Failed to load metadata: Metadata bundle is null");
                return null;
            } else if (!a2.metaData.containsKey(str)) {
                return null;
            } else {
                return Boolean.valueOf(a2.metaData.getBoolean(str));
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e().t().a("Failed to load metadata: Package name not found", e2);
            return null;
        }
    }

    public final boolean n(String str) {
        return d(str, C0931k.ga);
    }

    public final boolean r(String str) {
        return d(str, C0931k.ma);
    }

    public final boolean o(String str) {
        return d(str, C0931k.ia);
    }

    public final boolean q(String str) {
        return d(str, C0931k.ka);
    }

    public final boolean s(String str) {
        return d(str, C0931k.la);
    }

    public final boolean t(String str) {
        return d(str, C0931k.oa);
    }

    public final boolean u(String str) {
        return d(str, C0931k.pa);
    }

    public final boolean b(String str) {
        return d(str, C0931k.ra);
    }

    public final boolean c(String str) {
        return d(str, C0931k.wa);
    }

    public final boolean a(C0931k.a<Boolean> aVar) {
        return d(null, aVar);
    }

    public final boolean a(String str) {
        return d(str, C0931k.qa);
    }

    public final boolean p(String str) {
        return d(str, C0931k.ja);
    }
}
