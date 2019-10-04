package i.a;

import h.c.b;
import h.h;

/* renamed from: i.a.j  reason: case insensitive filesystem */
/* compiled from: CancellableContinuation.kt */
public interface C1109j<T> extends b<T> {

    /* renamed from: i.a.j$a */
    /* compiled from: CancellableContinuation.kt */
    public static final class a {
        public static /* synthetic */ Object a(C1109j jVar, Object obj, Object obj2, int i2, Object obj3) {
            if (obj3 == null) {
                if ((i2 & 2) != 0) {
                    obj2 = null;
                }
                return jVar.a(obj, obj2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
        }
    }

    Object a(T t, Object obj);

    Object a(Throwable th);

    void a(h.f.a.b<? super Throwable, h> bVar);

    void c(Object obj);
}
