package i.a.b;

import h.c.b;
import h.h;

/* compiled from: Channel.kt */
public interface x<E> {

    /* compiled from: Channel.kt */
    public static final class a {
        public static /* synthetic */ boolean a(x xVar, Throwable th, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    th = null;
                }
                return xVar.a(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }
    }

    Object a(E e2, b<? super h> bVar);

    boolean a();

    boolean a(Throwable th);
}
