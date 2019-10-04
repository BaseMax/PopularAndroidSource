package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.ne;
import org.a.b;

public class em implements el {

    /* renamed from: a  reason: collision with root package name */
    protected gd f5966a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5967b;
    private ne.a c;

    public em(gd gdVar, String str) {
        this.f5966a = gdVar;
        this.f5967b = str;
        ne.a aVar = new ne.a();
        try {
            String d = this.f5966a.d(this.f5967b);
            if (!TextUtils.isEmpty(d)) {
                aVar = new ne.a(d);
            }
        } catch (b unused) {
        }
        this.c = aVar;
    }

    public Long b() {
        return this.c.c("SESSION_ID");
    }

    public em d(long j) {
        a("SESSION_ID", Long.valueOf(j));
        return this;
    }

    public Long c() {
        return this.c.c("SESSION_INIT_TIME");
    }

    public em e(long j) {
        a("SESSION_INIT_TIME", Long.valueOf(j));
        return this;
    }

    public Long d() {
        return this.c.c("SESSION_COUNTER_ID");
    }

    public em a(long j) {
        a("SESSION_COUNTER_ID", Long.valueOf(j));
        return this;
    }

    public Long e() {
        return this.c.c("SESSION_SLEEP_START");
    }

    public em b(long j) {
        a("SESSION_SLEEP_START", Long.valueOf(j));
        return this;
    }

    public Long f() {
        return this.c.c("SESSION_LAST_EVENT_OFFSET");
    }

    public em c(long j) {
        a("SESSION_LAST_EVENT_OFFSET", Long.valueOf(j));
        return this;
    }

    public Boolean g() {
        return this.c.d("SESSION_IS_ALIVE_REPORT_NEEDED");
    }

    public em a(boolean z) {
        a("SESSION_IS_ALIVE_REPORT_NEEDED", Boolean.valueOf(z));
        return this;
    }

    public void h() {
        this.f5966a.a(this.f5967b, this.c.toString());
        this.f5966a.i();
    }

    public boolean i() {
        return this.c.length() > 0;
    }

    private void a(String str, Object obj) {
        try {
            this.c.put(str, obj);
        } catch (b unused) {
        }
    }

    public void a() {
        this.c = new ne.a();
        h();
    }
}
