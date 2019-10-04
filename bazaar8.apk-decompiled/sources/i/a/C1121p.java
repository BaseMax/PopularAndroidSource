package i.a;

import h.f.b.j;
import h.h;

/* renamed from: i.a.p  reason: case insensitive filesystem */
/* compiled from: JobSupport.kt */
public final class C1121p extends sa<xa> implements C1119o {

    /* renamed from: e  reason: collision with root package name */
    public final C1123q f14854e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1121p(xa xaVar, C1123q qVar) {
        super(xaVar);
        j.b(xaVar, "parent");
        j.b(qVar, "childJob");
        this.f14854e = qVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        b((Throwable) obj);
        return h.f14579a;
    }

    public void b(Throwable th) {
        this.f14854e.a((Ga) this.f14868d);
    }

    public String toString() {
        return "ChildHandle[" + this.f14854e + ']';
    }

    public boolean a(Throwable th) {
        j.b(th, "cause");
        return ((xa) this.f14868d).e(th);
    }
}
