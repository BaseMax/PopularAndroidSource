package i.a.b;

import h.f.b.j;
import i.a.b.d;
import i.a.c.i;
import i.a.c.k;
import kotlin.TypeCastException;

/* compiled from: ConflatedChannel.kt */
public class q<E> extends a<E> {
    public void a(k kVar) {
        j.b(kVar, "closed");
        k i2 = kVar.i();
        if (!(i2 instanceof d.a)) {
            i2 = null;
        }
        d.a aVar = (d.a) i2;
        if (aVar != null) {
            a(aVar);
        }
    }

    public Object b(E e2) {
        u<?> d2;
        do {
            Object b2 = super.b(e2);
            Object obj = c.f14689a;
            if (b2 == obj) {
                return obj;
            }
            if (b2 == c.f14690b) {
                d2 = d(e2);
                if (d2 == null) {
                    return c.f14689a;
                }
            } else if (b2 instanceof o) {
                return b2;
            } else {
                throw new IllegalStateException(("Invalid offerInternal result " + b2).toString());
            }
        } while (!(d2 instanceof o));
        return d2;
    }

    public final u<?> d(E e2) {
        k kVar;
        d.a aVar = new d.a(e2);
        i h2 = h();
        do {
            Object h3 = h2.h();
            if (h3 != null) {
                kVar = (k) h3;
                if (kVar instanceof u) {
                    return (u) kVar;
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (!kVar.b(aVar, h2));
        a(aVar);
        return null;
    }

    public final boolean j() {
        return false;
    }

    public final boolean k() {
        return false;
    }

    public final boolean o() {
        return true;
    }

    public final boolean p() {
        return true;
    }

    public final void a(d.a<? extends E> aVar) {
        for (k i2 = aVar.i(); i2 instanceof d.a; i2 = i2.i()) {
            if (!i2.n()) {
                i2.k();
            }
        }
    }
}
