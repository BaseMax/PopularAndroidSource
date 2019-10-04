package i.a.b;

import h.a.h;
import h.a.i;
import h.f.b.f;
import h.f.b.j;
import h.f.b.o;
import i.a.K;
import i.a.c.v;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.TypeCastException;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* compiled from: ConflatedBroadcastChannel.kt */
public final class p<E> implements h<E> {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14717a = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_state");

    /* renamed from: b  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14718b = AtomicIntegerFieldUpdater.newUpdater(p.class, "_updating");

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14719c = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "onCloseHandler");

    /* renamed from: d  reason: collision with root package name */
    public static final a f14720d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final v f14721e = new v("UNDEFINED");

    /* renamed from: f  reason: collision with root package name */
    public static final c<Object> f14722f = new c<>(f14721e, null);

    /* renamed from: g  reason: collision with root package name */
    public static final b f14723g = new b(null);
    public volatile Object _state;
    public volatile int _updating;
    public volatile Object onCloseHandler;

    /* compiled from: ConflatedBroadcastChannel.kt */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f14724a;

        public a(Throwable th) {
            this.f14724a = th;
        }

        public final Throwable a() {
            Throwable th = this.f14724a;
            return th != null ? th : new ClosedSendChannelException("Channel was closed");
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    private static final class b {
        public b() {
        }

        public /* synthetic */ b(f fVar) {
            this();
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    private static final class c<E> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f14725a;

        /* renamed from: b  reason: collision with root package name */
        public final d<E>[] f14726b;

        public c(Object obj, d<E>[] dVarArr) {
            this.f14725a = obj;
            this.f14726b = dVarArr;
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    private static final class d<E> extends q<E> implements t<E> {

        /* renamed from: c  reason: collision with root package name */
        public final p<E> f14727c;

        public d(p<E> pVar) {
            j.b(pVar, "broadcastChannel");
            this.f14727c = pVar;
        }

        public Object b(E e2) {
            return super.b(e2);
        }

        public boolean c(Throwable th) {
            boolean a2 = a(th);
            if (a2) {
                this.f14727c.a(this);
            }
            return a2;
        }
    }

    public p() {
        this._state = f14722f;
        this._updating = 0;
        this.onCloseHandler = null;
    }

    public t<E> b() {
        Object obj;
        c cVar;
        Object obj2;
        d dVar = new d(this);
        do {
            obj = this._state;
            if (obj instanceof a) {
                dVar.a(((a) obj).f14724a);
                return dVar;
            } else if (obj instanceof c) {
                cVar = (c) obj;
                Object obj3 = cVar.f14725a;
                if (obj3 != f14721e) {
                    dVar.b(obj3);
                }
                obj2 = cVar.f14725a;
                if (obj != null) {
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                }
            } else {
                throw new IllegalStateException(("Invalid state " + obj).toString());
            }
        } while (!f14717a.compareAndSet(this, obj, new c(obj2, a(cVar.f14726b, dVar))));
        return dVar;
    }

    public final E c() {
        Object obj = this._state;
        if (obj instanceof a) {
            return null;
        }
        if (obj instanceof c) {
            E e2 = f14721e;
            E e3 = ((c) obj).f14725a;
            if (e3 == e2) {
                return null;
            }
            return e3;
        }
        throw new IllegalStateException(("Invalid state " + obj).toString());
    }

    public boolean a() {
        return this._state instanceof a;
    }

    public final d<E>[] a(d<E>[] dVarArr, d<E> dVar) {
        if (dVarArr != null) {
            return (d[]) h.a((T[]) dVarArr, dVar);
        }
        d<E>[] dVarArr2 = new d[1];
        for (int i2 = 0; i2 < 1; i2++) {
            dVarArr2[i2] = dVar;
        }
        return dVarArr2;
    }

    public p(E e2) {
        this();
        f14717a.lazySet(this, new c(e2, null));
    }

    public Object a(E e2, h.c.b<? super h.h> bVar) {
        a a2 = a(e2);
        if (a2 == null) {
            return h.h.f14579a;
        }
        throw a2.a();
    }

    public final a a(E e2) {
        Object obj;
        if (!f14718b.compareAndSet(this, 0, 1)) {
            return null;
        }
        do {
            try {
                obj = this._state;
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    this._updating = 0;
                    return aVar;
                } else if (!(obj instanceof c)) {
                    throw new IllegalStateException(("Invalid state " + obj).toString());
                } else if (obj != null) {
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                }
            } finally {
                this._updating = 0;
            }
        } while (!f14717a.compareAndSet(this, obj, new c(e2, ((c) obj).f14726b)));
        d<E>[] dVarArr = ((c) obj).f14726b;
        if (dVarArr != null) {
            for (d<E> b2 : dVarArr) {
                b2.b(e2);
            }
        }
        return null;
    }

    public final d<E>[] b(d<E>[] dVarArr, d<E> dVar) {
        int length = dVarArr.length;
        int c2 = i.c((T[]) dVarArr, dVar);
        if (K.a()) {
            if (!(c2 >= 0)) {
                throw new AssertionError();
            }
        }
        if (length == 1) {
            return null;
        }
        d<E>[] dVarArr2 = new d[(length - 1)];
        d<E>[] dVarArr3 = dVarArr;
        d<E>[] dVarArr4 = dVarArr2;
        h.a(dVarArr3, dVarArr4, 0, 0, c2, 6, null);
        h.a(dVarArr3, dVarArr4, c2, c2 + 1, 0, 8, null);
        return dVarArr2;
    }

    public final void b(Throwable th) {
        Object obj = this.onCloseHandler;
        if (obj != null) {
            Object obj2 = c.f14697i;
            if (obj != obj2 && f14719c.compareAndSet(this, obj, obj2)) {
                o.a(obj, 1);
                ((h.f.a.b) obj).a(th);
            }
        }
    }

    public final void a(d<E> dVar) {
        Object obj;
        Object obj2;
        d<E>[] dVarArr;
        do {
            obj = this._state;
            if (!(obj instanceof a)) {
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    obj2 = cVar.f14725a;
                    if (obj != null) {
                        dVarArr = cVar.f14726b;
                        if (dVarArr != null) {
                        } else {
                            j.a();
                            throw null;
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                    }
                } else {
                    throw new IllegalStateException(("Invalid state " + obj).toString());
                }
            } else {
                return;
            }
        } while (!f14717a.compareAndSet(this, obj, new c(obj2, b(dVarArr, dVar))));
    }

    public boolean a(Throwable th) {
        Object obj;
        int i2;
        do {
            obj = this._state;
            if (obj instanceof a) {
                return false;
            }
            if (!(obj instanceof c)) {
                throw new IllegalStateException(("Invalid state " + obj).toString());
            }
        } while (!f14717a.compareAndSet(this, obj, th == null ? f14720d : new a(th)));
        if (obj != null) {
            d<E>[] dVarArr = ((c) obj).f14726b;
            if (dVarArr != null) {
                for (d<E> a2 : dVarArr) {
                    a2.a(th);
                }
            }
            b(th);
            return true;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
    }
}
