package k;

import java.io.OutputStream;

/* compiled from: Okio */
class o implements y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B f15754a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ OutputStream f15755b;

    public o(B b2, OutputStream outputStream) {
        this.f15754a = b2;
        this.f15755b = outputStream;
    }

    public void a(g gVar, long j2) {
        C.a(gVar.f15741c, 0, j2);
        while (j2 > 0) {
            this.f15754a.e();
            w wVar = gVar.f15740b;
            int min = (int) Math.min(j2, (long) (wVar.f15769c - wVar.f15768b));
            this.f15755b.write(wVar.f15767a, wVar.f15768b, min);
            wVar.f15768b += min;
            long j3 = (long) min;
            j2 -= j3;
            gVar.f15741c -= j3;
            if (wVar.f15768b == wVar.f15769c) {
                gVar.f15740b = wVar.b();
                x.a(wVar);
            }
        }
    }

    public B b() {
        return this.f15754a;
    }

    public void close() {
        this.f15755b.close();
    }

    public void flush() {
        this.f15755b.flush();
    }

    public String toString() {
        return "sink(" + this.f15755b + ")";
    }
}
