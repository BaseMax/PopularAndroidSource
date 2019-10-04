package i.a;

import h.f.b.j;
import i.a.c.C1093a;

/* renamed from: i.a.aa  reason: case insensitive filesystem */
/* compiled from: EventLoop.common.kt */
public abstract class C1089aa extends C {

    /* renamed from: a  reason: collision with root package name */
    public long f14675a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f14676b;

    /* renamed from: c  reason: collision with root package name */
    public C1093a<U<?>> f14677c;

    public static /* synthetic */ void b(C1089aa aaVar, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                z = false;
            }
            aaVar.c(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
    }

    public long A() {
        if (!B()) {
            return Long.MAX_VALUE;
        }
        return x();
    }

    public final boolean B() {
        C1093a<U<?>> aVar = this.f14677c;
        if (aVar != null) {
            U c2 = aVar.c();
            if (c2 != null) {
                c2.run();
                return true;
            }
        }
        return false;
    }

    public boolean C() {
        return false;
    }

    public final void a(U<?> u) {
        j.b(u, "task");
        C1093a<U<?>> aVar = this.f14677c;
        if (aVar == null) {
            aVar = new C1093a<>();
            this.f14677c = aVar;
        }
        aVar.a(u);
    }

    public final long b(boolean z) {
        return z ? 4294967296L : 1;
    }

    public final void c(boolean z) {
        this.f14675a += b(z);
        if (!z) {
            this.f14676b = true;
        }
    }

    public void shutdown() {
    }

    public long x() {
        C1093a<U<?>> aVar = this.f14677c;
        if (aVar == null || aVar.b()) {
            return Long.MAX_VALUE;
        }
        return 0;
    }

    public final boolean y() {
        return this.f14675a >= b(true);
    }

    public final boolean z() {
        C1093a<U<?>> aVar = this.f14677c;
        if (aVar != null) {
            return aVar.b();
        }
        return true;
    }

    public static /* synthetic */ void a(C1089aa aaVar, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                z = false;
            }
            aaVar.a(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
    }

    public final void a(boolean z) {
        this.f14675a -= b(z);
        if (this.f14675a <= 0) {
            if (K.a()) {
                if (!(this.f14675a == 0)) {
                    throw new AssertionError();
                }
            }
            if (this.f14676b) {
                shutdown();
            }
        }
    }
}
