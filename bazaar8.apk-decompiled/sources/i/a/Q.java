package i.a;

import h.c.b;
import h.c.b.a.c;
import h.c.e;
import h.f.b.j;
import h.h;
import i.a.c.z;

/* compiled from: Dispatched.kt */
public final class Q<T> extends U<T> implements c, b<T> {

    /* renamed from: d  reason: collision with root package name */
    public Object f14653d = T.f14659a;

    /* renamed from: e  reason: collision with root package name */
    public final c f14654e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f14655f;

    /* renamed from: g  reason: collision with root package name */
    public final C f14656g;

    /* renamed from: h  reason: collision with root package name */
    public final b<T> f14657h;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Q(C c2, b<? super T> bVar) {
        super(0);
        j.b(c2, "dispatcher");
        j.b(bVar, "continuation");
        this.f14656g = c2;
        this.f14657h = bVar;
        this.f14654e = (c) (!(this.f14657h instanceof c) ? null : this.f14657h);
        this.f14655f = z.a(b());
    }

    public e b() {
        return this.f14657h.b();
    }

    public void b(Object obj) {
        e b2;
        Object b3;
        e b4 = this.f14657h.b();
        Object a2 = C1130w.a(obj);
        if (this.f14656g.b(b4)) {
            this.f14653d = a2;
            this.f14660c = 0;
            this.f14656g.a(b4, this);
            return;
        }
        C1089aa b5 = Ma.f14650b.b();
        if (b5.y()) {
            this.f14653d = a2;
            this.f14660c = 0;
            b5.a((U<?>) this);
            return;
        }
        b5.c(true);
        try {
            b2 = b();
            b3 = z.b(b2, this.f14655f);
            this.f14657h.b(obj);
            h hVar = h.f14579a;
            z.a(b2, b3);
            do {
            } while (b5.B());
        } catch (Throwable th) {
            try {
                a(th, (Throwable) null);
            } catch (Throwable th2) {
                b5.a(true);
                throw th2;
            }
        }
        b5.a(true);
    }

    public c c() {
        return this.f14654e;
    }

    public StackTraceElement d() {
        return null;
    }

    public b<T> e() {
        return this;
    }

    public Object f() {
        Object obj = this.f14653d;
        if (K.a()) {
            if (!(obj != T.f14659a)) {
                throw new AssertionError();
            }
        }
        this.f14653d = T.f14659a;
        return obj;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f14656g + ", " + L.a((b<?>) this.f14657h) + ']';
    }
}
