package i.a;

import h.f.b.j;
import h.h;

/* compiled from: CancellableContinuation.kt */
public final class Y extends C1105h {

    /* renamed from: a  reason: collision with root package name */
    public final X f14666a;

    public Y(X x) {
        j.b(x, "handle");
        this.f14666a = x;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Throwable) obj);
        return h.f14579a;
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f14666a + ']';
    }

    public void a(Throwable th) {
        this.f14666a.f();
    }
}
