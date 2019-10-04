package i.a.b;

import h.f.b.j;
import i.a.c.k;

/* compiled from: LockFreeLinkedList.kt */
public final class e extends k.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f14701d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ d f14702e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(k kVar, k kVar2, d dVar) {
        super(kVar2);
        this.f14701d = kVar;
        this.f14702e = dVar;
    }

    /* renamed from: a */
    public Object c(k kVar) {
        j.b(kVar, "affected");
        if (this.f14702e.k()) {
            return null;
        }
        return i.a.c.j.a();
    }
}
