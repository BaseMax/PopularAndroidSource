package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.o.F;
import c.e.a.a.o.p;
import c.e.a.a.o.u;
import c.e.a.a.o.v;

/* compiled from: PesReader */
public final class x implements J {

    /* renamed from: a  reason: collision with root package name */
    public final o f8273a;

    /* renamed from: b  reason: collision with root package name */
    public final u f8274b = new u(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    public int f8275c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f8276d;

    /* renamed from: e  reason: collision with root package name */
    public F f8277e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8278f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8279g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8280h;

    /* renamed from: i  reason: collision with root package name */
    public int f8281i;

    /* renamed from: j  reason: collision with root package name */
    public int f8282j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f8283k;

    /* renamed from: l  reason: collision with root package name */
    public long f8284l;

    public x(o oVar) {
        this.f8273a = oVar;
    }

    public void a(F f2, i iVar, J.d dVar) {
        this.f8277e = f2;
        this.f8273a.a(iVar, dVar);
    }

    public final boolean b() {
        this.f8274b.b(0);
        int a2 = this.f8274b.a(24);
        if (a2 != 1) {
            p.d("PesReader", "Unexpected start code prefix: " + a2);
            this.f8282j = -1;
            return false;
        }
        this.f8274b.c(8);
        int a3 = this.f8274b.a(16);
        this.f8274b.c(5);
        this.f8283k = this.f8274b.f();
        this.f8274b.c(2);
        this.f8278f = this.f8274b.f();
        this.f8279g = this.f8274b.f();
        this.f8274b.c(6);
        this.f8281i = this.f8274b.a(8);
        if (a3 == 0) {
            this.f8282j = -1;
        } else {
            this.f8282j = ((a3 + 6) - 9) - this.f8281i;
        }
        return true;
    }

    public final void c() {
        this.f8274b.b(0);
        this.f8284l = -9223372036854775807L;
        if (this.f8278f) {
            this.f8274b.c(4);
            this.f8274b.c(1);
            this.f8274b.c(1);
            long a2 = (((long) this.f8274b.a(3)) << 30) | ((long) (this.f8274b.a(15) << 15)) | ((long) this.f8274b.a(15));
            this.f8274b.c(1);
            if (!this.f8280h && this.f8279g) {
                this.f8274b.c(4);
                this.f8274b.c(1);
                this.f8274b.c(1);
                this.f8274b.c(1);
                this.f8277e.b((((long) this.f8274b.a(3)) << 30) | ((long) (this.f8274b.a(15) << 15)) | ((long) this.f8274b.a(15)));
                this.f8280h = true;
            }
            this.f8284l = this.f8277e.b(a2);
        }
    }

    public final void a() {
        this.f8275c = 0;
        this.f8276d = 0;
        this.f8280h = false;
        this.f8273a.a();
    }

    public final void a(v vVar, int i2) {
        if ((i2 & 1) != 0) {
            int i3 = this.f8275c;
            if (!(i3 == 0 || i3 == 1)) {
                if (i3 == 2) {
                    p.d("PesReader", "Unexpected start indicator reading extended header");
                } else if (i3 == 3) {
                    if (this.f8282j != -1) {
                        p.d("PesReader", "Unexpected start indicator: expected " + this.f8282j + " more bytes");
                    }
                    this.f8273a.b();
                } else {
                    throw new IllegalStateException();
                }
            }
            a(1);
        }
        while (vVar.a() > 0) {
            int i4 = this.f8275c;
            if (i4 != 0) {
                int i5 = 0;
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (a(vVar, this.f8274b.f9630a, Math.min(10, this.f8281i)) && a(vVar, (byte[]) null, this.f8281i)) {
                            c();
                            if (this.f8283k) {
                                i5 = 4;
                            }
                            i2 |= i5;
                            this.f8273a.a(this.f8284l, i2);
                            a(3);
                        }
                    } else if (i4 == 3) {
                        int a2 = vVar.a();
                        int i6 = this.f8282j;
                        if (i6 != -1) {
                            i5 = a2 - i6;
                        }
                        if (i5 > 0) {
                            a2 -= i5;
                            vVar.d(vVar.c() + a2);
                        }
                        this.f8273a.a(vVar);
                        int i7 = this.f8282j;
                        if (i7 != -1) {
                            this.f8282j = i7 - a2;
                            if (this.f8282j == 0) {
                                this.f8273a.b();
                                a(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(vVar, this.f8274b.f9630a, 9)) {
                    if (b()) {
                        i5 = 2;
                    }
                    a(i5);
                }
            } else {
                vVar.f(vVar.a());
            }
        }
    }

    public final void a(int i2) {
        this.f8275c = i2;
        this.f8276d = 0;
    }

    public final boolean a(v vVar, byte[] bArr, int i2) {
        int min = Math.min(vVar.a(), i2 - this.f8276d);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            vVar.f(min);
        } else {
            vVar.a(bArr, this.f8276d, min);
        }
        this.f8276d += min;
        if (this.f8276d != i2) {
            z = false;
        }
        return z;
    }
}
