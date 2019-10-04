package com.yandex.metrica.impl;

import android.content.Context;
import com.yandex.metrica.impl.ob.fq;
import com.yandex.metrica.impl.ob.gf;
import com.yandex.metrica.impl.ob.ha;
import com.yandex.metrica.impl.ob.ki;
import com.yandex.metrica.impl.ob.kv;
import com.yandex.metrica.impl.ob.lk;

public final class v {

    /* renamed from: a  reason: collision with root package name */
    private static volatile v f6525a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f6526b;
    private kv c;
    private lk d;
    private ki e;
    private bs f;
    private a g;

    public static synchronized void a(Context context) {
        synchronized (v.class) {
            if (f6525a == null) {
                f6525a = new v(context.getApplicationContext());
            }
        }
    }

    public static v a() {
        return f6525a;
    }

    private v(Context context) {
        this.f6526b = context;
    }

    public final Context b() {
        return this.f6526b;
    }

    public final synchronized kv c() {
        if (this.c == null) {
            this.c = new kv(this.f6526b);
        }
        return this.c;
    }

    public final synchronized lk d() {
        if (this.d == null) {
            this.d = new lk(this.f6526b);
        }
        return this.d;
    }

    public final synchronized ki e() {
        if (this.e == null) {
            this.e = new ki(this.f6526b, ha.a.a(ki.a.class).a(this.f6526b), f6525a.f(), d());
        }
        return this.e;
    }

    public final synchronized bs f() {
        if (this.f == null) {
            this.f = new bs(new gf(fq.a(this.f6526b).c()));
        }
        return this.f;
    }

    public final synchronized a g() {
        if (this.g == null) {
            this.g = new a();
        }
        return this.g;
    }
}
