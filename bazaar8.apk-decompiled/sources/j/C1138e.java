package j;

import j.C1139f;
import j.a.a.h;
import k.j;
import k.y;

/* renamed from: j.e  reason: case insensitive filesystem */
/* compiled from: Cache */
class C1138e extends j {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1139f f15602b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h.a f15603c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1139f.a f15604d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1138e(C1139f.a aVar, y yVar, C1139f fVar, h.a aVar2) {
        super(yVar);
        this.f15604d = aVar;
        this.f15602b = fVar;
        this.f15603c = aVar2;
    }

    public void close() {
        synchronized (C1139f.this) {
            if (!this.f15604d.f15615d) {
                this.f15604d.f15615d = true;
                C1139f.this.f15607c++;
                super.close();
                this.f15603c.b();
            }
        }
    }
}
