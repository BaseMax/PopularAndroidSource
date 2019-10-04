package i.a;

import h.f.a.b;
import h.f.b.j;
import h.h;

/* renamed from: i.a.oa  reason: case insensitive filesystem */
/* compiled from: CancellableContinuationImpl.kt */
public final class C1120oa extends C1105h {

    /* renamed from: a  reason: collision with root package name */
    public final b<Throwable, h> f14853a;

    public C1120oa(b<? super Throwable, h> bVar) {
        j.b(bVar, "handler");
        this.f14853a = bVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Throwable) obj);
        return h.f14579a;
    }

    public String toString() {
        return "InvokeOnCancel[" + L.a((Object) this.f14853a) + '@' + L.b(this) + ']';
    }

    public void a(Throwable th) {
        this.f14853a.a(th);
    }
}
