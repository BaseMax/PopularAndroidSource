package i.a;

import h.f.b.j;
import h.h;

/* renamed from: i.a.n  reason: case insensitive filesystem */
/* compiled from: JobSupport.kt */
public final class C1117n extends sa<C1125ra> {

    /* renamed from: e  reason: collision with root package name */
    public final C1111k<?> f14851e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1117n(C1125ra raVar, C1111k<?> kVar) {
        super(raVar);
        j.b(raVar, "parent");
        j.b(kVar, "child");
        this.f14851e = kVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        b((Throwable) obj);
        return h.f14579a;
    }

    public void b(Throwable th) {
        C1111k<?> kVar = this.f14851e;
        kVar.b(kVar.a((C1125ra) this.f14868d));
    }

    public String toString() {
        return "ChildContinuation[" + this.f14851e + ']';
    }
}
