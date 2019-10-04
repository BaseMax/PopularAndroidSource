package i.a.b;

import h.c.b.a.f;
import h.e;
import h.f.b.j;
import h.h;
import i.a.C1105h;
import i.a.C1109j;
import i.a.C1111k;
import i.a.K;
import i.a.L;
import i.a.c.u;
import java.util.concurrent.CancellationException;
import kotlin.Result;

/* compiled from: AbstractChannel.kt */
public abstract class a<E> extends d<E> implements j<E> {

    /* renamed from: i.a.b.a$a  reason: collision with other inner class name */
    /* compiled from: AbstractChannel.kt */
    private static final class C0147a<E> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f14679a;

        /* renamed from: b  reason: collision with root package name */
        public final E f14680b;

        public C0147a(Object obj, E e2) {
            j.b(obj, "token");
            this.f14679a = obj;
            this.f14680b = e2;
        }
    }

    /* compiled from: AbstractChannel.kt */
    private static final class b<E> implements k<E> {

        /* renamed from: a  reason: collision with root package name */
        public Object f14681a = c.f14691c;

        /* renamed from: b  reason: collision with root package name */
        public final a<E> f14682b;

        public b(a<E> aVar) {
            j.b(aVar, "channel");
            this.f14682b = aVar;
        }

        public final a<E> a() {
            return this.f14682b;
        }

        public final void b(Object obj) {
            this.f14681a = obj;
        }

        public E next() {
            E e2 = this.f14681a;
            if (!(e2 instanceof o)) {
                E e3 = c.f14691c;
                if (e2 != e3) {
                    this.f14681a = e3;
                    return e2;
                }
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            throw u.b(((o) e2).r());
        }

        public Object a(h.c.b<? super Boolean> bVar) {
            Object obj = this.f14681a;
            if (obj != c.f14691c) {
                return h.c.b.a.a.a(a(obj));
            }
            this.f14681a = this.f14682b.s();
            Object obj2 = this.f14681a;
            if (obj2 != c.f14691c) {
                return h.c.b.a.a.a(a(obj2));
            }
            return b(bVar);
        }

        public final /* synthetic */ Object b(h.c.b<? super Boolean> bVar) {
            C1111k kVar = new C1111k(h.c.a.a.a(bVar), 0);
            c cVar = new c(this, kVar);
            while (true) {
                if (!a().a(cVar)) {
                    Object s = a().s();
                    b(s);
                    if (!(s instanceof o)) {
                        if (s != c.f14691c) {
                            Boolean a2 = h.c.b.a.a.a(true);
                            Result.a aVar = Result.f15776a;
                            Result.a(a2);
                            kVar.b(a2);
                            break;
                        }
                    } else {
                        o oVar = (o) s;
                        if (oVar.f14716d == null) {
                            Boolean a3 = h.c.b.a.a.a(false);
                            Result.a aVar2 = Result.f15776a;
                            Result.a(a3);
                            kVar.b(a3);
                        } else {
                            Throwable r = oVar.r();
                            Result.a aVar3 = Result.f15776a;
                            Object a4 = e.a(r);
                            Result.a(a4);
                            kVar.b(a4);
                        }
                    }
                } else {
                    a().a((C1109j<?>) kVar, (s<?>) cVar);
                    break;
                }
            }
            Object h2 = kVar.h();
            if (h2 == h.c.a.b.a()) {
                f.c(bVar);
            }
            return h2;
        }

        public final boolean a(Object obj) {
            if (!(obj instanceof o)) {
                return true;
            }
            o oVar = (o) obj;
            if (oVar.f14716d == null) {
                return false;
            }
            throw u.b(oVar.r());
        }
    }

    /* compiled from: AbstractChannel.kt */
    private static final class c<E> extends s<E> {

        /* renamed from: d  reason: collision with root package name */
        public final b<E> f14683d;

        /* renamed from: e  reason: collision with root package name */
        public final C1109j<Boolean> f14684e;

        public c(b<E> bVar, C1109j<? super Boolean> jVar) {
            j.b(bVar, "iterator");
            j.b(jVar, "cont");
            this.f14683d = bVar;
            this.f14684e = jVar;
        }

        public Object a(E e2, Object obj) {
            Object a2 = this.f14684e.a(true, obj);
            if (a2 != null) {
                if (obj != null) {
                    return new C0147a(a2, e2);
                }
                this.f14683d.b((Object) e2);
            }
            return a2;
        }

        public void b(Object obj) {
            j.b(obj, "token");
            if (obj instanceof C0147a) {
                C0147a aVar = (C0147a) obj;
                this.f14683d.b((Object) aVar.f14680b);
                this.f14684e.c(aVar.f14679a);
                return;
            }
            this.f14684e.c(obj);
        }

        public String toString() {
            return "ReceiveHasNext";
        }

        public void a(o<?> oVar) {
            Object obj;
            j.b(oVar, "closed");
            if (oVar.f14716d == null) {
                obj = C1109j.a.a(this.f14684e, false, null, 2, null);
            } else {
                obj = this.f14684e.a(u.a(oVar.r(), (h.c.b<?>) this.f14684e));
            }
            if (obj != null) {
                this.f14683d.b((Object) oVar);
                this.f14684e.c(obj);
            }
        }
    }

    /* compiled from: AbstractChannel.kt */
    private final class d extends C1105h {

        /* renamed from: a  reason: collision with root package name */
        public final s<?> f14685a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ a f14686b;

        public d(a aVar, s<?> sVar) {
            j.b(sVar, "receive");
            this.f14686b = aVar;
            this.f14685a = sVar;
        }

        public /* bridge */ /* synthetic */ Object a(Object obj) {
            a((Throwable) obj);
            return h.f14579a;
        }

        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f14685a + ']';
        }

        public void a(Throwable th) {
            if (this.f14685a.n()) {
                this.f14686b.q();
            }
        }
    }

    public boolean c(Throwable th) {
        boolean a2 = a(th);
        n();
        return a2;
    }

    public final k<E> iterator() {
        return new b(this);
    }

    public u<E> l() {
        u<E> l2 = super.l();
        if (l2 != null && !(l2 instanceof o)) {
            q();
        }
        return l2;
    }

    public void n() {
        o<?> f2 = f();
        if (f2 != null) {
            while (true) {
                w m = m();
                if (m == null) {
                    throw new IllegalStateException("Cannot happen");
                } else if (!(m instanceof o)) {
                    m.a(f2);
                } else if (K.a()) {
                    if (!(m == f2)) {
                        throw new AssertionError();
                    }
                    return;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen");
        }
    }

    public abstract boolean o();

    public abstract boolean p();

    public void q() {
    }

    public void r() {
    }

    public Object s() {
        w m;
        Object d2;
        do {
            m = m();
            if (m == null) {
                return c.f14691c;
            }
            d2 = m.d(null);
        } while (d2 == null);
        m.c(d2);
        return m.q();
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0055  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(i.a.b.s<? super E> r8) {
        /*
            r7 = this;
            boolean r0 = r7.o()
            java.lang.String r1 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L_0x002d
            i.a.c.i r0 = r7.h()
        L_0x000e:
            java.lang.Object r4 = r0.h()
            if (r4 == 0) goto L_0x0027
            i.a.c.k r4 = (i.a.c.k) r4
            boolean r5 = r4 instanceof i.a.b.w
            if (r5 != 0) goto L_0x001c
            r5 = 1
            goto L_0x001d
        L_0x001c:
            r5 = 0
        L_0x001d:
            if (r5 != 0) goto L_0x0020
            goto L_0x0053
        L_0x0020:
            boolean r4 = r4.b(r8, r0)
            if (r4 == 0) goto L_0x000e
            goto L_0x0052
        L_0x0027:
            kotlin.TypeCastException r8 = new kotlin.TypeCastException
            r8.<init>(r1)
            throw r8
        L_0x002d:
            i.a.c.i r0 = r7.h()
            i.a.b.b r4 = new i.a.b.b
            r4.<init>(r8, r8, r7)
        L_0x0036:
            java.lang.Object r5 = r0.h()
            if (r5 == 0) goto L_0x0059
            i.a.c.k r5 = (i.a.c.k) r5
            boolean r6 = r5 instanceof i.a.b.w
            if (r6 != 0) goto L_0x0044
            r6 = 1
            goto L_0x0045
        L_0x0044:
            r6 = 0
        L_0x0045:
            if (r6 != 0) goto L_0x0048
            goto L_0x0053
        L_0x0048:
            int r5 = r5.a(r8, r0, r4)
            if (r5 == r2) goto L_0x0052
            r6 = 2
            if (r5 == r6) goto L_0x0053
            goto L_0x0036
        L_0x0052:
            r3 = 1
        L_0x0053:
            if (r3 == 0) goto L_0x0058
            r7.r()
        L_0x0058:
            return r3
        L_0x0059:
            kotlin.TypeCastException r8 = new kotlin.TypeCastException
            r8.<init>(r1)
            goto L_0x0060
        L_0x005f:
            throw r8
        L_0x0060:
            goto L_0x005f
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.b.a.a(i.a.b.s):boolean");
    }

    public final void a(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException(L.a((Object) this) + " was cancelled");
        }
        c(cancellationException);
    }

    public final void a(C1109j<?> jVar, s<?> sVar) {
        jVar.a((h.f.a.b<? super Throwable, h>) new d(this, sVar));
    }
}
