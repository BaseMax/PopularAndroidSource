package i.a;

import h.f.a.b;
import h.f.b.j;
import h.h;

/* renamed from: i.a.qa  reason: case insensitive filesystem */
/* compiled from: JobSupport.kt */
public final class C1124qa extends wa<C1125ra> {

    /* renamed from: e  reason: collision with root package name */
    public final b<Throwable, h> f14857e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1124qa(C1125ra raVar, b<? super Throwable, h> bVar) {
        super(raVar);
        j.b(raVar, "job");
        j.b(bVar, "handler");
        this.f14857e = bVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        b((Throwable) obj);
        return h.f14579a;
    }

    public void b(Throwable th) {
        this.f14857e.a(th);
    }

    public String toString() {
        return "InvokeOnCompletion[" + L.a((Object) this) + '@' + L.b(this) + ']';
    }
}
