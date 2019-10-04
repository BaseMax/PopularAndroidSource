package i.a.c;

import h.f.b.j;
import i.a.K;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.TypeCastException;

/* compiled from: LockFreeLinkedList.kt */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14758a = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_next");

    /* renamed from: b  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14759b = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_prev");

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14760c = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_removedRef");
    public volatile Object _next = this;
    public volatile Object _prev = this;
    public volatile Object _removedRef = null;

    /* compiled from: LockFreeLinkedList.kt */
    public static abstract class a extends C1095c<k> {

        /* renamed from: b  reason: collision with root package name */
        public k f14761b;

        /* renamed from: c  reason: collision with root package name */
        public final k f14762c;

        public a(k kVar) {
            j.b(kVar, "newNode");
            this.f14762c = kVar;
        }

        public void a(k kVar, Object obj) {
            j.b(kVar, "affected");
            boolean z = obj == null;
            k kVar2 = z ? this.f14762c : this.f14761b;
            if (kVar2 != null && k.f14758a.compareAndSet(kVar, this, kVar2) && z) {
                k kVar3 = this.f14762c;
                k kVar4 = this.f14761b;
                if (kVar4 != null) {
                    kVar3.b(kVar4);
                } else {
                    j.a();
                    throw null;
                }
            }
        }
    }

    public final boolean b(k kVar, k kVar2) {
        j.b(kVar, "node");
        j.b(kVar2, "next");
        f14759b.lazySet(kVar, this);
        f14758a.lazySet(kVar, kVar2);
        if (!f14758a.compareAndSet(this, kVar2, kVar)) {
            return false;
        }
        kVar.b(kVar2);
        return true;
    }

    public final void c(k kVar) {
        j();
        kVar.a(j.a(this._prev), (q) null);
    }

    public final k d() {
        k kVar = this;
        while (!(kVar instanceof i)) {
            kVar = kVar.g();
            if (K.a()) {
                if (!(kVar != this)) {
                    throw new AssertionError();
                }
            }
        }
        return kVar;
    }

    public final Object e() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof q)) {
                return obj;
            }
            ((q) obj).a(this);
        }
    }

    public final k g() {
        return j.a(e());
    }

    public final Object h() {
        while (true) {
            Object obj = this._prev;
            if (obj instanceof r) {
                return obj;
            }
            if (obj != null) {
                k kVar = (k) obj;
                if (kVar.e() == this) {
                    return obj;
                }
                a(kVar, (q) null);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
    }

    public final k i() {
        return j.a(h());
    }

    public final void j() {
        Object e2;
        k m = m();
        Object obj = this._next;
        if (obj != null) {
            k kVar = ((r) obj).f14778a;
            while (true) {
                k kVar2 = null;
                while (true) {
                    Object e3 = kVar.e();
                    if (e3 instanceof r) {
                        kVar.m();
                        kVar = ((r) e3).f14778a;
                    } else {
                        e2 = m.e();
                        if (e2 instanceof r) {
                            if (kVar2 != null) {
                                break;
                            }
                            m = j.a(m._prev);
                        } else if (e2 != this) {
                            if (e2 != null) {
                                k kVar3 = (k) e2;
                                if (kVar3 != kVar) {
                                    k kVar4 = kVar3;
                                    kVar2 = m;
                                    m = kVar4;
                                } else {
                                    return;
                                }
                            } else {
                                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                            }
                        } else if (f14758a.compareAndSet(m, this, kVar)) {
                            return;
                        }
                    }
                }
                m.m();
                f14758a.compareAndSet(kVar2, m, ((r) e2).f14778a);
                m = kVar2;
            }
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Removed");
        }
    }

    public final void k() {
        Object e2 = e();
        if (!(e2 instanceof r)) {
            e2 = null;
        }
        r rVar = (r) e2;
        if (rVar != null) {
            c(rVar.f14778a);
            return;
        }
        throw new IllegalStateException("Must be invoked on a removed node");
    }

    public final boolean l() {
        return e() instanceof r;
    }

    public final k m() {
        Object obj;
        k kVar;
        do {
            obj = this._prev;
            if (obj instanceof r) {
                return ((r) obj).f14778a;
            }
            if (obj == this) {
                kVar = d();
            } else if (obj != null) {
                kVar = (k) obj;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (!f14759b.compareAndSet(this, obj, kVar.p()));
        return (k) obj;
    }

    public boolean n() {
        Object e2;
        k kVar;
        do {
            e2 = e();
            if ((e2 instanceof r) || e2 == this) {
                return false;
            }
            if (e2 != null) {
                kVar = (k) e2;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (!f14758a.compareAndSet(this, e2, kVar.p()));
        c(kVar);
        return true;
    }

    public final k o() {
        while (true) {
            Object e2 = e();
            if (e2 != null) {
                k kVar = (k) e2;
                if (kVar == this) {
                    return null;
                }
                if (kVar.n()) {
                    return kVar;
                }
                kVar.j();
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
    }

    public final r p() {
        r rVar = (r) this._removedRef;
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(this);
        f14760c.lazySet(this, rVar2);
        return rVar2;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }

    public final boolean a(k kVar) {
        j.b(kVar, "node");
        f14759b.lazySet(kVar, this);
        f14758a.lazySet(kVar, this);
        while (e() == this) {
            if (f14758a.compareAndSet(this, this, kVar)) {
                kVar.b(this);
                return true;
            }
        }
        return false;
    }

    public final void b(k kVar) {
        Object obj;
        do {
            obj = kVar._prev;
            if ((obj instanceof r) || e() != kVar) {
                return;
            }
        } while (!f14759b.compareAndSet(kVar, obj, this));
        if (!(e() instanceof r)) {
            return;
        }
        if (obj != null) {
            kVar.a((k) obj, (q) null);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    public final int a(k kVar, k kVar2, a aVar) {
        j.b(kVar, "node");
        j.b(kVar2, "next");
        j.b(aVar, "condAdd");
        f14759b.lazySet(kVar, this);
        f14758a.lazySet(kVar, kVar2);
        aVar.f14761b = kVar2;
        if (!f14758a.compareAndSet(this, kVar2, aVar)) {
            return 0;
        }
        return aVar.a(this) == null ? 1 : 2;
    }

    public final k a(k kVar, q qVar) {
        Object obj;
        while (true) {
            k kVar2 = null;
            while (true) {
                obj = kVar._next;
                if (obj == qVar) {
                    return kVar;
                }
                if (obj instanceof q) {
                    ((q) obj).a(kVar);
                } else if (!(obj instanceof r)) {
                    Object obj2 = this._prev;
                    if (obj2 instanceof r) {
                        return null;
                    }
                    if (obj != this) {
                        if (obj != null) {
                            kVar2 = kVar;
                            kVar = (k) obj;
                        } else {
                            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        }
                    } else if (obj2 == kVar) {
                        return null;
                    } else {
                        if (f14759b.compareAndSet(this, obj2, kVar) && !(kVar._prev instanceof r)) {
                            return null;
                        }
                    }
                } else if (kVar2 != null) {
                    break;
                } else {
                    kVar = j.a(kVar._prev);
                }
            }
            kVar.m();
            f14758a.compareAndSet(kVar2, kVar, ((r) obj).f14778a);
            kVar = kVar2;
        }
    }
}
