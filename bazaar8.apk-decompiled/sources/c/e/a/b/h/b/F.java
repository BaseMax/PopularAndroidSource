package c.e.a.b.h.b;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public final class F extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public static final Pair<String, Long> f10610c = new Pair<>("", 0L);

    /* renamed from: d  reason: collision with root package name */
    public SharedPreferences f10611d;

    /* renamed from: e  reason: collision with root package name */
    public J f10612e;

    /* renamed from: f  reason: collision with root package name */
    public final I f10613f = new I(this, "last_upload", 0);

    /* renamed from: g  reason: collision with root package name */
    public final I f10614g = new I(this, "last_upload_attempt", 0);

    /* renamed from: h  reason: collision with root package name */
    public final I f10615h = new I(this, "backoff", 0);

    /* renamed from: i  reason: collision with root package name */
    public final I f10616i = new I(this, "last_delete_stale", 0);

    /* renamed from: j  reason: collision with root package name */
    public final I f10617j = new I(this, "midnight_offset", 0);

    /* renamed from: k  reason: collision with root package name */
    public final I f10618k = new I(this, "first_open_time", 0);

    /* renamed from: l  reason: collision with root package name */
    public final I f10619l = new I(this, "app_install_time", 0);
    public final K m = new K(this, "app_instance_id", null);
    public String n;
    public boolean o;
    public long p;
    public final I q = new I(this, "time_before_start", 10000);
    public final I r = new I(this, "session_timeout", 1800000);
    public final H s = new H(this, "start_new_session", true);
    public final K t = new K(this, "non_personalized_ads", null);
    public final H u = new H(this, "use_dynamite_api", false);
    public final H v = new H(this, "allow_remote_dynamite", false);
    public final I w = new I(this, "last_pause_time", 0);
    public final I x = new I(this, "time_active", 0);
    public boolean y;
    public H z = new H(this, "app_backgrounded", false);

    public F(Y y2) {
        super(y2);
    }

    public final boolean A() {
        l();
        return t().getBoolean("deferred_analytics_collection", false);
    }

    public final boolean B() {
        return this.f10611d.contains("deferred_analytics_collection");
    }

    public final Pair<String, Boolean> a(String str) {
        l();
        long a2 = c().a();
        String str2 = this.n;
        if (str2 != null && a2 < this.p) {
            return new Pair<>(str2, Boolean.valueOf(this.o));
        }
        this.p = a2 + i().a(str, C0931k.p);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(b());
            if (advertisingIdInfo != null) {
                this.n = advertisingIdInfo.getId();
                this.o = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.n == null) {
                this.n = "";
            }
        } catch (Exception e2) {
            e().A().a("Unable to get advertising id", e2);
            this.n = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.n, Boolean.valueOf(this.o));
    }

    public final String b(String str) {
        l();
        String str2 = (String) a(str).first;
        MessageDigest t2 = cc.t();
        if (t2 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, t2.digest(str2.getBytes()))});
    }

    public final void c(String str) {
        l();
        SharedPreferences.Editor edit = t().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    public final void d(String str) {
        l();
        SharedPreferences.Editor edit = t().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    public final boolean r() {
        return true;
    }

    public final void s() {
        this.f10611d = b().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.y = this.f10611d.getBoolean("has_been_opened", false);
        if (!this.y) {
            SharedPreferences.Editor edit = this.f10611d.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        J j2 = new J(this, "health_monitor", Math.max(0, C0931k.q.a(null).longValue()));
        this.f10612e = j2;
    }

    public final SharedPreferences t() {
        l();
        o();
        return this.f10611d;
    }

    public final String u() {
        l();
        return t().getString("gmp_app_id", null);
    }

    public final String v() {
        l();
        return t().getString("admob_app_id", null);
    }

    public final Boolean w() {
        l();
        if (!t().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(t().getBoolean("use_service", false));
    }

    public final void x() {
        l();
        e().B().a("Clearing collection preferences.");
        if (i().a(C0931k.za)) {
            Boolean y2 = y();
            SharedPreferences.Editor edit = t().edit();
            edit.clear();
            edit.apply();
            if (y2 != null) {
                a(y2.booleanValue());
            }
            return;
        }
        boolean contains = t().contains("measurement_enabled");
        boolean z2 = true;
        if (contains) {
            z2 = c(true);
        }
        SharedPreferences.Editor edit2 = t().edit();
        edit2.clear();
        edit2.apply();
        if (contains) {
            a(z2);
        }
    }

    public final Boolean y() {
        l();
        if (t().contains("measurement_enabled")) {
            return Boolean.valueOf(t().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final String z() {
        l();
        String string = t().getString("previous_os_version", null);
        m().o();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = t().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    public final void b(boolean z2) {
        l();
        e().B().a("Setting useService", Boolean.valueOf(z2));
        SharedPreferences.Editor edit = t().edit();
        edit.putBoolean("use_service", z2);
        edit.apply();
    }

    public final boolean c(boolean z2) {
        l();
        return t().getBoolean("measurement_enabled", z2);
    }

    public final void d(boolean z2) {
        l();
        e().B().a("Updating deferred analytics collection", Boolean.valueOf(z2));
        SharedPreferences.Editor edit = t().edit();
        edit.putBoolean("deferred_analytics_collection", z2);
        edit.apply();
    }

    public final void a(boolean z2) {
        l();
        e().B().a("Setting measurementEnabled", Boolean.valueOf(z2));
        SharedPreferences.Editor edit = t().edit();
        edit.putBoolean("measurement_enabled", z2);
        edit.apply();
    }

    public final boolean a(long j2) {
        return j2 - this.r.a() > this.w.a();
    }
}
