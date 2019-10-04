package i.a;

import h.c.b;
import h.c.b.a.c;
import h.c.e;
import h.f.b.j;
import h.h;
import i.a.C1125ra;
import i.a.c.u;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.CompletionHandlerException;

/* renamed from: i.a.k  reason: case insensitive filesystem */
/* compiled from: CancellableContinuationImpl.kt */
public class C1111k<T> extends U<T> implements C1109j<T>, c {

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14844d = AtomicIntegerFieldUpdater.newUpdater(C1111k.class, "_decision");

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14845e = AtomicReferenceFieldUpdater.newUpdater(C1111k.class, Object.class, "_state");
    public volatile int _decision = 0;
    public volatile Object _state = C1090b.f14678a;

    /* renamed from: f  reason: collision with root package name */
    public final e f14846f = this.f14847g.b();

    /* renamed from: g  reason: collision with root package name */
    public final b<T> f14847g;
    public volatile X parentHandle;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1111k(b<? super T> bVar, int i2) {
        super(i2);
        j.b(bVar, "delegate");
        this.f14847g = bVar;
    }

    public void a(Object obj, Throwable th) {
        j.b(th, "cause");
        if (obj instanceof C1132y) {
            try {
                ((C1132y) obj).f14880b.a(th);
            } catch (Throwable th2) {
                e b2 = b();
                E.a(b2, (Throwable) new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
            }
        }
    }

    public e b() {
        return this.f14846f;
    }

    public c c() {
        b<T> bVar = this.f14847g;
        if (!(bVar instanceof c)) {
            bVar = null;
        }
        return (c) bVar;
    }

    public <T> T d(Object obj) {
        if (obj instanceof C1131x) {
            return ((C1131x) obj).f14870b;
        }
        return obj instanceof C1132y ? ((C1132y) obj).f14879a : obj;
    }

    public StackTraceElement d() {
        return null;
    }

    public final b<T> e() {
        return this.f14847g;
    }

    public Object f() {
        return i();
    }

    public final void g() {
        X x = this.parentHandle;
        if (x != null) {
            x.f();
            this.parentHandle = Ea.f14634a;
        }
    }

    public final Object h() {
        j();
        if (n()) {
            return h.c.a.b.a();
        }
        Object i2 = i();
        if (!(i2 instanceof C1129v)) {
            if (this.f14660c == 1) {
                C1125ra raVar = (C1125ra) b().get(C1125ra.f14859c);
                if (raVar != null && !raVar.s()) {
                    CancellationException t = raVar.t();
                    a(i2, (Throwable) t);
                    throw u.a(t, (b<?>) this);
                }
            }
            return d(i2);
        }
        throw u.a(((C1129v) i2).f14867b, (b<?>) this);
    }

    public final Object i() {
        return this._state;
    }

    public final void j() {
        if (!k()) {
            C1125ra raVar = (C1125ra) this.f14847g.b().get(C1125ra.f14859c);
            if (raVar != null) {
                raVar.start();
                X a2 = C1125ra.a.a(raVar, true, false, new C1117n(raVar, this), 2, null);
                this.parentHandle = a2;
                if (k()) {
                    a2.f();
                    this.parentHandle = Ea.f14634a;
                }
            }
        }
    }

    public boolean k() {
        return !(i() instanceof Fa);
    }

    public String l() {
        return "CancellableContinuation";
    }

    public final boolean m() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f14844d.compareAndSet(this, 0, 2));
        return true;
    }

    public final boolean n() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f14844d.compareAndSet(this, 0, 1));
        return true;
    }

    public String toString() {
        return l() + '(' + L.a((b<?>) this.f14847g) + "){" + i() + "}@" + L.b(this);
    }

    public void b(Object obj) {
        a(C1130w.a(obj), this.f14660c);
    }

    public void c(Object obj) {
        j.b(obj, "token");
        a(this.f14660c);
    }

    public final void e(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    public final C1105h b(h.f.a.b<? super Throwable, h> bVar) {
        return bVar instanceof C1105h ? (C1105h) bVar : new C1120oa(bVar);
    }

    public boolean b(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof Fa)) {
                return false;
            }
            z = obj instanceof C1105h;
        } while (!f14845e.compareAndSet(this, obj, new C1115m(this, th, z)));
        if (z) {
            try {
                ((C1105h) obj).a(th);
            } catch (Throwable th2) {
                e b2 = b();
                E.a(b2, (Throwable) new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
            }
        }
        g();
        a(0);
        return true;
    }

    public Throwable a(C1125ra raVar) {
        j.b(raVar, "parent");
        return raVar.t();
    }

    public final C1115m a(Throwable th, int i2) {
        j.b(th, "exception");
        return a((Object) new C1129v(th, false, 2, null), i2);
    }

    public final void a(h.f.a.b<? super Throwable, h> bVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + bVar + ", already has " + obj).toString());
    }

    public final void a(int i2) {
        if (!m()) {
            T.a(this, i2);
        }
    }

    public void a(h.f.a.b<? super Throwable, h> bVar) {
        Object obj;
        j.b(bVar, "handler");
        Throwable th = null;
        C1105h hVar = null;
        do {
            obj = this._state;
            if (obj instanceof C1090b) {
                if (hVar == null) {
                    hVar = b(bVar);
                }
            } else if (obj instanceof C1105h) {
                a(bVar, obj);
                throw null;
            } else if (!(obj instanceof C1115m)) {
                return;
            } else {
                if (((C1115m) obj).b()) {
                    try {
                        if (!(obj instanceof C1129v)) {
                            obj = null;
                        }
                        C1129v vVar = (C1129v) obj;
                        if (vVar != null) {
                            th = vVar.f14867b;
                        }
                        bVar.a(th);
                    } catch (Throwable th2) {
                        E.a(b(), (Throwable) new CompletionHandlerException("Exception in cancellation handler for " + this, th2));
                    }
                    return;
                }
                a(bVar, obj);
                throw null;
            }
        } while (!f14845e.compareAndSet(this, obj, hVar));
    }

    public final C1115m a(Object obj, int i2) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof Fa)) {
                if (obj2 instanceof C1115m) {
                    C1115m mVar = (C1115m) obj2;
                    if (mVar.c()) {
                        return mVar;
                    }
                }
                e(obj);
                throw null;
            }
        } while (!f14845e.compareAndSet(this, obj2, obj));
        g();
        a(i2);
        return null;
    }

    public Object a(T t, Object obj) {
        Object obj2;
        T t2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof Fa)) {
                Fa fa = null;
                if (obj2 instanceof C1131x) {
                    C1131x xVar = (C1131x) obj2;
                    if (xVar.f14869a == obj) {
                        if (K.a()) {
                            if (!(xVar.f14870b == t)) {
                                throw new AssertionError();
                            }
                        }
                        fa = xVar.f14871c;
                    }
                }
                return fa;
            } else if (obj == null) {
                t2 = t;
            } else {
                t2 = new C1131x(obj, t, (Fa) obj2);
            }
        } while (!f14845e.compareAndSet(this, obj2, t2));
        g();
        return obj2;
    }

    public Object a(Throwable th) {
        Object obj;
        j.b(th, "exception");
        do {
            obj = this._state;
            if (!(obj instanceof Fa)) {
                return null;
            }
        } while (!f14845e.compareAndSet(this, obj, new C1129v(th, false, 2, null)));
        g();
        return obj;
    }
}
