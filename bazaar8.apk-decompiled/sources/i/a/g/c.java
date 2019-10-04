package i.a.g;

import h.c.b.a.f;
import h.f.b.j;
import h.h;
import i.a.C1109j;
import i.a.C1111k;
import i.a.C1113l;
import i.a.X;
import i.a.c.i;
import i.a.c.k;
import i.a.c.q;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.TypeCastException;

/* compiled from: Mutex.kt */
public final class c implements b, i.a.f.c<Object, b> {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14823a = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_state");
    public volatile Object _state;

    /* compiled from: Mutex.kt */
    private static final class a extends b {

        /* renamed from: e  reason: collision with root package name */
        public final C1109j<h> f14824e;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(Object obj, C1109j<? super h> jVar) {
            super(obj);
            j.b(jVar, "cont");
            this.f14824e = jVar;
        }

        public void c(Object obj) {
            j.b(obj, "token");
            this.f14824e.c(obj);
        }

        public Object q() {
            return C1109j.a.a(this.f14824e, h.f14579a, null, 2, null);
        }

        public String toString() {
            return "LockCont[" + this.f14825d + ", " + this.f14824e + ']';
        }
    }

    /* compiled from: Mutex.kt */
    private static abstract class b extends k implements X {

        /* renamed from: d  reason: collision with root package name */
        public final Object f14825d;

        public b(Object obj) {
            this.f14825d = obj;
        }

        public abstract void c(Object obj);

        public final void f() {
            n();
        }

        public abstract Object q();
    }

    /* renamed from: i.a.g.c$c  reason: collision with other inner class name */
    /* compiled from: Mutex.kt */
    private static final class C0148c extends i {

        /* renamed from: d  reason: collision with root package name */
        public Object f14826d;

        public C0148c(Object obj) {
            j.b(obj, "owner");
            this.f14826d = obj;
        }

        public String toString() {
            return "LockedQueue[" + this.f14826d + ']';
        }
    }

    /* compiled from: Mutex.kt */
    private static final class d extends q {

        /* renamed from: a  reason: collision with root package name */
        public final C0148c f14827a;

        public d(C0148c cVar) {
            j.b(cVar, "queue");
            this.f14827a = cVar;
        }

        public Object a(Object obj) {
            Object b2 = this.f14827a.q() ? e.f14841h : this.f14827a;
            if (obj != null) {
                c cVar = (c) obj;
                c.f14823a.compareAndSet(cVar, this, b2);
                if (cVar._state == this.f14827a) {
                    return e.f14836c;
                }
                return null;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl");
        }
    }

    public c(boolean z) {
        this._state = z ? e.f14840g : e.f14841h;
    }

    public Object a(Object obj, h.c.b<? super h> bVar) {
        if (b(obj)) {
            return h.f14579a;
        }
        return b(obj, bVar);
    }

