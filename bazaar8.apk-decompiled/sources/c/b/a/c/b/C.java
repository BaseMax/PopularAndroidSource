package c.b.a.c.b;

import b.i.j.e;
import c.b.a.i.a.d;
import c.b.a.i.a.g;
import c.b.a.i.i;

/* compiled from: LockedResource */
public final class C<Z> implements D<Z>, d.c {

    /* renamed from: a  reason: collision with root package name */
    public static final e<C<?>> f3811a = d.b(20, new B());

    /* renamed from: b  reason: collision with root package name */
    public final g f3812b = g.a();

    /* renamed from: c  reason: collision with root package name */
    public D<Z> f3813c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3814d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3815e;

    public static <Z> C<Z> b(D<Z> d2) {
        C<Z> a2 = f3811a.a();
        i.a(a2);
        C<Z> c2 = a2;
        c2.a(d2);
        return c2;
    }

    public final void a(D<Z> d2) {
        this.f3815e = false;
        this.f3814d = true;
        this.f3813c = d2;
    }

    public Class<Z> c() {
        return this.f3813c.c();
    }

    public final void d() {
        this.f3813c = null;
        f3811a.a(this);
    }

    public synchronized void e() {
        this.f3812b.b();
        if (this.f3814d) {
            this.f3814d = false;
            if (this.f3815e) {
                a();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    public g f() {
        return this.f3812b;
    }

    public Z get() {
        return this.f3813c.get();
    }

    public int b() {
        return this.f3813c.b();
    }

    public synchronized void a() {
        this.f3812b.b();
        this.f3815e = true;
        if (!this.f3814d) {
            this.f3813c.a();
            d();
        }
    }
}
