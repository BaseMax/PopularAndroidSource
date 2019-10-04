package i.a.c;

import i.a.K;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: i.a.c.c  reason: case insensitive filesystem */
/* compiled from: Atomic.kt */
public abstract class C1095c<T> extends q {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14747a = AtomicReferenceFieldUpdater.newUpdater(C1095c.class, Object.class, "_consensus");
    public volatile Object _consensus = C1094b.f14746a;

    public final Object a(Object obj) {
        Object obj2 = this._consensus;
        if (obj2 == C1094b.f14746a) {
            obj2 = b(c(obj));
        }
        a(obj, obj2);
        return obj2;
    }

    public abstract void a(T t, Object obj);

    public final Object b(Object obj) {
        return d(obj) ? obj : this._consensus;
    }

    public abstract Object c(T t);

    public final boolean d(Object obj) {
        if (K.a()) {
            if (!(obj != C1094b.f14746a)) {
                throw new AssertionError();
            }
        }
        return f14747a.compareAndSet(this, C1094b.f14746a, obj);
    }
}