    public boolean b(Object obj) {
        while (true) {
            Object obj2 = this._state;
            boolean z = true;
            if (obj2 instanceof a) {
                if (((a) obj2).f14822a != e.f14839f) {
                    return false;
                }
                if (f14823a.compareAndSet(this, obj2, obj == null ? e.f14840g : new a(obj))) {
                    return true;
                }
            } else if (obj2 instanceof C0148c) {
                if (((C0148c) obj2).f14826d == obj) {
                    z = false;
                }
                if (z) {
                    return false;
                }
                throw new IllegalStateException(("Already locked by " + obj).toString());
            } else if (obj2 instanceof q) {
                ((q) obj2).a(this);
            } else {
                throw new IllegalStateException(("Illegal state " + obj2).toString());
            }
        }
    }

    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof a) {
                return "Mutex[" + ((a) obj).f14822a + ']';
            } else if (obj instanceof q) {
                ((q) obj).a(this);
            } else if (obj instanceof C0148c) {
                return "Mutex[" + ((C0148c) obj).f14826d + ']';
            } else {
                throw new IllegalStateException(("Illegal state " + obj).toString());
            }
        }
    }

    public void a(Object obj) {
        while (true) {
            Object obj2 = this._state;
            boolean z = true;
            if (obj2 instanceof a) {
                if (obj == null) {
                    if (((a) obj2).f14822a == e.f14839f) {
                        z = false;
                    }
                    if (!z) {
                        throw new IllegalStateException("Mutex is not locked");
                    }
                } else {
                    a aVar = (a) obj2;
                    if (aVar.f14822a != obj) {
                        z = false;
                    }
                    if (!z) {
                        throw new IllegalStateException(("Mutex is locked by " + aVar.f14822a + " but expected " + obj).toString());
                    }
                }
                if (f14823a.compareAndSet(this, obj2, e.f14841h)) {
                    return;
                }
            } else if (obj2 instanceof q) {
                ((q) obj2).a(this);
            } else if (obj2 instanceof C0148c) {
                if (obj != null) {
                    C0148c cVar = (C0148c) obj2;
                    if (cVar.f14826d != obj) {
                        z = false;
                    }
                    if (!z) {
                        throw new IllegalStateException(("Mutex is locked by " + cVar.f14826d + " but expected " + obj).toString());
                    }
                }
                C0148c cVar2 = (C0148c) obj2;
                k o = cVar2.o();
                if (o == null) {
                    d dVar = new d(cVar2);
                    if (f14823a.compareAndSet(this, obj2, dVar) && dVar.a(this) == null) {
                        return;
                    }
                } else {
                    b bVar = (b) o;
                    Object q = bVar.q();
                    if (q != null) {
                        Object obj3 = bVar.f14825d;
                        if (obj3 == null) {
                            obj3 = e.f14838e;
                        }
                        cVar2.f14826d = obj3;
                        bVar.c(q);
                        return;
                    }
                }
            } else {
                throw new IllegalStateException(("Illegal state " + obj2).toString());
            }
        }
    }

    public final /* synthetic */ Object b(Object obj, h.c.b<? super h> bVar) {
        Object obj2 = obj;
        C1111k kVar = new C1111k(h.c.a.a.a(bVar), 0);
        a aVar = new a(obj2, kVar);
        while (true) {
            Object obj3 = this._state;
            if (obj3 instanceof a) {
                a aVar2 = (a) obj3;
                if (aVar2.f14822a != e.f14839f) {
                    f14823a.compareAndSet(this, obj3, new C0148c(aVar2.f14822a));
                } else {
                    if (f14823a.compareAndSet(this, obj3, obj2 == null ? e.f14840g : new a(obj2))) {
                        h hVar = h.f14579a;
                        Result.a aVar3 = Result.f15776a;
                        Result.a(hVar);
                        kVar.b(hVar);
                        break;
                    }
                }
            } else if (obj3 instanceof C0148c) {
                C0148c cVar = (C0148c) obj3;
                boolean z = true;
                if (cVar.f14826d != obj2) {
                    d dVar = new d(aVar, aVar, obj3, kVar, aVar, this, obj);
                    while (true) {
                        Object h2 = cVar.h();
                        if (h2 != null) {
                            int a2 = ((k) h2).a(aVar, cVar, dVar);
                            if (a2 != 1) {
                                if (a2 == 2) {
                                    z = false;
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        }
                    }
                    if (z) {
                        C1113l.a((C1109j<?>) kVar, (k) aVar);
                        break;
                    }
                } else {
                    throw new IllegalStateException(("Already locked by " + obj2).toString());
                }
            } else if (obj3 instanceof q) {
                ((q) obj3).a(this);
            } else {
                throw new IllegalStateException(("Illegal state " + obj3).toString());
            }
        }
        Object h3 = kVar.h();
        if (h3 == h.c.a.b.a()) {
            f.c(bVar);
        }
        return h3;
    }
}
