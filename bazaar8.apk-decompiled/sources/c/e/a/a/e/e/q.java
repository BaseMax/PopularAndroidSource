package c.e.a.a.e.e;

import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;

/* compiled from: TrackSampleTable */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final n f7892a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7893b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f7894c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f7895d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7896e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f7897f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f7898g;

    /* renamed from: h  reason: collision with root package name */
    public final long f7899h;

    public q(n nVar, long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2, long j2) {
        boolean z = false;
        C0737e.a(iArr.length == jArr2.length);
        C0737e.a(jArr.length == jArr2.length);
        C0737e.a(iArr2.length == jArr2.length ? true : z);
        this.f7892a = nVar;
        this.f7894c = jArr;
        this.f7895d = iArr;
        this.f7896e = i2;
        this.f7897f = jArr2;
        this.f7898g = iArr2;
        this.f7899h = j2;
        this.f7893b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j2) {
        for (int b2 = I.b(this.f7897f, j2, true, false); b2 >= 0; b2--) {
            if ((this.f7898g[b2] & 1) != 0) {
                return b2;
            }
        }
        return -1;
    }

    public int b(long j2) {
        for (int a2 = I.a(this.f7897f, j2, true, false); a2 < this.f7897f.length; a2++) {
            if ((this.f7898g[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }
}
