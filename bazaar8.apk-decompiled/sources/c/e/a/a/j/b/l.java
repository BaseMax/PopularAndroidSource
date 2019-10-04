package c.e.a.a.j.b;

import c.e.a.a.n.j;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;

/* compiled from: MediaChunk */
public abstract class l extends d {

    /* renamed from: i  reason: collision with root package name */
    public final long f8508i;

    public l(j jVar, c.e.a.a.n.l lVar, Format format, int i2, Object obj, long j2, long j3, long j4) {
        super(jVar, lVar, 1, format, i2, obj, j2, j3);
        C0737e.a(format);
        this.f8508i = j4;
    }

    public long g() {
        long j2 = this.f8508i;
        if (j2 != -1) {
            return 1 + j2;
        }
        return -1;
    }

    public abstract boolean h();
}
