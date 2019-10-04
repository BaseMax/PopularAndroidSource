package com.yandex.metrica.impl.ob;

import android.content.Context;

@Deprecated
public class jc extends ix {
    static final je c = new je("PREF_KEY_DEVICE_ID_");
    static final je d = new je("PREF_KEY_UID_");
    static final je e = new je("STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_");
    static final je f = new je("PREF_KEY_PINNING_UPDATE_URL");
    private static final je g = new je("PREF_KEY_HOST_URL_");
    private static final je h = new je("PREF_KEY_REPORT_URL_");
    private static final je i = new je("PREF_KEY_GET_AD_URL");
    private static final je j = new je("PREF_KEY_REPORT_AD_URL");
    private static final je k = new je("PREF_KEY_STARTUP_OBTAIN_TIME_");
    private static final je l = new je("PREF_KEY_STARTUP_ENCODED_CLIDS_");
    private static final je m = new je("PREF_KEY_DISTRIBUTION_REFERRER_");
    private static final je n = new je("PREF_KEY_EASY_COLLECTING_ENABLED_");
    private je o;
    private je p;
    private je q;
    private je r;
    private je s;
    private je t;
    private je u;
    private je v;
    private je w;
    private je x;

    /* access modifiers changed from: protected */
    public String f() {
        return "_startupserviceinfopreferences";
    }

    public jc(Context context) {
        this(context, null);
    }

    public jc(Context context, String str) {
        super(context, str);
        this.o = new je(c.a());
        this.p = new je(d.a(), i());
        this.q = new je(g.a(), i());
        this.r = new je(h.a(), i());
        this.s = new je(i.a(), i());
        this.t = new je(j.a(), i());
        this.u = new je(k.a(), i());
        this.v = new je(l.a(), i());
        this.w = new je(m.a(), i());
        this.x = new je(n.a(), i());
    }

    public long a(long j2) {
        return this.f6173b.getLong(this.u.b(), j2);
    }

    public String a(String str) {
        return this.f6173b.getString(this.o.b(), str);
    }

    public String b(String str) {
        return this.f6173b.getString(this.p.b(), str);
    }

    public String c(String str) {
        return this.f6173b.getString(this.q.b(), str);
    }

    public String d(String str) {
        return this.f6173b.getString(this.v.b(), str);
    }

    public String e(String str) {
        return this.f6173b.getString(this.r.b(), str);
    }

    public String f(String str) {
        return this.f6173b.getString(this.s.b(), str);
    }

    public String g(String str) {
        return this.f6173b.getString(this.t.b(), str);
    }

    public String a() {
        return this.f6173b.getString(this.w.a(), null);
    }

    public jc i(String str) {
        return (jc) a(this.p.b(), str);
    }

    public jc j(String str) {
        return (jc) a(this.o.b(), str);
    }

    public static void a(Context context) {
        jf.a(context, "_startupserviceinfopreferences").edit().remove(c.a()).apply();
    }

    public void b() {
        h(this.o.b()).h(this.p.b()).h(this.q.b()).h(this.r.b()).h(this.s.b()).h(this.t.b()).h(this.u.b()).h(this.x.b()).h(this.v.b()).h(this.w.a()).h(e.a()).h(f.a()).j();
    }
}
