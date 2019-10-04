package c.e.a.a.e.a;

import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import e.a.a.a.a.d.c;
import java.io.EOFException;
import java.util.Arrays;
import java.util.List;

/* compiled from: AmrExtractor */
public final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7601a = a.f7600a;

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f7602b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f7603c = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f7604d = I.e("#!AMR\n");

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f7605e = I.e("#!AMR-WB\n");

    /* renamed from: f  reason: collision with root package name */
    public static final int f7606f = f7603c[8];

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f7607g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7608h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7609i;

    /* renamed from: j  reason: collision with root package name */
    public long f7610j;

    /* renamed from: k  reason: collision with root package name */
    public int f7611k;

    /* renamed from: l  reason: collision with root package name */
    public int f7612l;
    public boolean m;
    public long n;
    public int o;
    public int p;
    public long q;
    public i r;
    public q s;
    public o t;
    public boolean u;

    public b() {
        this(0);
    }

    public static /* synthetic */ g[] b() {
        return new g[]{new b()};
    }

    public void a() {
    }

    public boolean a(h hVar) {
        return c(hVar);
    }

    public final boolean c(h hVar) {
        if (a(hVar, f7604d)) {
            this.f7609i = false;
            hVar.c(f7604d.length);
            return true;
        } else if (!a(hVar, f7605e)) {
            return false;
        } else {
            this.f7609i = true;
            hVar.c(f7605e.length);
            return true;
        }
    }

    public final int d(h hVar) {
        if (this.f7612l == 0) {
            try {
                this.f7611k = b(hVar);
                this.f7612l = this.f7611k;
                if (this.o == -1) {
                    this.n = hVar.getPosition();
                    this.o = this.f7611k;
                }
                if (this.o == this.f7611k) {
                    this.p++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int a2 = this.s.a(hVar, this.f7612l, true);
        if (a2 == -1) {
            return -1;
        }
        this.f7612l -= a2;
        if (this.f7612l > 0) {
            return 0;
        }
        this.s.a(this.q + this.f7610j, 1, this.f7611k, 0, null);
        this.f7610j += 20000;
        return 0;
    }

    public b(int i2) {
        this.f7608h = i2;
        this.f7607g = new byte[1];
        this.o = -1;
    }

    public void a(i iVar) {
        this.r = iVar;
        this.s = iVar.a(0, 1);
        iVar.a();
    }

    public final int b(h hVar) {
        hVar.b();
        hVar.a(this.f7607g, 0, 1);
        byte b2 = this.f7607g[0];
        if ((b2 & 131) <= 0) {
            return a((b2 >> 3) & 15);
        }
        throw new ParserException("Invalid padding bits for frame header " + b2);
    }

    public int a(h hVar, n nVar) {
        if (hVar.getPosition() != 0 || c(hVar)) {
            c();
            int d2 = d(hVar);
            a(hVar.getLength(), d2);
            return d2;
        }
        throw new ParserException("Could not find AMR header.");
    }

    public final boolean b(int i2) {
        return !this.f7609i && (i2 < 12 || i2 > 14);
    }

    public final void c() {
        if (!this.u) {
            this.u = true;
            this.s.a(Format.a((String) null, this.f7609i ? "audio/amr-wb" : "audio/3gpp", (String) null, -1, f7606f, 1, this.f7609i ? 16000 : c.MAX_BYTE_SIZE_PER_FILE, -1, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
        }
    }

    public void a(long j2, long j3) {
        this.f7610j = 0;
        this.f7611k = 0;
        this.f7612l = 0;
        if (j2 != 0) {
            o oVar = this.t;
            if (oVar instanceof c.e.a.a.e.c) {
                this.q = ((c.e.a.a.e.c) oVar).d(j2);
                return;
            }
        }
        this.q = 0;
    }

    public final boolean c(int i2) {
        return i2 >= 0 && i2 <= 15 && (d(i2) || b(i2));
    }

    public final boolean d(int i2) {
        return this.f7609i && (i2 < 10 || i2 > 13);
    }

    public final boolean a(h hVar, byte[] bArr) {
        hVar.b();
        byte[] bArr2 = new byte[bArr.length];
        hVar.a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    public final int a(int i2) {
        if (c(i2)) {
            return this.f7609i ? f7603c[i2] : f7602b[i2];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal AMR ");
        sb.append(this.f7609i ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i2);
        throw new ParserException(sb.toString());
    }

    public final void a(long j2, int i2) {
        if (!this.m) {
            if (!((this.f7608h & 1) == 0 || j2 == -1)) {
                int i3 = this.o;
                if (i3 == -1 || i3 == this.f7611k) {
                    if (this.p >= 20 || i2 == -1) {
                        this.t = a(j2);
                        this.r.a(this.t);
                        this.m = true;
                    }
                }
            }
            this.t = new o.b(-9223372036854775807L);
            this.r.a(this.t);
            this.m = true;
        }
    }

    public final o a(long j2) {
        long j3 = j2;
        c.e.a.a.e.c cVar = new c.e.a.a.e.c(j3, this.n, a(this.o, 20000), this.o);
        return cVar;
    }

    public static int a(int i2, long j2) {
        return (int) ((((long) (i2 * 8)) * RetryManager.NANOSECONDS_IN_MS) / j2);
    }
}
