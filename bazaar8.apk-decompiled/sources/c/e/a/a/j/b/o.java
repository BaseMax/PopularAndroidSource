package c.e.a.a.j.b;

import c.e.a.a.e.d;
import c.e.a.a.e.q;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;

/* compiled from: SingleSampleMediaChunk */
public final class o extends a {
    public final int n;
    public final Format o;
    public long p;
    public boolean q;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public o(j jVar, l lVar, Format format, int i2, Object obj, long j2, long j3, long j4, int i3, Format format2) {
        super(jVar, lVar, format, i2, obj, j2, j3, -9223372036854775807L, -9223372036854775807L, j4);
        this.n = i3;
        this.o = format2;
    }

    /* JADX INFO: finally extract failed */
    public void a() {
        try {
            long a2 = this.f8466h.a(this.f8459a.a(this.p));
            if (a2 != -1) {
                a2 += this.p;
            }
            d dVar = new d(this.f8466h, this.p, a2);
            c i2 = i();
            i2.a(0);
            q a3 = i2.a(0, this.n);
            a3.a(this.o);
            for (int i3 = 0; i3 != -1; i3 = a3.a(dVar, Integer.MAX_VALUE, true)) {
                this.p += (long) i3;
            }
            a3.a(this.f8464f, 1, (int) this.p, 0, null);
            I.a((j) this.f8466h);
            this.q = true;
        } catch (Throwable th) {
            I.a((j) this.f8466h);
            throw th;
        }
    }

    public void b() {
    }

    public boolean h() {
        return this.q;
    }
}
