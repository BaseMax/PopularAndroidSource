package c.e.a.b.h.b;

import android.app.Activity;
import android.os.Bundle;
import b.f.C0243b;
import c.e.a.b.d.d.r;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import java.util.Map;

/* renamed from: c.e.a.b.h.b.db  reason: case insensitive filesystem */
public final class C0912db extends C0977zb {

    /* renamed from: c  reason: collision with root package name */
    public C0909cb f10855c;

    /* renamed from: d  reason: collision with root package name */
    public volatile C0909cb f10856d;

    /* renamed from: e  reason: collision with root package name */
    public C0909cb f10857e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<Activity, C0909cb> f10858f = new C0243b();

    /* renamed from: g  reason: collision with root package name */
    public C0909cb f10859g;

    /* renamed from: h  reason: collision with root package name */
    public String f10860h;

    public C0912db(Y y) {
        super(y);
    }

    public final C0909cb B() {
        w();
        l();
        return this.f10855c;
    }

    public final C0909cb C() {
        j();
        return this.f10856d;
    }

    public final void a(Activity activity, String str, String str2) {
        if (this.f10856d == null) {
            e().w().a("setCurrentScreen cannot be called while no activity active");
        } else if (this.f10858f.get(activity) == null) {
            e().w().a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            if (str2 == null) {
                str2 = a(activity.getClass().getCanonicalName());
            }
            boolean equals = this.f10856d.f10842b.equals(str2);
            boolean e2 = cc.e(this.f10856d.f10841a, str);
            if (equals && e2) {
                e().y().a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                e().w().a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str2 == null || (str2.length() > 0 && str2.length() <= 100)) {
                e().B().a("Setting current screen to name, class", str == null ? "null" : str, str2);
                C0909cb cbVar = new C0909cb(str, str2, g().u());
                this.f10858f.put(activity, cbVar);
                a(activity, cbVar, true);
            } else {
                e().w().a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            }
        }
    }

    public final void b(Activity activity) {
        C0909cb d2 = d(activity);
        this.f10857e = this.f10856d;
        this.f10856d = null;
        d().a((Runnable) new C0918fb(this, d2));
    }

    public final void c(Activity activity) {
        a(activity, d(activity), false);
        C0901a o = o();
        o.d().a((Runnable) new Ba(o, o.c().a()));
    }

    public final C0909cb d(Activity activity) {
        r.a(activity);
        C0909cb cbVar = this.f10858f.get(activity);
        if (cbVar != null) {
            return cbVar;
        }
        C0909cb cbVar2 = new C0909cb(null, a(activity.getClass().getCanonicalName()), g().u());
        this.f10858f.put(activity, cbVar2);
        return cbVar2;
    }

    public final boolean z() {
        return false;
    }

    public final void b(Activity activity, Bundle bundle) {
        if (bundle != null) {
            C0909cb cbVar = this.f10858f.get(activity);
            if (cbVar != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("id", cbVar.f10843c);
                bundle2.putString(DefaultAppMeasurementEventListenerRegistrar.NAME, cbVar.f10841a);
                bundle2.putString("referrer_name", cbVar.f10842b);
                bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
            }
        }
    }

    public final void a(Activity activity, C0909cb cbVar, boolean z) {
        C0909cb cbVar2 = this.f10856d == null ? this.f10857e : this.f10856d;
        if (cbVar.f10842b == null) {
            cbVar = new C0909cb(cbVar.f10841a, a(activity.getClass().getCanonicalName()), cbVar.f10843c);
        }
        this.f10857e = this.f10856d;
        this.f10856d = cbVar;
        d().a((Runnable) new C0915eb(this, z, cbVar2, cbVar));
    }

    public final void a(C0909cb cbVar, boolean z) {
        o().a(c().a());
        if (u().a(cbVar.f10844d, z)) {
            cbVar.f10844d = false;
        }
    }

    public static void a(C0909cb cbVar, Bundle bundle, boolean z) {
        if (bundle == null || cbVar == null || (bundle.containsKey("_sc") && !z)) {
            if (bundle != null && cbVar == null && z) {
                bundle.remove("_sn");
                bundle.remove("_sc");
                bundle.remove("_si");
            }
            return;
        }
        String str = cbVar.f10841a;
        if (str != null) {
            bundle.putString("_sn", str);
        } else {
            bundle.remove("_sn");
        }
        bundle.putString("_sc", cbVar.f10842b);
        bundle.putLong("_si", cbVar.f10843c);
    }

    public final void a(String str, C0909cb cbVar) {
        l();
        synchronized (this) {
            if (this.f10860h == null || this.f10860h.equals(str) || cbVar != null) {
                this.f10860h = str;
                this.f10859g = cbVar;
            }
        }
    }

    public static String a(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        return str2.length() > 100 ? str2.substring(0, 100) : str2;
    }

    public final void a(Activity activity, Bundle bundle) {
        if (bundle != null) {
            Bundle bundle2 = bundle.getBundle("com.google.app_measurement.screen_service");
            if (bundle2 != null) {
                this.f10858f.put(activity, new C0909cb(bundle2.getString(DefaultAppMeasurementEventListenerRegistrar.NAME), bundle2.getString("referrer_name"), bundle2.getLong("id")));
            }
        }
    }

    public final void a(Activity activity) {
        this.f10858f.remove(activity);
    }
}
