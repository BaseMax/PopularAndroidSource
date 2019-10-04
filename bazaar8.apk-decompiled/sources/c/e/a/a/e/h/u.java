package c.e.a.a.e.h;

import android.util.Pair;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.C0739g;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Collections;
import java.util.List;

/* compiled from: LatmReader */
public final class u implements o {

    /* renamed from: a  reason: collision with root package name */
    public final String f8244a;

    /* renamed from: b  reason: collision with root package name */
    public final v f8245b = new v(1024);

    /* renamed from: c  reason: collision with root package name */
    public final c.e.a.a.o.u f8246c = new c.e.a.a.o.u(this.f8245b.f9634a);

    /* renamed from: d  reason: collision with root package name */
    public q f8247d;

    /* renamed from: e  reason: collision with root package name */
    public Format f8248e;

    /* renamed from: f  reason: collision with root package name */
    public String f8249f;

    /* renamed from: g  reason: collision with root package name */
    public int f8250g;

    /* renamed from: h  reason: collision with root package name */
    public int f8251h;

    /* renamed from: i  reason: collision with root package name */
    public int f8252i;

    /* renamed from: j  reason: collision with root package name */
    public int f8253j;

    /* renamed from: k  reason: collision with root package name */
    public long f8254k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8255l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public int t;

    public u(String str) {
        this.f8244a = str;
    }

    public void a() {
        this.f8250g = 0;
        this.f8255l = false;
    }

    public void b() {
    }

    public final void b(c.e.a.a.o.u uVar) {
        if (!uVar.f()) {
            this.f8255l = true;
            f(uVar);
        } else if (!this.f8255l) {
            return;
        }
        if (this.m != 0) {
            throw new ParserException();
        } else if (this.n == 0) {
            a(uVar, e(uVar));
            if (this.p) {
                uVar.c((int) this.q);
            }
        } else {
            throw new ParserException();
        }
    }

    public final int c(c.e.a.a.o.u uVar) {
        int b2 = uVar.b();
        Pair<Integer, Integer> a2 = C0739g.a(uVar, true);
        this.r = ((Integer) a2.first).intValue();
        this.t = ((Integer) a2.second).intValue();
        return b2 - uVar.b();
    }

    public final void d(c.e.a.a.o.u uVar) {
        this.o = uVar.a(3);
        int i2 = this.o;
        if (i2 == 0) {
            uVar.c(8);
        } else if (i2 == 1) {
            uVar.c(9);
        } else if (i2 == 3 || i2 == 4 || i2 == 5) {
            uVar.c(6);
        } else if (i2 == 6 || i2 == 7) {
            uVar.c(1);
        } else {
            throw new IllegalStateException();
        }
    }

    public final int e(c.e.a.a.o.u uVar) {
        int a2;
        if (this.o == 0) {
            int i2 = 0;
            do {
                a2 = uVar.a(8);
                i2 += a2;
            } while (a2 == 255);
            return i2;
        }
        throw new ParserException();
    }

    public final void f(c.e.a.a.o.u uVar) {
        boolean f2;
        c.e.a.a.o.u uVar2 = uVar;
        int a2 = uVar2.a(1);
        this.m = a2 == 1 ? uVar2.a(1) : 0;
        if (this.m == 0) {
            if (a2 == 1) {
                a(uVar);
            }
            if (uVar.f()) {
                this.n = uVar2.a(6);
                int a3 = uVar2.a(4);
                int a4 = uVar2.a(3);
                if (a3 == 0 && a4 == 0) {
                    if (a2 == 0) {
                        int e2 = uVar.e();
                        int c2 = c(uVar);
                        uVar2.b(e2);
                        byte[] bArr = new byte[((c2 + 7) / 8)];
                        uVar2.a(bArr, 0, c2);
                        Format a5 = Format.a(this.f8249f, "audio/mp4a-latm", (String) null, -1, -1, this.t, this.r, (List<byte[]>) Collections.singletonList(bArr), (DrmInitData) null, 0, this.f8244a);
                        if (!a5.equals(this.f8248e)) {
                            this.f8248e = a5;
                            this.s = 1024000000 / ((long) a5.w);
                            this.f8247d.a(a5);
                        }
                    } else {
                        uVar2.c(((int) a(uVar)) - c(uVar));
                    }
                    d(uVar);
                    this.p = uVar.f();
                    this.q = 0;
                    if (this.p) {
                        if (a2 == 1) {
                            this.q = a(uVar);
                        } else {
                            do {
                                f2 = uVar.f();
                                this.q = (this.q << 8) + ((long) uVar2.a(8));
                            } while (f2);
                        }
                    }
                    if (uVar.f()) {
                        uVar2.c(8);
                        return;
                    }
                    return;
                }
                throw new ParserException();
            }
            throw new ParserException();
        }
        throw new ParserException();
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8247d = iVar.a(dVar.c(), 1);
        this.f8249f = dVar.b();
    }

    public void a(long j2, int i2) {
        this.f8254k = j2;
    }

    public void a(v vVar) {
        while (vVar.a() > 0) {
            int i2 = this.f8250g;
            if (i2 != 0) {
                if (i2 == 1) {
                    int u = vVar.u();
                    if ((u & 224) == 224) {
                        this.f8253j = u;
                        this.f8250g = 2;
                    } else if (u != 86) {
                        this.f8250g = 0;
                    }
                } else if (i2 == 2) {
                    this.f8252i = ((this.f8253j & -225) << 8) | vVar.u();
                    int i3 = this.f8252i;
                    if (i3 > this.f8245b.f9634a.length) {
                        a(i3);
                    }
                    this.f8251h = 0;
                    this.f8250g = 3;
                } else if (i2 == 3) {
                    int min = Math.min(vVar.a(), this.f8252i - this.f8251h);
                    vVar.a(this.f8246c.f9630a, this.f8251h, min);
                    this.f8251h += min;
                    if (this.f8251h == this.f8252i) {
                        this.f8246c.b(0);
                        b(this.f8246c);
                        this.f8250g = 0;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (vVar.u() == 86) {
                this.f8250g = 1;
            }
        }
    }

    public final void a(c.e.a.a.o.u uVar, int i2) {
        int e2 = uVar.e();
        if ((e2 & 7) == 0) {
            this.f8245b.e(e2 >> 3);
        } else {
            uVar.a(this.f8245b.f9634a, 0, i2 * 8);
            this.f8245b.e(0);
        }
        this.f8247d.a(this.f8245b, i2);
        this.f8247d.a(this.f8254k, 1, i2, 0, null);
        this.f8254k += this.s;
    }

    public final void a(int i2) {
        this.f8245b.c(i2);
        this.f8246c.a(this.f8245b.f9634a);
    }

    public static long a(c.e.a.a.o.u uVar) {
        return (long) uVar.a((uVar.a(2) + 1) * 8);
    }
}
