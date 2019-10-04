package c.e.a.a.e.d;

import c.e.a.a.e.d.e;
import c.e.a.a.e.m;
import c.e.a.a.e.o;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;

/* compiled from: XingSeeker */
public final class g implements e.a {

    /* renamed from: a  reason: collision with root package name */
    public final long f7735a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7736b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7737c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7738d;

    /* renamed from: e  reason: collision with root package name */
    public final long f7739e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f7740f;

    public g(long j2, int i2, long j3) {
        this(j2, i2, j3, -1, null);
    }

    public static g a(long j2, long j3, m mVar, v vVar) {
        long j4 = j2;
        m mVar2 = mVar;
        int i2 = mVar2.n;
        int i3 = mVar2.f8318k;
        int i4 = vVar.i();
        if ((i4 & 1) == 1) {
            int y = vVar.y();
            if (y != 0) {
                long c2 = I.c((long) y, ((long) i2) * RetryManager.NANOSECONDS_IN_MS, (long) i3);
                if ((i4 & 6) != 6) {
                    g gVar = new g(j3, mVar2.f8317j, c2);
                    return gVar;
                }
                long y2 = (long) vVar.y();
                long[] jArr = new long[100];
                for (int i5 = 0; i5 < 100; i5++) {
                    jArr[i5] = (long) vVar.u();
                }
                if (j4 != -1) {
                    long j5 = j3 + y2;
                    if (j4 != j5) {
                        p.d("XingSeeker", "XING data size mismatch: " + j4 + ", " + j5);
                    }
                }
                g gVar2 = new g(j3, mVar2.f8317j, c2, y2, jArr);
                return gVar2;
            }
        }
        return null;
    }

    public o.a b(long j2) {
        double d2;
        if (!c()) {
            return new o.a(new c.e.a.a.e.p(0, this.f7735a + ((long) this.f7736b)));
        }
        long b2 = I.b(j2, 0, this.f7737c);
        double d3 = (double) b2;
        Double.isNaN(d3);
        double d4 = (double) this.f7737c;
        Double.isNaN(d4);
        double d5 = (d3 * 100.0d) / d4;
        double d6 = 0.0d;
        if (d5 > 0.0d) {
            if (d5 >= 100.0d) {
                d6 = 256.0d;
            } else {
                int i2 = (int) d5;
                long[] jArr = this.f7740f;
                C0737e.a(jArr);
                long[] jArr2 = jArr;
                double d7 = (double) jArr2[i2];
                if (i2 == 99) {
                    d2 = 256.0d;
                } else {
                    d2 = (double) jArr2[i2 + 1];
                }
                double d8 = (double) i2;
                Double.isNaN(d8);
                Double.isNaN(d7);
                Double.isNaN(d7);
                d6 = d7 + ((d5 - d8) * (d2 - d7));
            }
        }
        double d9 = (double) this.f7738d;
        Double.isNaN(d9);
        return new o.a(new c.e.a.a.e.p(b2, this.f7735a + I.b(Math.round((d6 / 256.0d) * d9), (long) this.f7736b, this.f7738d - 1)));
    }

    public boolean c() {
        return this.f7740f != null;
    }

    public long d() {
        return this.f7737c;
    }

    public g(long j2, int i2, long j3, long j4, long[] jArr) {
        this.f7735a = j2;
        this.f7736b = i2;
        this.f7737c = j3;
        this.f7740f = jArr;
        this.f7738d = j4;
        this.f7739e = j4 != -1 ? j2 + j4 : -1;
    }

    public long a(long j2) {
        long j3;
        double d2;
        long j4 = j2 - this.f7735a;
        if (!c() || j4 <= ((long) this.f7736b)) {
            return 0;
        }
        long[] jArr = this.f7740f;
        C0737e.a(jArr);
        long[] jArr2 = jArr;
        double d3 = (double) j4;
        Double.isNaN(d3);
        double d4 = (double) this.f7738d;
        Double.isNaN(d4);
        double d5 = (d3 * 256.0d) / d4;
        int b2 = I.b(jArr2, (long) d5, true, true);
        long a2 = a(b2);
        long j5 = jArr2[b2];
        int i2 = b2 + 1;
        long a3 = a(i2);
        if (b2 == 99) {
            j3 = 256;
        } else {
            j3 = jArr2[i2];
        }
        if (j5 == j3) {
            d2 = 0.0d;
        } else {
            double d6 = (double) j5;
            Double.isNaN(d6);
            double d7 = (double) (j3 - j5);
            Double.isNaN(d7);
            d2 = (d5 - d6) / d7;
        }
        double d8 = (double) (a3 - a2);
        Double.isNaN(d8);
        return a2 + Math.round(d2 * d8);
    }

    public long b() {
        return this.f7739e;
    }

    public final long a(int i2) {
        return (this.f7737c * ((long) i2)) / 100;
    }
}
