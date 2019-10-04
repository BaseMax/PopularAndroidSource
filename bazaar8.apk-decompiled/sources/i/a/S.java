package i.a;

import h.c.b;
import h.c.e;
import h.f.b.j;
import i.a.c.s;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: Builders.common.kt */
public final class S<T> extends s<T> {

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14658e = AtomicIntegerFieldUpdater.newUpdater(S.class, "_decision");
    public volatile int _decision = 0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public S(e eVar, b<? super T> bVar) {
        super(eVar, bVar);
        j.b(eVar, "context");
        j.b(bVar, "uCont");
    }

    public void a(Object obj, int i2) {
        if (!r()) {
            super.a(obj, i2);
        }
    }

    public int n() {
        return 1;
    }

    public final Object q() {
        if (v()) {
            return h.c.a.b.a();
        }
        Object b2 = za.b(h());
        if (!(b2 instanceof C1129v)) {
            return b2;
        }
        throw ((C1129v) b2).f14867b;
    }

    public final boolean r() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f14658e.compareAndSet(this, 0, 2));
        return true;
    }

    public final boolean v() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f14658e.compareAndSet(this, 0, 1));
        return true;
    }
}
