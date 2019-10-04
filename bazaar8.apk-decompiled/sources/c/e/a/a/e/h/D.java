package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.o.F;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* compiled from: SectionReader */
public final class D implements J {

    /* renamed from: a  reason: collision with root package name */
    public final C f8022a;

    /* renamed from: b  reason: collision with root package name */
    public final v f8023b = new v(32);

    /* renamed from: c  reason: collision with root package name */
    public int f8024c;

    /* renamed from: d  reason: collision with root package name */
    public int f8025d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8026e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8027f;

    public D(C c2) {
        this.f8022a = c2;
    }

    public void a(F f2, i iVar, J.d dVar) {
        this.f8022a.a(f2, iVar, dVar);
        this.f8027f = true;
    }

    public void a() {
        this.f8027f = true;
    }

    public void a(v vVar, int i2) {
        boolean z = (i2 & 1) != 0;
        int u = z ? vVar.u() + vVar.c() : -1;
        if (this.f8027f) {
            if (z) {
                this.f8027f = false;
                vVar.e(u);
                this.f8025d = 0;
            } else {
                return;
            }
        }
        while (vVar.a() > 0) {
            int i3 = this.f8025d;
            if (i3 < 3) {
                if (i3 == 0) {
                    int u2 = vVar.u();
                    vVar.e(vVar.c() - 1);
                    if (u2 == 255) {
                        this.f8027f = true;
                        return;
                    }
                }
                int min = Math.min(vVar.a(), 3 - this.f8025d);
                vVar.a(this.f8023b.f9634a, this.f8025d, min);
                this.f8025d += min;
                if (this.f8025d == 3) {
                    this.f8023b.c(3);
                    this.f8023b.f(1);
                    int u3 = this.f8023b.u();
                    int u4 = this.f8023b.u();
                    this.f8026e = (u3 & 128) != 0;
                    this.f8024c = (((u3 & 15) << 8) | u4) + 3;
                    int b2 = this.f8023b.b();
                    int i4 = this.f8024c;
                    if (b2 < i4) {
                        v vVar2 = this.f8023b;
                        byte[] bArr = vVar2.f9634a;
                        vVar2.c(Math.min(4098, Math.max(i4, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f8023b.f9634a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(vVar.a(), this.f8024c - this.f8025d);
                vVar.a(this.f8023b.f9634a, this.f8025d, min2);
                this.f8025d += min2;
                int i5 = this.f8025d;
                int i6 = this.f8024c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f8026e) {
                        this.f8023b.c(i6);
                    } else if (I.a(this.f8023b.f9634a, 0, i6, -1) != 0) {
                        this.f8027f = true;
                        return;
                    } else {
                        this.f8023b.c(this.f8024c - 4);
                    }
                    this.f8022a.a(this.f8023b);
                    this.f8025d = 0;
                }
            }
        }
    }
}
