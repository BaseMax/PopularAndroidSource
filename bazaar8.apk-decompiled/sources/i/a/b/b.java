package i.a.b;

import h.f.b.j;
import i.a.c.k;

/* compiled from: LockFreeLinkedList.kt */
public final class b extends k.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f14687d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ a f14688e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(k kVar, k kVar2, a aVar) {
        super(kVar2);
        this.f14687d = kVar;
        this.f14688e = aVar;
    }

    /* renamed from: a */
    public Object c(k kVar) {
        j.b(kVar, "affected");
        if (this.f14688e.p()) {
            return null;
        }
        return i.a.c.j.a();
    }
}
