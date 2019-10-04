package com.yandex.metrica.impl.ob;

public class ow<T> implements pa<T> {

    /* renamed from: a  reason: collision with root package name */
    private final pa<T> f6491a;

    public ow(pa<T> paVar) {
        this.f6491a = paVar;
    }

    public oy a(T t) {
        oy a2 = this.f6491a.a(t);
        if (a2.a()) {
            return a2;
        }
        throw new ox(a2.b());
    }
}
