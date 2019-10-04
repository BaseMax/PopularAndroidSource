package i.a;

import h.f.b.j;
import h.h;
import kotlin.Result;

/* compiled from: JobSupport.kt */
public final class Ia<T> extends wa<xa> {

    /* renamed from: e  reason: collision with root package name */
    public final C1111k<T> f14640e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Ia(xa xaVar, C1111k<? super T> kVar) {
        super(xaVar);
        j.b(xaVar, "job");
        j.b(kVar, "continuation");
        this.f14640e = kVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        b((Throwable) obj);
        return h.f14579a;
    }

    public void b(Throwable th) {
        Object h2 = ((xa) this.f14868d).h();
        if (K.a()) {
            if (!(!(h2 instanceof C1116ma))) {
                throw new AssertionError();
            }
        }
        if (h2 instanceof C1129v) {
            this.f14640e.a(((C1129v) h2).f14867b, 0);
            return;
        }
        C1111k<T> kVar = this.f14640e;
        Object b2 = za.b(h2);
        Result.a aVar = Result.f15776a;
        Result.a(b2);
        kVar.b(b2);
    }

    public String toString() {
        return "ResumeAwaitOnCompletion[" + this.f14640e + ']';
    }
}
