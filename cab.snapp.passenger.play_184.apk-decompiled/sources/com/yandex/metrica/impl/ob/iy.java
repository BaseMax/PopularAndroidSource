package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Map;

@Deprecated
public class iy extends ix {
    private static final je c = new je("UUID");
    private static final je d = new je("DEVICEID");
    private static final je e = new je("DEVICEID_2");
    private static final je f = new je("DEVICEID_3");
    private static final je g = new je("AD_URL_GET");
    private static final je h = new je("AD_URL_REPORT");
    private static final je i = new je("HOST_URL");
    private static final je j = new je("SERVER_TIME_OFFSET");
    private static final je k = new je("STARTUP_REQUEST_TIME");
    private static final je l = new je("CLIDS");
    private je m = new je(c.a());
    private je n = new je(d.a());
    private je o = new je(e.a());
    private je p = new je(f.a());
    private je q = new je(g.a());
    private je r = new je(h.a());
    private je s;
    private je t;
    private je u;

    /* access modifiers changed from: protected */
    public String f() {
        return "_startupinfopreferences";
    }

    public iy(Context context) {
        super(context, null);
        new je(i.a());
        this.s = new je(j.a());
        this.t = new je(k.a());
        this.u = new je(l.a());
    }

    public String a(String str) {
        return this.f6173b.getString(this.m.b(), str);
    }

    public String b(String str) {
        return this.f6173b.getString(this.p.b(), str);
    }

    public String a() {
        return this.f6173b.getString(this.o.b(), this.f6173b.getString(this.n.b(), ""));
    }

    public String c(String str) {
        return this.f6173b.getString(this.q.b(), str);
    }

    public String d(String str) {
        return this.f6173b.getString(this.r.b(), str);
    }

    public long a(long j2) {
        return this.f6173b.getLong(this.s.a(), j2);
    }

    public long b(long j2) {
        return this.f6173b.getLong(this.t.b(), j2);
    }

    public String e(String str) {
        return this.f6173b.getString(this.u.b(), str);
    }

    public iy b() {
        return (iy) h();
    }

    public Map<String, ?> c() {
        return this.f6173b.getAll();
    }
}
