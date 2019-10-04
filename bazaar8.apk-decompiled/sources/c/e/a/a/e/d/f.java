package c.e.a.a.e.d;

import c.e.a.a.e.d.e;
import c.e.a.a.e.m;
import c.e.a.a.e.o;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;

/* compiled from: VbriSeeker */
public final class f implements e.a {

    /* renamed from: a  reason: collision with root package name */
    public final long[] f7731a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f7732b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7733c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7734d;

    public f(long[] jArr, long[] jArr2, long j2, long j3) {
        this.f7731a = jArr;
        this.f7732b = jArr2;
        this.f7733c = j2;
        this.f7734d = j3;
    }

    public static f a(long j2, long j3, m mVar, v vVar) {
        int i2;
        long j4 = j2;
        m mVar2 = mVar;
        v vVar2 = vVar;
        vVar2.f(10);
        int i3 = vVar.i();
        if (i3 <= 0) {
            return null;
        }
        int i4 = mVar2.f8318k;
        long c2 = I.c((long) i3, RetryManager.NANOSECONDS_IN_MS * ((long) (i4 >= 32000 ? 1152 : 576)), (long) i4);
        int A = vVar.A();
        int A2 = vVar.A();
        int A3 = vVar.A();
        vVar2.f(2);
        long j5 = j3 + ((long) mVar2.f8317j);
        long[] jArr = new long[A];
        long[] jArr2 = new long[A];
        int i5 = 0;
        long j6 = j3;
        while (i5 < A) {
            int i6 = A2;
            jArr[i5] = (((long) i5) * c2) / ((long) A);
            long j7 = j5;
            jArr2[i5] = Math.max(j6, j7);
            if (A3 == 1) {
                i2 = vVar.u();
            } else if (A3 == 2) {
                i2 = vVar.A();
            } else if (A3 == 3) {
                i2 = vVar.x();
            } else if (A3 != 4) {
                return null;
            } else {
                i2 = vVar.y();
            }
            j6 += (long) (i2 * i6);
            i5++;
            j5 = j7;
            A2 = i6;
        }
        if (!(j4 == -1 || j4 == j6)) {
            p.d("VbriSeeker", "VBRI data size mismatch: " + j4 + ", " + j6);
        }
        f fVar = new f(jArr, jArr2, c2, j6);
        return fVar;
    }

    public o.a b(long j2) {
        int b2 = I.b(this.f7731a, j2, true, true);
        c.e.a.a.e.p pVar = new c.e.a.a.e.p(this.f7731a[b2], this.f7732b[b2]);
        if (pVar.f8326b < j2) {
            long[] jArr = this.f7731a;
            if (b2 != jArr.length - 1) {
                int i2 = b2 + 1;
                return new o.a(pVar, new c.e.a.a.e.p(jArr[i2], this.f7732b[i2]));
            }
        }
        return new o.a(pVar);
    }

    public boolean c() {
        return true;
    }

    public long d() {
        return this.f7733c;
    }

    public long b() {
        return this.f7734d;
    }

    public long a(long j2) {
        return this.f7731a[I.b(this.f7732b, j2, true, true)];
    }
}
