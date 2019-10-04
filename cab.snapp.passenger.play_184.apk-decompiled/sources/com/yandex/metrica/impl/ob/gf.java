package com.yandex.metrica.impl.ob;

import android.util.Base64;
import com.yandex.metrica.CounterConfiguration;

public class gf extends ge {

    /* renamed from: a  reason: collision with root package name */
    static final je f6059a = new je("LOCATION_TRACKING_ENABLED");

    /* renamed from: b  reason: collision with root package name */
    static final je f6060b = new je("COLLECT_INSTALLED_APPS");
    static final je c = new je("REFERRER");
    static final je d = new je("REFERRER_FROM_PLAY_SERVICES");
    static final je e = new je("REFERRER_HANDLED");
    static final je f = new je("REFERRER_HOLDER_STATE");
    static final je g = new je("PREF_KEY_OFFSET");
    static final je h = new je("UNCHECKED_TIME");
    static final je i = new je("L_REQ_NUM");
    static final je j = new je("L_ID");
    static final je k = new je("LBS_ID");
    static final je l = new je("STATISTICS_RESTRICTED_IN_MAIN");
    private static final je m = new je("LAST_MIGRATION_VERSION");

    public gf(fr frVar) {
        super(frVar);
    }

    public CounterConfiguration.a a() {
        return CounterConfiguration.a.a(Long.valueOf(b(f6060b.b(), (long) CounterConfiguration.a.UNDEFINED.d)).intValue());
    }

    public String b() {
        return c(c.b(), null);
    }

    public kw c() {
        return b(c(d.b(), null));
    }

    private static kw b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return kw.a(Base64.encode(str.getBytes(), 0));
        } catch (d unused) {
            return null;
        }
    }

    public boolean d() {
        return b(e.b(), false);
    }

    public gf a(CounterConfiguration.a aVar) {
        return (gf) a(f6060b.b(), (long) aVar.d);
    }

    public gf a(String str) {
        return (gf) b(c.b(), str);
    }

    public gf a(kw kwVar) {
        String str;
        String b2 = d.b();
        if (kwVar == null) {
            str = null;
        } else {
            str = new String(Base64.encode(kwVar.a(), 0));
        }
        return (gf) b(b2, str);
    }

    public gf e() {
        return (gf) a(e.b(), true);
    }

    public gf f() {
        return (gf) p(c.b()).p(d.b());
    }

    public int a(int i2) {
        return b(m.b(), i2);
    }

    public gf b(int i2) {
        return (gf) a(m.b(), i2);
    }

    public void a(boolean z) {
        a(f6059a.b(), z).i();
    }

    public boolean g() {
        return b(f6059a.b(), false);
    }

    public long c(int i2) {
        return b(g.b(), (long) i2);
    }

    public gf a(long j2) {
        return (gf) a(g.b(), j2);
    }

    public long b(long j2) {
        return b(i.b(), j2);
    }

    public gf c(long j2) {
        return (gf) a(i.b(), j2);
    }

    public long d(long j2) {
        return b(j.b(), j2);
    }

    public gf e(long j2) {
        return (gf) a(j.b(), j2);
    }

    public long f(long j2) {
        return b(k.b(), j2);
    }

    public gf g(long j2) {
        return (gf) a(k.b(), j2);
    }

    public boolean b(boolean z) {
        return b(h.b(), z);
    }

    public gf c(boolean z) {
        return (gf) a(h.b(), z);
    }

    public int d(int i2) {
        return b(f.b(), i2);
    }

    public gf e(int i2) {
        return (gf) a(f.b(), i2);
    }

    public Boolean j() {
        if (r(l.b())) {
            return Boolean.valueOf(b(l.b(), true));
        }
        return null;
    }

    public gf d(boolean z) {
        return (gf) a(l.b(), z);
    }
}
