package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.km;
import java.util.concurrent.Executor;

public class kk<S extends km> {

    /* renamed from: a  reason: collision with root package name */
    private final kp f6242a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f6243b;
    private final kn<S> c;
    private final kj d = new kj(this.f6242a);

    public kk(kp kpVar, Executor executor, kn<S> knVar) {
        this.f6242a = kpVar;
        this.f6243b = executor;
        this.c = knVar;
    }

    public Executor a() {
        return this.f6243b;
    }

    public kn<S> b() {
        return this.c;
    }

    public kp c() {
        return this.f6242a;
    }

    public kj d() {
        return this.d;
    }
}
