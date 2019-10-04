package i.a.b;

/* compiled from: LinkedListChannel.kt */
public class r<E> extends a<E> {
    public Object b(E e2) {
        u<?> c2;
        do {
            Object b2 = super.b(e2);
            Object obj = c.f14689a;
            if (b2 == obj) {
                return obj;
            }
            if (b2 == c.f14690b) {
                c2 = c(e2);
                if (c2 == null) {
                    return c.f14689a;
                }
            } else if (b2 instanceof o) {
                return b2;
            } else {
                throw new IllegalStateException(("Invalid offerInternal result " + b2).toString());
            }
        } while (!(c2 instanceof o));
        return c2;
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
}
