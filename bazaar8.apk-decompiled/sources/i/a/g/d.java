package i.a.g;

import h.f.b.j;
import i.a.C1109j;
import i.a.c.k;
import i.a.g.c;

/* compiled from: LockFreeLinkedList.kt */
public final class d extends k.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f14828d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f14829e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C1109j f14830f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ c.a f14831g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ c f14832h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Object f14833i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(k kVar, k kVar2, Object obj, C1109j jVar, c.a aVar, c cVar, Object obj2) {
        super(kVar2);
        this.f14828d = kVar;
        this.f14829e = obj;
        this.f14830f = jVar;
        this.f14831g = aVar;
        this.f14832h = cVar;
        this.f14833i = obj2;
    }

    /* renamed from: a */
    public Object c(k kVar) {
        j.b(kVar, "affected");
        if (this.f14832h._state == this.f14829e) {
            return null;
        }
        return i.a.c.j.a();
    }
}
