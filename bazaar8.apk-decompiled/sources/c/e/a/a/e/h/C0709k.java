package c.e.a.a.e.h;

import android.util.Pair;
import c.e.a.a.e.f;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.C0739g;
import c.e.a.a.o.p;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: c.e.a.a.e.h.k  reason: case insensitive filesystem */
/* compiled from: AdtsReader */
public final class C0709k implements o {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f8130a = {73, 68, 51};

    /* renamed from: b  reason: collision with root package name */
    public final boolean f8131b;

    /* renamed from: c  reason: collision with root package name */
    public final u f8132c;

    /* renamed from: d  reason: collision with root package name */
    public final v f8133d;

    /* renamed from: e  reason: collision with root package name */
    public final String f8134e;

    /* renamed from: f  reason: collision with root package name */
    public String f8135f;

    /* renamed from: g  reason: collision with root package name */
    public q f8136g;

    /* renamed from: h  reason: collision with root package name */
    public q f8137h;

    /* renamed from: i  reason: collision with root package name */
    public int f8138i;

    /* renamed from: j  reason: collision with root package name */
    public int f8139j;

    /* renamed from: k  reason: collision with root package name */
    public int f8140k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8141l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public long r;
    public int s;
    public long t;
    public q u;
    public long v;

    public C0709k(boolean z) {
        this(z, null);
    }

    public static boolean a(int i2) {
        return (i2 & 65526) == 65520;
    }

    public void a() {
        f();
    }

    public void b() {
    }

    public final void b(v vVar) {
        if (vVar.a() != 0) {
            this.f8132c.f9630a[0] = vVar.f9634a[vVar.c()];
            this.f8132c.b(2);
            int a2 = this.f8132c.a(4);
            int i2 = this.o;
            if (i2 == -1 || a2 == i2) {
                if (!this.m) {
                    this.m = true;
                    this.n = this.p;
                    this.o = a2;
                }
                i();
                return;
            }
            f();
        }
    }

    public long c() {
        return this.r;
    }

    public final void d() {
        this.f8132c.b(0);
        if (!this.q) {
            int a2 = this.f8132c.a(2) + 1;
            if (a2 != 2) {
                p.d("AdtsReader", "Detected audio object type: " + a2 + ", but assuming AAC LC.");
                a2 = 2;
            }
            this.f8132c.c(5);
            byte[] a3 = C0739g.a(a2, this.o, this.f8132c.a(3));
            Pair<Integer, Integer> a4 = C0739g.a(a3);
            Format a5 = Format.a(this.f8135f, "audio/mp4a-latm", (String) null, -1, -1, ((Integer) a4.second).intValue(), ((Integer) a4.first).intValue(), (List<byte[]>) Collections.singletonList(a3), (DrmInitData) null, 0, this.f8134e);
            this.r = 1024000000 / ((long) a5.w);
            this.f8136g.a(a5);
            this.q = true;
        } else {
            this.f8132c.c(10);
        }
        this.f8132c.c(4);
        int a6 = (this.f8132c.a(13) - 2) - 5;
        if (this.f8141l) {
            a6 -= 2;
        }
        a(this.f8136g, this.r, 0, a6);
    }

    public final void e() {
        this.f8137h.a(this.f8133d, 10);
        this.f8133d.e(6);
        a(this.f8137h, 0, 10, this.f8133d.t() + 10);
    }

    public final void f() {
        this.m = false;
        h();
    }

    public final void g() {
        this.f8138i = 1;
        this.f8139j = 0;
    }

    public final void h() {
        this.f8138i = 0;
        this.f8139j = 0;
        this.f8140k = 256;
    }

    public final void i() {
        this.f8138i = 3;
        this.f8139j = 0;
    }

    public final void j() {
        this.f8138i = 2;
        this.f8139j = f8130a.length;
        this.s = 0;
        this.f8133d.e(0);
    }

    public C0709k(boolean z, String str) {
        this.f8132c = new u(new byte[7]);
        this.f8133d = new v(Arrays.copyOf(f8130a, 10));
        h();
        this.n = -1;
        this.o = -1;
        this.r = -9223372036854775807L;
        this.f8131b = z;
        this.f8134e = str;
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8135f = dVar.b();
        this.f8136g = iVar.a(dVar.c(), 1);
        if (this.f8131b) {
            dVar.a();
            this.f8137h = iVar.a(dVar.c(), 4);
            this.f8137h.a(Format.a(dVar.b(), "application/id3", (String) null, -1, (DrmInitData) null));
            return;
        }
        this.f8137h = new f();
    }

