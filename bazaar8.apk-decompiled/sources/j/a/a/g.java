package j.a.a;

import j.a.a.h;
import java.io.IOException;
import k.y;

/* compiled from: DiskLruCache */
class g extends i {

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h.a f15279c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(h.a aVar, y yVar) {
        super(yVar);
        this.f15279c = aVar;
    }

    public void a(IOException iOException) {
        synchronized (h.this) {
            this.f15279c.c();
        }
    }
}
