package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.b;

@Deprecated
public class iz extends ix {
    @Deprecated
    public static final je c = new je("APP_ENVIRONMENT");
    @Deprecated
    public static final je d = new je("APP_ENVIRONMENT_REVISION");
    private static final je e = new je("SESSION_SLEEP_START_");
    private static final je f = new je("SESSION_ID_");
    private static final je g = new je("SESSION_COUNTER_ID_");
    private static final je h = new je("SESSION_INIT_TIME_");
    private static final je i = new je("SESSION_ALIVE_TIME_");
    private static final je j = new je("SESSION_IS_ALIVE_REPORT_NEEDED_");
    private static final je k = new je("BG_SESSION_ID_");
    private static final je l = new je("BG_SESSION_SLEEP_START_");
    private static final je m = new je("BG_SESSION_COUNTER_ID_");
    private static final je n = new je("BG_SESSION_INIT_TIME_");
    private static final je o = new je("COLLECT_INSTALLED_APPS_");
    private static final je p = new je("IDENTITY_SEND_TIME_");
    private static final je q = new je("USER_INFO_");
    private static final je r = new je("REFERRER_");
    private static final je s = new je("APP_ENVIRONMENT_");
    private static final je t = new je("APP_ENVIRONMENT_REVISION_");
    private je A = new je(k.a(), i());
    private je B = new je(l.a(), i());
    private je C = new je(m.a(), i());
    private je D = new je(n.a(), i());
    private je E = new je(p.a(), i());
    private je F = new je(o.a(), i());
    private je G = new je(q.a(), i());
    private je H = new je(r.a(), i());
    private je I = new je(s.a(), i());
    private je J = new je(t.a(), i());
    private je u = new je(e.a(), i());
    private je v = new je(f.a(), i());
    private je w = new je(g.a(), i());
    private je x = new je(h.a(), i());
    private je y = new je(i.a(), i());
    private je z = new je(j.a(), i());

    /* access modifiers changed from: protected */
    public String f() {
        return "_boundentrypreferences";
    }

    public iz(Context context, String str) {
        super(context, str);
        SharedPreferences sharedPreferences = this.f6173b;
        String b2 = this.F.b();
        if (sharedPreferences != null && sharedPreferences.contains(b2)) {
            try {
                sharedPreferences.getBoolean(b2, false);
                sharedPreferences.edit().remove(b2).putInt(b2, CounterConfiguration.a.UNDEFINED.d).apply();
            } catch (ClassCastException unused) {
            }
        }
        jf.a(this.f6173b, this.y.b(), -1);
        jf.a(this.f6173b, this.u.b(), 0);
        jf.a(this.f6173b, this.w.b(), 0);
    }

    public long a(long j2) {
        return a(this.x.b(), j2);
    }

    public long b(long j2) {
        return a(this.D.b(), j2);
    }

    public long c(long j2) {
        return a(this.E.b(), j2);
    }

    public long d(long j2) {
        return a(this.v.b(), j2);
    }

    public long e(long j2) {
        return a(this.A.b(), j2);
    }

    public long f(long j2) {
        return a(this.w.b(), j2);
    }

    private long a(String str, long j2) {
        return this.f6173b.getLong(str, j2);
    }

    public long g(long j2) {
        return a(this.C.b(), j2);
    }

    public b.a a() {
        synchronized (this) {
            if (!this.f6173b.contains(this.I.b()) || !this.f6173b.contains(this.J.b())) {
                return null;
            }
            b.a aVar = new b.a(this.f6173b.getString(this.I.b(), "{}"), this.f6173b.getLong(this.J.b(), 0));
            return aVar;
        }
    }

    public long h(long j2) {
        return a(this.u.b(), j2);
    }

    public long i(long j2) {
        return a(this.B.b(), j2);
    }

    public Boolean a(boolean z2) {
        return Boolean.valueOf(this.f6173b.getBoolean(this.z.b(), z2));
    }

    public CounterConfiguration.a b() {
        return CounterConfiguration.a.a(this.f6173b.getInt(this.F.b(), CounterConfiguration.a.UNDEFINED.d));
    }

    public String a(String str) {
        return this.f6173b.getString(this.G.b(), str);
    }

    public String b(String str) {
        return this.f6173b.getString(this.H.b(), str);
    }

    public iz a(b.a aVar) {
        synchronized (this) {
            a(this.I.b(), aVar.f5735a);
            a(this.J.b(), Long.valueOf(aVar.f5736b));
        }
        return this;
    }

    public iz c() {
        return (iz) h(this.H.b());
    }

    public iz d() {
        return (iz) h(this.F.b());
    }

    public boolean e() {
        return this.f6173b.contains(this.x.b()) || this.f6173b.contains(this.y.b()) || this.f6173b.contains(this.z.b()) || this.f6173b.contains(this.u.b()) || this.f6173b.contains(this.v.b()) || this.f6173b.contains(this.w.b()) || this.f6173b.contains(this.D.b()) || this.f6173b.contains(this.B.b()) || this.f6173b.contains(this.A.b()) || this.f6173b.contains(this.C.b()) || this.f6173b.contains(this.I.b()) || this.f6173b.contains(this.F.b()) || this.f6173b.contains(this.G.b()) || this.f6173b.contains(this.H.b()) || this.f6173b.contains(this.E.b());
    }

    public void g() {
        this.f6173b.edit().remove(this.D.b()).remove(this.C.b()).remove(this.A.b()).remove(this.B.b()).remove(this.x.b()).remove(this.w.b()).remove(this.v.b()).remove(this.u.b()).remove(this.z.b()).remove(this.y.b()).remove(this.G.b()).remove(this.F.b()).remove(this.I.b()).remove(this.J.b()).remove(this.H.b()).remove(this.E.b()).apply();
    }
}
