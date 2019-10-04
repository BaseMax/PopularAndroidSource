package i.a;

import h.f.b.j;
import h.h;
import i.a.c.k;

/* compiled from: CancellableContinuation.kt */
public final class Ha extends C1105h {

    /* renamed from: a  reason: collision with root package name */
    public final k f14639a;

    public Ha(k kVar) {
        j.b(kVar, "node");
        this.f14639a = kVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Throwable) obj);
        return h.f14579a;
    }

    public String toString() {
        return "RemoveOnCancel[" + this.f14639a + ']';
    }

    public void a(Throwable th) {
        this.f14639a.n();
    }
}
