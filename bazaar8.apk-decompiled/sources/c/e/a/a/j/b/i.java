package c.e.a.a.j.b;

import c.e.a.a.e.d;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.n;
import c.e.a.a.j.b.e;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;

/* compiled from: ContainerMediaChunk */
public class i extends a {
    public static final n n = new n();
    public final int o;
    public final long p;
    public final e q;
    public long r;
    public volatile boolean s;
    public boolean t;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public i(j jVar, l lVar, Format format, int i2, Object obj, long j2, long j3, long j4, long j5, long j6, int i3, long j7, e eVar) {
        super(jVar, lVar, format, i2, obj, j2, j3, j4, j5, j6);
        this.o = i3;
        this.p = j7;
        this.q = eVar;
    }

    public final void a() {
        d dVar;
        l a2 = this.f8459a.a(this.r);
        try {
            dVar = new d(this.f8466h, a2.f9470e, this.f8466h.a(a2));
            if (this.r == 0) {
                c i2 = i();
                i2.a(this.p);
                e eVar = this.q;
                b(i2);
                eVar.a(i2, this.f8451j == -9223372036854775807L ? -9223372036854775807L : this.f8451j - this.p, this.f8452k == -9223372036854775807L ? -9223372036854775807L : this.f8452k - this.p);
            }
            g gVar = this.q.f8467a;
            boolean z = false;
            int i3 = 0;
            while (i3 == 0 && !this.s) {
                i3 = gVar.a((h) dVar, n);
            }
            if (i3 != 1) {
                z = true;
            }
            C0737e.b(z);
            this.r = dVar.getPosition() - this.f8459a.f9470e;
            I.a((j) this.f8466h);
            this.t = true;
        } catch (Throwable th) {
            I.a((j) this.f8466h);
            throw th;
        }
    }

    public e.b b(c cVar) {
        return cVar;
    }

    public final void b() {
        this.s = true;
    }

    public long g() {
        return this.f8508i + ((long) this.o);
    }

    public boolean h() {
        return this.t;
    }
}
