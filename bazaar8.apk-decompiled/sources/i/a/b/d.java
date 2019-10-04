package i.a.b;

import h.c.b;
import h.c.b.a.f;
import h.e;
import h.f.b.j;
import h.f.b.o;
import h.h;
import i.a.C1109j;
import i.a.C1111k;
import i.a.C1113l;
import i.a.K;
import i.a.L;
import i.a.c.i;
import i.a.c.k;
import i.a.c.u;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.TypeCastException;

/* compiled from: AbstractChannel.kt */
public abstract class d<E> implements x<E> {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14698a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "onCloseHandler");

    /* renamed from: b  reason: collision with root package name */
    public final i f14699b = new i();
    public volatile Object onCloseHandler = null;

    /* compiled from: AbstractChannel.kt */
    public static final class a<E> extends w {

        /* renamed from: d  reason: collision with root package name */
        public final E f14700d;

        public a(E e2) {
            this.f14700d = e2;
        }

        public void a(o<?> oVar) {
            j.b(oVar, "closed");
        }

        public void c(Object obj) {
            j.b(obj, "token");
            if (K.a()) {
                if (!(obj == c.f14696h)) {
                    throw new AssertionError();
                }
            }
        }

        public Object d(Object obj) {
            return c.f14696h;
        }

        public Object q() {
            return this.f14700d;
        }
    }

    public void a(k kVar) {
        j.b(kVar, "closed");
    }

    public Object b(E e2) {
        u l2;
        Object a2;
        do {
            l2 = l();
            if (l2 == null) {
                return c.f14690b;
            }
            a2 = l2.a(e2, null);
        } while (a2 == null);
        l2.b(a2);
        return l2.c();
    }

    public final u<?> c(E e2) {
        k kVar;
        i iVar = this.f14699b;
        a aVar = new a(e2);
        do {
            Object h2 = iVar.h();
            if (h2 != null) {
                kVar = (k) h2;
                if (kVar instanceof u) {
                    return (u) kVar;
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (!kVar.b(aVar, iVar));
        return null;
    }

    public String d() {
        return "";
    }

    public final o<?> e() {
        k g2 = this.f14699b.g();
        if (!(g2 instanceof o)) {
            g2 = null;
        }
        o<?> oVar = (o) g2;
        if (oVar == null) {
            return null;
        }
        a(oVar);
        return oVar;
    }

    public final o<?> f() {
        k i2 = this.f14699b.i();
        if (!(i2 instanceof o)) {
            i2 = null;
        }
        o<?> oVar = (o) i2;
        if (oVar == null) {
            return null;
        }
        a(oVar);
        return oVar;
    }

    public final boolean g() {
        return !(this.f14699b.g() instanceof u) && k();
    }

    public final i h() {
        return this.f14699b;
    }

    public final String i() {
        String str;
        k g2 = this.f14699b.g();
        if (g2 == this.f14699b) {
            return "EmptyQueue";
        }
        if (g2 instanceof o) {
            str = g2.toString();
        } else if (g2 instanceof s) {
            str = "ReceiveQueued";
        } else if (g2 instanceof w) {
            str = "SendQueued";
        } else {
            str = "UNEXPECTED:" + g2;
        }
        k i2 = this.f14699b.i();
        if (i2 != g2) {
            str = str + ",queueSize=" + c();
            if (i2 instanceof o) {
                str = str + ",closedForSend=" + i2;
            }
        }
        return str;
    }

    public abstract boolean j();

    public abstract boolean k();

    public u<E> l() {
        k kVar;
        u<E> uVar;
        i iVar = this.f14699b;
        while (true) {
            Object e2 = iVar.e();
            if (e2 != null) {
                kVar = (k) e2;
                uVar = null;
                if (kVar == iVar || !(kVar instanceof u)) {
                    break;
                } else if (!(((u) kVar) instanceof o) && !kVar.n()) {
                    kVar.j();
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
        uVar = kVar;
        return uVar;
    }

    public final w m() {
        k kVar;
        w wVar;
        i iVar = this.f14699b;
        while (true) {
            Object e2 = iVar.e();
            if (e2 != null) {
                kVar = (k) e2;
                wVar = null;
                if (kVar == iVar || !(kVar instanceof w)) {
                    break;
                } else if (!(((w) kVar) instanceof o) && !kVar.n()) {
                    kVar.j();
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
        wVar = kVar;
        return wVar;
    }

    public String toString() {
        return L.a((Object) this) + '@' + L.b(this) + '{' + i() + '}' + d();
    }

    public final boolean a() {
        return f() != null;
    }

    public final Object a(E e2, b<? super h> bVar) {
        if (a(e2)) {
            return h.f14579a;
        }
        return b(e2, bVar);
    }

    public final void b(Throwable th) {
        Object obj = this.onCloseHandler;
        if (obj != null) {
            Object obj2 = c.f14697i;
            if (obj != obj2 && f14698a.compareAndSet(this, obj, obj2)) {
                o.a(obj, 1);
                ((h.f.a.b) obj).a(th);
            }
        }
    }

    public final int c() {
        i iVar = this.f14699b;
        Object e2 = iVar.e();
        if (e2 != null) {
            int i2 = 0;
            for (k kVar = (k) e2; !j.a((Object) kVar, (Object) iVar); kVar = kVar.g()) {
                if (kVar instanceof k) {
                    i2++;
                }
            }
            return i2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    public final boolean a(E e2) {
        Object b2 = b(e2);
        if (b2 == c.f14689a) {
            return true;
        }
        if (b2 == c.f14690b) {
            o<?> f2 = f();
            if (f2 != null) {
                Throwable t = f2.t();
                if (t != null) {
                    Throwable b3 = u.b(t);
                    if (b3 != null) {
                        throw b3;
                    }
                }
            }
            return false;
        } else if (b2 instanceof o) {
            throw u.b(((o) b2).t());
        } else {
            throw new IllegalStateException(("offerInternal returned " + b2).toString());
        }
    }

    public final /* synthetic */ Object b(E e2, b<? super h> bVar) {
        C1111k kVar = new C1111k(h.c.a.a.a(bVar), 0);
        while (true) {
            if (g()) {
                y yVar = new y(e2, kVar);
                Object a2 = a((w) yVar);
                if (a2 == null) {
                    C1113l.a((C1109j<?>) kVar, (k) yVar);
                    break;
                } else if (a2 instanceof o) {
                    o oVar = (o) a2;
                    a((o<?>) oVar);
                    Throwable t = oVar.t();
                    Result.a aVar = Result.f15776a;
                    Object a3 = e.a(t);
                    Result.a(a3);
                    kVar.b(a3);
                    break;
                } else if (a2 != c.f14692d && !(a2 instanceof s)) {
                    throw new IllegalStateException(("enqueueSend returned " + a2).toString());
                }
            }
            Object b2 = b(e2);
            if (b2 == c.f14689a) {
                h hVar = h.f14579a;
                Result.a aVar2 = Result.f15776a;
                Result.a(hVar);
                kVar.b(hVar);
                break;
            } else if (b2 != c.f14690b) {
                if (b2 instanceof o) {
                    o oVar2 = (o) b2;
                    a((o<?>) oVar2);
                    Throwable t2 = oVar2.t();
                    Result.a aVar3 = Result.f15776a;
                    Object a4 = e.a(t2);
                    Result.a(a4);
                    kVar.b(a4);
                } else {
                    throw new IllegalStateException(("offerInternal returned " + b2).toString());
                }
            }
        }
        Object h2 = kVar.h();
        if (h2 == h.c.a.b.a()) {
            f.c(bVar);
        }
        return h2;
    }

    public final Object a(w wVar) {
        boolean z;
        k kVar;
        if (j()) {
            i iVar = this.f14699b;
            do {
                Object h2 = iVar.h();
                if (h2 != null) {
                    kVar = (k) h2;
                    if (kVar instanceof u) {
                        return kVar;
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                }
            } while (!kVar.b(wVar, iVar));
        } else {
            i iVar2 = this.f14699b;
            e eVar = new e(wVar, wVar, this);
            while (true) {
                Object h3 = iVar2.h();
                if (h3 != null) {
                    k kVar2 = (k) h3;
                    if (!(kVar2 instanceof u)) {
                        int a2 = kVar2.a(wVar, iVar2, eVar);
                        z = true;
                        if (a2 != 1) {
                            if (a2 == 2) {
                                z = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        return kVar2;
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                }
            }
            if (!z) {
                return c.f14692d;
            }
        }
        return null;
    }

    public boolean a(Throwable th) {
        boolean z;
        o oVar = new o(th);
        i iVar = this.f14699b;
        while (true) {
            Object h2 = iVar.h();
            if (h2 != null) {
                k kVar = (k) h2;
                if (!(kVar instanceof o)) {
                    if (kVar.b(oVar, iVar)) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
        if (!z) {
            k i2 = this.f14699b.i();
            if (i2 != null) {
                a((o<?>) (o) i2);
                return false;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.Closed<*>");
        }
        a((o<?>) oVar);
        b(th);
        return true;
    }

    public final void a(o<?> oVar) {
        while (true) {
            k i2 = oVar.i();
            if ((i2 instanceof i) || !(i2 instanceof s)) {
                a((k) oVar);
            } else if (!i2.n()) {
                i2.k();
            } else {
                ((s) i2).a(oVar);
            }
        }
        a((k) oVar);
    }
}
