package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.e;

public class gl<T, P extends e> implements gk<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f6063a;

    /* renamed from: b  reason: collision with root package name */
    private final fl f6064b;
    private final gj<P> c;
    private final gr<T, P> d;

    public gl(String str, fl flVar, gj<P> gjVar, gr<T, P> grVar) {
        this.f6063a = str;
        this.f6064b = flVar;
        this.c = gjVar;
        this.d = grVar;
    }

    public void a(T t) {
        this.f6064b.a(this.f6063a, this.c.a(this.d.a(t)));
    }

    public T a() {
        try {
            byte[] a2 = this.f6064b.a(this.f6063a);
            if (a2 == null) {
                return this.d.a((e) this.c.b());
            }
            return this.d.a((e) this.c.b(a2));
        } catch (Exception unused) {
            return this.d.a((e) this.c.b());
        }
    }
}
