package c.c.a.e.h.a;

import j.a.a.c;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import k.B;
import k.g;
import k.h;
import k.i;
import k.z;

/* compiled from: CacheInterceptor */
class e implements z {

    /* renamed from: a  reason: collision with root package name */
    public boolean f5512a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f5513b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ c f5514c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5515d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ f f5516e;

    public e(f fVar, i iVar, c cVar, h hVar) {
        this.f5516e = fVar;
        this.f5513b = iVar;
        this.f5514c = cVar;
        this.f5515d = hVar;
    }

    public long b(g gVar, long j2) {
        try {
            long b2 = this.f5513b.b(gVar, j2);
            if (b2 == -1) {
                if (!this.f5512a) {
                    this.f5512a = true;
                    this.f5515d.close();
                }
                return -1;
            }
            gVar.a(this.f5515d.a(), gVar.size() - b2, b2);
            this.f5515d.e();
            return b2;
        } catch (IOException e2) {
            if (!this.f5512a) {
                this.f5512a = true;
                this.f5514c.abort();
            }
            throw e2;
        }
    }

    public void close() {
        if (!this.f5512a && !j.a.e.a((z) this, 100, TimeUnit.MILLISECONDS)) {
            this.f5512a = true;
            this.f5514c.abort();
        }
        this.f5513b.close();
    }

    public B b() {
        return this.f5513b.b();
    }
}
