package i.a;

import h.f.b.j;
import i.a.c.k;

/* compiled from: LockFreeLinkedList.kt */
public final class ya extends k.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f14881d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ xa f14882e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f14883f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ya(k kVar, k kVar2, xa xaVar, Object obj) {
        super(kVar2);
        this.f14881d = kVar;
        this.f14882e = xaVar;
        this.f14883f = obj;
    }

    /* renamed from: a */
    public Object c(k kVar) {
        j.b(kVar, "affected");
        if (this.f14882e.h() == this.f14883f) {
            return null;
        }
        return i.a.c.j.a();
    }
}
