package c.e.a.a.e.h;

import c.e.a.a.e.h;
import c.e.a.a.e.n;
import c.e.a.a.o.F;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* compiled from: TsDurationReader */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public final F f8036a = new F(0);

    /* renamed from: b  reason: collision with root package name */
    public final v f8037b = new v();

    /* renamed from: c  reason: collision with root package name */
    public boolean f8038c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8039d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8040e;

    /* renamed from: f  reason: collision with root package name */
    public long f8041f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    public long f8042g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    public long f8043h = -9223372036854775807L;

    public int a(h hVar, n nVar, int i2) {
        if (i2 <= 0) {
            return a(hVar);
        }
        if (!this.f8040e) {
            return c(hVar, nVar, i2);
        }
        if (this.f8042g == -9223372036854775807L) {
            return a(hVar);
        }
        if (!this.f8039d) {
            return b(hVar, nVar, i2);
        }
        long j2 = this.f8041f;
        if (j2 == -9223372036854775807L) {
            return a(hVar);
        }
        this.f8043h = this.f8036a.b(this.f8042g) - this.f8036a.b(j2);
        return a(hVar);
    }

    public F b() {
        return this.f8036a;
    }

    public boolean c() {
        return this.f8038c;
    }

    public final int b(h hVar, n nVar, int i2) {
        int min = (int) Math.min(112800, hVar.getLength());
        long j2 = (long) 0;
        if (hVar.getPosition() != j2) {
            nVar.f8320a = j2;
            return 1;
        }
        this.f8037b.c(min);
        hVar.b();
        hVar.a(this.f8037b.f9634a, 0, min);
        this.f8041f = a(this.f8037b, i2);
        this.f8039d = true;
        return 0;
    }

    public final int c(h hVar, n nVar, int i2) {
        long length = hVar.getLength();
        int min = (int) Math.min(112800, length);
        long j2 = length - ((long) min);
        if (hVar.getPosition() != j2) {
            nVar.f8320a = j2;
            return 1;
        }
        this.f8037b.c(min);
        hVar.b();
        hVar.a(this.f8037b.f9634a, 0, min);
        this.f8042g = b(this.f8037b, i2);
        this.f8040e = true;
        return 0;
    }

    public final long b(v vVar, int i2) {
        int c2 = vVar.c();
        int d2 = vVar.d();
        while (true) {
            d2--;
            if (d2 < c2) {
                return -9223372036854775807L;
            }
            if (vVar.f9634a[d2] == 71) {
                long a2 = K.a(vVar, d2, i2);
                if (a2 != -9223372036854775807L) {
                    return a2;
                }
            }
        }
    }

    public long a() {
        return this.f8043h;
    }

    public final int a(h hVar) {
        this.f8037b.a(I.f9570f);
        this.f8038c = true;
        hVar.b();
        return 0;
    }

    public final long a(v vVar, int i2) {
        int d2 = vVar.d();
        for (int c2 = vVar.c(); c2 < d2; c2++) {
            if (vVar.f9634a[c2] == 71) {
                long a2 = K.a(vVar, c2, i2);
                if (a2 != -9223372036854775807L) {
                    return a2;
                }
            }
        }
        return -9223372036854775807L;
    }
}
