package k;

import java.io.IOException;

/* renamed from: k.a  reason: case insensitive filesystem */
/* compiled from: AsyncTimeout */
class C1154a implements y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ y f15725a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1156c f15726b;

    public C1154a(C1156c cVar, y yVar) {
        this.f15726b = cVar;
        this.f15725a = yVar;
    }

    public void a(g gVar, long j2) {
        C.a(gVar.f15741c, 0, j2);
        while (true) {
            long j3 = 0;
            if (j2 > 0) {
                w wVar = gVar.f15740b;
                while (true) {
                    if (j3 >= 65536) {
                        break;
                    }
                    j3 += (long) (wVar.f15769c - wVar.f15768b);
                    if (j3 >= j2) {
                        j3 = j2;
                        break;
                    }
                    wVar = wVar.f15772f;
                }
                this.f15726b.h();
                try {
                    this.f15725a.a(gVar, j3);
                    j2 -= j3;
                    this.f15726b.a(true);
                } catch (IOException e2) {
                    throw this.f15726b.a(e2);
                } catch (Throwable th) {
                    this.f15726b.a(false);
                    throw th;
                }
            } else {
                return;
            }
        }
    }

    public B b() {
        return this.f15726b;
    }

    public void close() {
        this.f15726b.h();
        try {
            this.f15725a.close();
            this.f15726b.a(true);
        } catch (IOException e2) {
            throw this.f15726b.a(e2);
        } catch (Throwable th) {
            this.f15726b.a(false);
            throw th;
        }
    }

    public void flush() {
        this.f15726b.h();
        try {
            this.f15725a.flush();
            this.f15726b.a(true);
        } catch (IOException e2) {
            throw this.f15726b.a(e2);
        } catch (Throwable th) {
            this.f15726b.a(false);
            throw th;
        }
    }

    public String toString() {
        return "AsyncTimeout.sink(" + this.f15725a + ")";
    }
}
