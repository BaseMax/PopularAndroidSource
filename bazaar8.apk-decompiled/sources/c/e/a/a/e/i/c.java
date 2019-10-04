package c.e.a.a.e.i;

import c.e.a.a.e.o;
import c.e.a.a.e.p;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;

/* compiled from: WavHeader */
public final class c implements o {

    /* renamed from: a  reason: collision with root package name */
    public final int f8294a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8295b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8296c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8297d;

    /* renamed from: e  reason: collision with root package name */
    public final int f8298e;

    /* renamed from: f  reason: collision with root package name */
    public final int f8299f;

    /* renamed from: g  reason: collision with root package name */
    public long f8300g;

    /* renamed from: h  reason: collision with root package name */
    public long f8301h;

    public c(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f8294a = i2;
        this.f8295b = i3;
        this.f8296c = i4;
        this.f8297d = i5;
        this.f8298e = i6;
        this.f8299f = i7;
    }

    public void a(long j2, long j3) {
        this.f8300g = j2;
        this.f8301h = j3;
    }

    public o.a b(long j2) {
        long j3 = (((long) this.f8296c) * j2) / RetryManager.NANOSECONDS_IN_MS;
        int i2 = this.f8297d;
        long b2 = I.b((j3 / ((long) i2)) * ((long) i2), 0, this.f8301h - ((long) i2));
        long j4 = this.f8300g + b2;
        long a2 = a(j4);
        p pVar = new p(a2, j4);
        if (a2 < j2) {
            long j5 = this.f8301h;
            int i3 = this.f8297d;
            if (b2 != j5 - ((long) i3)) {
                long j6 = j4 + ((long) i3);
                return new o.a(pVar, new p(a(j6), j6));
            }
        }
        return new o.a(pVar);
    }

    public boolean c() {
        return true;
    }

    public long d() {
        return ((this.f8301h / ((long) this.f8297d)) * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f8295b);
    }

    public int e() {
        return this.f8297d;
    }

    public long f() {
        if (j()) {
            return this.f8300g + this.f8301h;
        }
        return -1;
    }

    public int g() {
        return this.f8299f;
    }

    public int h() {
        return this.f8294a;
    }

    public int i() {
        return this.f8295b;
    }

    public boolean j() {
        return (this.f8300g == 0 || this.f8301h == 0) ? false : true;
    }

    public long a(long j2) {
        return (Math.max(0, j2 - this.f8300g) * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f8296c);
    }

    public int a() {
        return this.f8295b * this.f8298e * this.f8294a;
    }
}
