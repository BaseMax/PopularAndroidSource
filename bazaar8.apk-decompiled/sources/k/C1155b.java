package k;

import java.io.IOException;

/* renamed from: k.b  reason: case insensitive filesystem */
/* compiled from: AsyncTimeout */
class C1155b implements z {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ z f15727a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1156c f15728b;

    public C1155b(C1156c cVar, z zVar) {
        this.f15728b = cVar;
        this.f15727a = zVar;
    }

    public long b(g gVar, long j2) {
        this.f15728b.h();
        try {
            long b2 = this.f15727a.b(gVar, j2);
            this.f15728b.a(true);
            return b2;
        } catch (IOException e2) {
            throw this.f15728b.a(e2);
        } catch (Throwable th) {
            this.f15728b.a(false);
            throw th;
        }
    }

    public void close() {
        try {
            this.f15727a.close();
            this.f15728b.a(true);
        } catch (IOException e2) {
            throw this.f15728b.a(e2);
        } catch (Throwable th) {
            this.f15728b.a(false);
            throw th;
        }
    }

    public String toString() {
        return "AsyncTimeout.source(" + this.f15727a + ")";
    }

    public B b() {
        return this.f15728b;
    }
}
