package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.kz.d;

public abstract class lb<T extends kz, A, L extends kz.d<T, kz.c<A>>> {

    /* renamed from: a  reason: collision with root package name */
    private T f6359a;

    /* renamed from: b  reason: collision with root package name */
    private L f6360b;
    private kz.c<A> c;
    private a<A> d;

    public interface a<A> {
        A a(A a2, t tVar);
    }

    public lb(L l, a<A> aVar, ma maVar, t tVar) {
        this.f6360b = l;
        this.d = aVar;
        h.a().a(this, p.class, l.a(new k<p>() {
            public /* bridge */ /* synthetic */ void a(j jVar) {
                a();
            }

            public void a() {
                lb.this.b();
            }
        }).a());
        a(new kz.c(maVar, this.d.a(null, tVar)));
    }

    public synchronized void b() {
        this.f6359a = null;
    }

    /* access modifiers changed from: protected */
    public synchronized void a(kz.c<A> cVar) {
        this.c = cVar;
    }

    public final A b(t tVar) {
        return this.d.a(this.c.f6353b, tVar);
    }

    public synchronized void a(ma maVar) {
        a(new kz.c(maVar, d()));
        b();
    }

    public synchronized ma c() {
        return this.c.f6352a;
    }

    public synchronized A d() {
        return this.c.f6353b;
    }

    public synchronized T e() {
        if (this.f6359a == null) {
            this.f6359a = this.f6360b.a(this.c);
        }
        return this.f6359a;
    }
}
