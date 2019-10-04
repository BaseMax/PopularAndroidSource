package j.a.a;

import j.a.e;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import k.B;
import k.g;
import k.h;
import k.i;
import k.z;

/* compiled from: CacheInterceptor */
class a implements z {

    /* renamed from: a  reason: collision with root package name */
    public boolean f15257a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f15258b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ c f15259c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f15260d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ b f15261e;

    public a(b bVar, i iVar, c cVar, h hVar) {
        this.f15261e = bVar;
        this.f15258b = iVar;
        this.f15259c = cVar;
        this.f15260d = hVar;
    }

    public long b(g gVar, long j2) {
        try {
            long b2 = this.f15258b.b(gVar, j2);
            if (b2 == -1) {
                if (!this.f15257a) {
                    this.f15257a = true;
                    this.f15260d.close();
                }
                return -1;
            }
            gVar.a(this.f15260d.a(), gVar.size() - b2, b2);
            this.f15260d.e();
            return b2;
        } catch (IOException e2) {
            if (!this.f15257a) {
                this.f15257a = true;
                this.f15259c.abort();
            }
            throw e2;
        }
    }

    public void close() {
        if (!this.f15257a && !e.a((z) this, 100, TimeUnit.MILLISECONDS)) {
            this.f15257a = true;
            this.f15259c.abort();
        }
        this.f15258b.close();
    }

    public B b() {
        return this.f15258b.b();
    }
}