    public final void c(v vVar) {
        byte[] bArr = vVar.f9634a;
        int c2 = vVar.c();
        int d2 = vVar.d();
        while (c2 < d2) {
            int i2 = c2 + 1;
            byte b2 = bArr[c2] & 255;
            if (this.f8140k != 512 || !a((byte) -1, (byte) b2) || (!this.m && !a(vVar, i2 - 2))) {
                int i3 = this.f8140k;
                byte b3 = b2 | i3;
                if (b3 == 329) {
                    this.f8140k = 768;
                } else if (b3 == 511) {
                    this.f8140k = 512;
                } else if (b3 == 836) {
                    this.f8140k = 1024;
                } else if (b3 == 1075) {
                    j();
                    vVar.e(i2);
                    return;
                } else if (i3 != 256) {
                    this.f8140k = 256;
                    i2--;
                }
                c2 = i2;
            } else {
                this.p = (b2 & 8) >> 3;
                boolean z = true;
                if ((b2 & 1) != 0) {
                    z = false;
                }
                this.f8141l = z;
                if (!this.m) {
                    g();
                } else {
                    i();
                }
                vVar.e(i2);
                return;
            }
        }
        vVar.e(c2);
    }

    public void a(long j2, int i2) {
        this.t = j2;
    }

    public void a(v vVar) {
        while (vVar.a() > 0) {
            int i2 = this.f8138i;
            if (i2 == 0) {
                c(vVar);
            } else if (i2 == 1) {
                b(vVar);
            } else if (i2 != 2) {
                if (i2 == 3) {
                    if (a(vVar, this.f8132c.f9630a, this.f8141l ? 7 : 5)) {
                        d();
                    }
                } else if (i2 == 4) {
                    d(vVar);
                } else {
                    throw new IllegalStateException();
                }
            } else if (a(vVar, this.f8133d.f9634a, 10)) {
                e();
            }
        }
    }

    public final boolean b(v vVar, byte[] bArr, int i2) {
        if (vVar.a() < i2) {
            return false;
        }
        vVar.a(bArr, 0, i2);
        return true;
    }

    public final boolean a(v vVar, byte[] bArr, int i2) {
        int min = Math.min(vVar.a(), i2 - this.f8139j);
        vVar.a(bArr, this.f8139j, min);
        this.f8139j += min;
        return this.f8139j == i2;
    }

    public final void d(v vVar) {
        int min = Math.min(vVar.a(), this.s - this.f8139j);
        this.u.a(vVar, min);
        this.f8139j += min;
        int i2 = this.f8139j;
        int i3 = this.s;
        if (i2 == i3) {
            this.u.a(this.t, 1, i3, 0, null);
            this.t += this.v;
            h();
        }
    }

    public final void a(q qVar, long j2, int i2, int i3) {
        this.f8138i = 4;
        this.f8139j = i2;
        this.u = qVar;
        this.v = j2;
        this.s = i3;
    }

    public final boolean a(v vVar, int i2) {
        vVar.e(i2 + 1);
        boolean z = true;
        if (!b(vVar, this.f8132c.f9630a, 1)) {
            return false;
        }
        this.f8132c.b(4);
        int a2 = this.f8132c.a(1);
        int i3 = this.n;
        if (i3 != -1 && a2 != i3) {
            return false;
        }
        if (this.o != -1) {
            if (!b(vVar, this.f8132c.f9630a, 1)) {
                return true;
            }
            this.f8132c.b(2);
            if (this.f8132c.a(4) != this.o) {
                return false;
            }
            vVar.e(i2 + 2);
        }
        if (!b(vVar, this.f8132c.f9630a, 4)) {
            return true;
        }
        this.f8132c.b(14);
        int a3 = this.f8132c.a(13);
        if (a3 <= 6) {
            return false;
        }
        int i4 = i2 + a3;
        int i5 = i4 + 1;
        if (i5 >= vVar.d()) {
            return true;
        }
        byte[] bArr = vVar.f9634a;
        if (!a(bArr[i4], bArr[i5]) || !(this.n == -1 || ((vVar.f9634a[i5] & 8) >> 3) == a2)) {
            z = false;
        }
        return z;
    }

    public final boolean a(byte b2, byte b3) {
        return a((int) ((b2 & 255) << 8) | (b3 & 255));
    }
}
