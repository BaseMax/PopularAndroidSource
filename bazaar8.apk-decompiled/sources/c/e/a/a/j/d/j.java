package c.e.a.a.j.d;

import android.net.Uri;
import c.e.a.a.e.d;
import c.e.a.a.e.g;
import c.e.a.a.e.i;
import c.e.a.a.e.n;
import c.e.a.a.g.c.h;
import c.e.a.a.j.b.l;
import c.e.a.a.j.d.a.f;
import c.e.a.a.j.d.h;
import c.e.a.a.o.F;
import c.e.a.a.o.H;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import java.io.EOFException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: HlsMediaChunk */
public final class j extends l {

    /* renamed from: j  reason: collision with root package name */
    public static final AtomicInteger f8802j = new AtomicInteger();
    public final boolean A;
    public g B;
    public boolean C;
    public o D;
    public int E;
    public boolean F;
    public volatile boolean G;
    public boolean H;

    /* renamed from: k  reason: collision with root package name */
    public final int f8803k;

    /* renamed from: l  reason: collision with root package name */
    public final int f8804l;
    public final Uri m;
    public final c.e.a.a.n.j n;
    public final c.e.a.a.n.l o;
    public final boolean p;
    public final boolean q;
    public final F r;
    public final boolean s;
    public final h t;
    public final List<Format> u;
    public final DrmInitData v;
    public final g w;
    public final h x;
    public final v y;
    public final boolean z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(h hVar, c.e.a.a.n.j jVar, c.e.a.a.n.l lVar, Format format, boolean z2, c.e.a.a.n.j jVar2, c.e.a.a.n.l lVar2, boolean z3, Uri uri, List<Format> list, int i2, Object obj, long j2, long j3, long j4, int i3, boolean z4, boolean z5, F f2, DrmInitData drmInitData, g gVar, h hVar2, v vVar, boolean z6) {
        super(jVar, lVar, format, i2, obj, j2, j3, j4);
        c.e.a.a.n.l lVar3 = lVar2;
        this.z = z2;
        this.f8804l = i3;
        this.n = jVar2;
        this.o = lVar3;
        this.A = z3;
        this.m = uri;
        this.p = z5;
        this.r = f2;
        this.q = z4;
        this.t = hVar;
        this.u = list;
        this.v = drmInitData;
        this.w = gVar;
        this.x = hVar2;
        this.y = vVar;
        this.s = z6;
        this.F = lVar3 != null;
        this.f8803k = f8802j.getAndIncrement();
    }

    public static j a(h hVar, c.e.a.a.n.j jVar, Format format, long j2, f fVar, int i2, Uri uri, List<Format> list, int i3, Object obj, boolean z2, r rVar, j jVar2, byte[] bArr, byte[] bArr2) {
        c.e.a.a.n.j jVar3;
        boolean z3;
        c.e.a.a.n.l lVar;
        boolean z4;
        v vVar;
        h hVar2;
        g gVar;
        c.e.a.a.n.j jVar4 = jVar;
        f fVar2 = fVar;
        int i4 = i2;
        j jVar5 = jVar2;
        byte[] bArr3 = bArr;
        byte[] bArr4 = bArr2;
        f.a aVar = fVar2.o.get(i4);
        c.e.a.a.n.l lVar2 = new c.e.a.a.n.l(H.b(fVar2.f8769a, aVar.f8757a), aVar.f8766j, aVar.f8767k, null);
        boolean z5 = bArr3 != null;
        c.e.a.a.n.j a2 = a(jVar4, bArr3, z5 ? a(aVar.f8765i) : null);
        f.a aVar2 = aVar.f8758b;
        if (aVar2 != null) {
            boolean z6 = bArr4 != null;
            byte[] a3 = z6 ? a(aVar2.f8765i) : null;
            c.e.a.a.n.l lVar3 = new c.e.a.a.n.l(H.b(fVar2.f8769a, aVar2.f8757a), aVar2.f8766j, aVar2.f8767k, null);
            c.e.a.a.n.j a4 = a(jVar4, bArr4, a3);
            z3 = z6;
            jVar3 = a4;
            lVar = lVar3;
        } else {
            lVar = null;
            z3 = false;
            jVar3 = null;
        }
        long j3 = j2 + aVar.f8762f;
        long j4 = j3 + aVar.f8759c;
        int i5 = fVar2.f8752h + aVar.f8761e;
        if (jVar5 != null) {
            h hVar3 = jVar5.x;
            v vVar2 = jVar5.y;
            boolean z7 = !uri.equals(jVar5.m) || !jVar5.H;
            hVar2 = hVar3;
            vVar = vVar2;
            z4 = z7;
            gVar = (!jVar5.C || jVar5.f8804l != i5 || z7) ? null : jVar5.B;
        } else {
            Uri uri2 = uri;
            hVar2 = new h();
            vVar = new v(10);
            gVar = null;
            z4 = false;
        }
        j jVar6 = new j(hVar, a2, lVar2, format, z5, jVar3, lVar, z3, uri, list, i3, obj, j3, j4, fVar2.f8753i + ((long) i4), i5, aVar.f8768l, z2, rVar.a(i5), aVar.f8763g, gVar, hVar2, vVar, z4);
        return jVar6;
    }

