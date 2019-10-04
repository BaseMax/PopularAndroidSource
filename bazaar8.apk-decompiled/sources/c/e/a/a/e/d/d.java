package c.e.a.a.e.d;

import android.util.Pair;
import c.e.a.a.C0744q;
import c.e.a.a.e.d.e;
import c.e.a.a.e.o;
import c.e.a.a.e.p;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;

/* compiled from: MlltSeeker */
public final class d implements e.a {

    /* renamed from: a  reason: collision with root package name */
    public final long[] f7716a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f7717b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7718c;

    public d(long[] jArr, long[] jArr2) {
        this.f7716a = jArr;
        this.f7717b = jArr2;
        this.f7718c = C0744q.a(jArr2[jArr2.length - 1]);
    }

    public static d a(long j2, MlltFrame mlltFrame) {
        int length = mlltFrame.f12639e.length;
        int i2 = length + 1;
        long[] jArr = new long[i2];
        long[] jArr2 = new long[i2];
        jArr[0] = j2;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i3 = 1; i3 <= length; i3++) {
            int i4 = i3 - 1;
            j2 += (long) (mlltFrame.f12637c + mlltFrame.f12639e[i4]);
            j3 += (long) (mlltFrame.f12638d + mlltFrame.f12640f[i4]);
            jArr[i3] = j2;
            jArr2[i3] = j3;
        }
        return new d(jArr, jArr2);
    }

    public long b() {
        return -1;
    }

    public o.a b(long j2) {
        Pair<Long, Long> a2 = a(C0744q.b(I.b(j2, 0, this.f7718c)), this.f7717b, this.f7716a);
        return new o.a(new p(C0744q.a(((Long) a2.first).longValue()), ((Long) a2.second).longValue()));
    }

    public boolean c() {
        return true;
    }

    public long d() {
        return this.f7718c;
    }

    public long a(long j2) {
        return C0744q.a(((Long) a(j2, this.f7716a, this.f7717b).second).longValue());
    }

    public static Pair<Long, Long> a(long j2, long[] jArr, long[] jArr2) {
        double d2;
        int b2 = I.b(jArr, j2, true, true);
        long j3 = jArr[b2];
        long j4 = jArr2[b2];
        int i2 = b2 + 1;
        if (i2 == jArr.length) {
            return Pair.create(Long.valueOf(j3), Long.valueOf(j4));
        }
        long j5 = jArr[i2];
        long j6 = jArr2[i2];
        if (j5 == j3) {
            d2 = 0.0d;
        } else {
            double d3 = (double) j2;
            double d4 = (double) j3;
            Double.isNaN(d3);
            Double.isNaN(d4);
            double d5 = (double) (j5 - j3);
            Double.isNaN(d5);
            d2 = (d3 - d4) / d5;
        }
        double d6 = (double) (j6 - j4);
        Double.isNaN(d6);
        return Pair.create(Long.valueOf(j2), Long.valueOf(((long) (d2 * d6)) + j4));
    }
}
