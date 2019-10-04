package com.yandex.metrica.impl.ob;

import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.b;

public class gd extends ge {

    /* renamed from: a  reason: collision with root package name */
    private static final je f6055a = new je("COLLECT_INSTALLED_APPS");

    /* renamed from: b  reason: collision with root package name */
    private static final je f6056b = new je("IDENTITY_SEND_TIME");
    private static final je c = new je("PERMISSIONS_CHECK_TIME");
    private static final je d = new je("USER_INFO");
    private static final je e = new je("PROFILE_ID");
    private static final je f = new je("APP_ENVIRONMENT");
    private static final je g = new je("APP_ENVIRONMENT_REVISION");
    private static final je h = new je("LAST_MIGRATION_VERSION");
    private static final je i = new je("LAST_APP_VERSION_WITH_FEATURES");
    private static final je j = new je("APPLICATION_FEATURES");
    private static final je k = new je("CURRENT_SESSION_ID");
    private static final je l = new je("ATTRIBUTION_ID");
    private static final je m = new je("LAST_STAT_SENDING_DISABLED_REPORTING_TIMESTAMP");

    public gd(fr frVar) {
        super(frVar);
    }

    public long a(long j2) {
        return b(f6056b.b(), j2);
    }

    public long b(long j2) {
        return b(c.b(), j2);
    }

    public int a(int i2) {
        return b(i.b(), i2);
    }

    public b.a a() {
        b.a aVar;
        synchronized (this) {
            aVar = new b.a(c(f.b(), "{}"), b(g.b(), 0));
        }
        return aVar;
    }

    public String b() {
        return c(j.b(), "");
    }

    public CounterConfiguration.a c() {
        return CounterConfiguration.a.a(Long.valueOf(b(f6055a.b(), (long) CounterConfiguration.a.UNDEFINED.d)).intValue());
    }

    public String a(String str) {
        return c(d.b(), str);
    }

    public gd a(b.a aVar) {
        synchronized (this) {
            b(f.b(), aVar.f5735a);
            a(g.b(), aVar.f5736b);
        }
        return this;
    }

    public gd c(long j2) {
        return (gd) a(f6056b.b(), j2);
    }

    public gd d(long j2) {
        return (gd) a(c.b(), j2);
    }

    public gd a(CounterConfiguration.a aVar) {
        return (gd) a(f6055a.b(), (long) aVar.d);
    }

    public gd b(String str) {
        return (gd) b(d.b(), str);
    }

    public long d() {
        return b(h.b(), 0);
    }

    public gd e(long j2) {
        return (gd) a(h.b(), j2);
    }

    public gd b(int i2) {
        return (gd) a(i.b(), i2);
    }

    public gd c(String str) {
        return (gd) b(j.b(), str);
    }

    public gd a(String str, String str2) {
        return (gd) b(new je("SESSION_", str).b(), str2);
    }

    public String d(String str) {
        return c(new je("SESSION_", str).b(), "");
    }

    public String e() {
        return q(e.b());
    }

    public gd e(String str) {
        return (gd) b(e.b(), str);
    }

    public gd c(int i2) {
        return (gd) a(l.b(), i2);
    }

    public int d(int i2) {
        return b(l.b(), i2);
    }

    public long f(long j2) {
        return b(k.b(), j2);
    }

    public gd g(long j2) {
        return (gd) a(k.b(), j2);
    }

    public long h(long j2) {
        return b(m.b(), j2);
    }

    public gd i(long j2) {
        return (gd) a(m.b(), j2);
    }
}