    public void b() {
        this.G = true;
    }

    public boolean h() {
        return this.H;
    }

    public final void i() {
        if (!this.p) {
            this.r.e();
        } else if (this.r.a() == Long.MAX_VALUE) {
            this.r.d(this.f8464f);
        }
        a((c.e.a.a.n.j) this.f8466h, this.f8459a, this.z);
    }

    public final void j() {
        if (this.F) {
            a(this.n, this.o, this.A);
            this.E = 0;
            this.F = false;
        }
    }

    public void a(o oVar) {
        this.D = oVar;
    }

    public void a() {
        if (this.B == null) {
            g gVar = this.w;
            if (gVar != null) {
                this.B = gVar;
                this.C = true;
                this.F = false;
                this.D.a(this.f8803k, this.s, true);
            }
        }
        j();
        if (!this.G) {
            if (!this.q) {
                i();
            }
            this.H = true;
        }
    }

    public final void a(c.e.a.a.n.j jVar, c.e.a.a.n.l lVar, boolean z2) {
        c.e.a.a.n.l lVar2;
        boolean z3;
        d a2;
        int i2 = 0;
        if (z2) {
            z3 = this.E != 0;
            lVar2 = lVar;
        } else {
            lVar2 = lVar.a((long) this.E);
            z3 = false;
        }
        try {
            a2 = a(jVar, lVar2);
            if (z3) {
                a2.c(this.E);
            }
            while (i2 == 0) {
                if (this.G) {
                    break;
                }
                i2 = this.B.a((c.e.a.a.e.h) a2, (n) null);
            }
            this.E = (int) (a2.getPosition() - lVar.f9470e);
            I.a(jVar);
        } catch (Throwable th) {
            I.a(jVar);
            throw th;
        }
    }

    public final d a(c.e.a.a.n.j jVar, c.e.a.a.n.l lVar) {
        c.e.a.a.n.l lVar2 = lVar;
        d dVar = new d(jVar, lVar2.f9470e, jVar.a(lVar));
        if (this.B != null) {
            return dVar;
        }
        long a2 = a((c.e.a.a.e.h) dVar);
        dVar.b();
        d dVar2 = dVar;
        h.a a3 = this.t.a(this.w, lVar2.f9466a, this.f8461c, this.u, this.v, this.r, jVar.a(), dVar2);
        this.B = a3.f8797a;
        this.C = a3.f8799c;
        if (a3.f8798b) {
            this.D.e(a2 != -9223372036854775807L ? this.r.b(a2) : this.f8464f);
        }
        this.D.a(this.f8803k, this.s, false);
        this.B.a((i) this.D);
        return dVar2;
    }

    public final long a(c.e.a.a.e.h hVar) {
        hVar.b();
        try {
            hVar.a(this.y.f9634a, 0, 10);
            this.y.c(10);
            if (this.y.x() != c.e.a.a.g.c.h.f8348b) {
                return -9223372036854775807L;
            }
            this.y.f(3);
            int t2 = this.y.t();
            int i2 = t2 + 10;
            if (i2 > this.y.b()) {
                v vVar = this.y;
                byte[] bArr = vVar.f9634a;
                vVar.c(i2);
                System.arraycopy(bArr, 0, this.y.f9634a, 0, 10);
            }
            hVar.a(this.y.f9634a, 10, t2);
            Metadata a2 = this.x.a(this.y.f9634a, t2);
            if (a2 == null) {
                return -9223372036854775807L;
            }
            int a3 = a2.a();
            for (int i3 = 0; i3 < a3; i3++) {
                Metadata.Entry a4 = a2.a(i3);
                if (a4 instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) a4;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.f12641b)) {
                        System.arraycopy(privFrame.f12642c, 0, this.y.f9634a, 0, 8);
                        this.y.c(8);
                        return this.y.q() & 8589934591L;
                    }
                }
            }
            return -9223372036854775807L;
        } catch (EOFException unused) {
        }
    }

    public static byte[] a(String str) {
        if (I.l(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (bArr.length - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    public static c.e.a.a.n.j a(c.e.a.a.n.j jVar, byte[] bArr, byte[] bArr2) {
        return bArr != null ? new d(jVar, bArr, bArr2) : jVar;
    }
}
