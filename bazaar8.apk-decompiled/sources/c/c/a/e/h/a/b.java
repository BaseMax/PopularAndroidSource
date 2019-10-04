package c.c.a.e.h.a;

import c.c.a.e.h.a.c;
import j.a.a.h;
import k.j;
import k.y;

/* compiled from: Cache */
class b extends j {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ c f5479b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h.a f5480c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c.a f5481d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(c.a aVar, y yVar, c cVar, h.a aVar2) {
        super(yVar);
        this.f5481d = aVar;
        this.f5479b = cVar;
        this.f5480c = aVar2;
    }

    public void close() {
        synchronized (c.this) {
            if (!this.f5481d.f5492d) {
                this.f5481d.f5492d = true;
                int unused = c.this.f5484c = c.this.f5484c + 1;
                super.close();
                this.f5480c.b();
            }
        }
    }
}
