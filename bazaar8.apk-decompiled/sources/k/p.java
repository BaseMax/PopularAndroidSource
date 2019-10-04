package k;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Okio */
class p implements z {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B f15756a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ InputStream f15757b;

    public p(B b2, InputStream inputStream) {
        this.f15756a = b2;
        this.f15757b = inputStream;
    }

    public long b(g gVar, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        } else if (j2 == 0) {
            return 0;
        } else {
            try {
                this.f15756a.e();
                w b2 = gVar.b(1);
                int read = this.f15757b.read(b2.f15767a, b2.f15769c, (int) Math.min(j2, (long) (8192 - b2.f15769c)));
                if (read == -1) {
                    return -1;
                }
                b2.f15769c += read;
                long j3 = (long) read;
                gVar.f15741c += j3;
                return j3;
            } catch (AssertionError e2) {
                if (s.a(e2)) {
                    throw new IOException(e2);
                }
                throw e2;
            }
        }
    }

    public void close() {
        this.f15757b.close();
    }

    public String toString() {
        return "source(" + this.f15757b + ")";
    }

    public B b() {
        return this.f15756a;
    }
}
