package c.e.a.a.e;

import c.e.a.a.e.o;
import c.e.a.a.o.I;
import java.util.Arrays;

/* compiled from: ChunkIndex */
public final class b implements o {

    /* renamed from: a  reason: collision with root package name */
    public final int f7625a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f7626b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f7627c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f7628d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f7629e;

    /* renamed from: f  reason: collision with root package name */
    public final long f7630f;

    public b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f7626b = iArr;
        this.f7627c = jArr;
        this.f7628d = jArr2;
        this.f7629e = jArr3;
        this.f7625a = iArr.length;
        int i2 = this.f7625a;
        if (i2 > 0) {
            this.f7630f = jArr2[i2 - 1] + jArr3[i2 - 1];
        } else {
            this.f7630f = 0;
        }
    }

    public o.a b(long j2) {
        int c2 = c(j2);
        p pVar = new p(this.f7629e[c2], this.f7627c[c2]);
        if (pVar.f8326b >= j2 || c2 == this.f7625a - 1) {
            return new o.a(pVar);
        }
        int i2 = c2 + 1;
        return new o.a(pVar, new p(this.f7629e[i2], this.f7627c[i2]));
    }

    public int c(long j2) {
        return I.b(this.f7629e, j2, true, true);
    }

    public boolean c() {
        return true;
    }

    public long d() {
        return this.f7630f;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f7625a + ", sizes=" + Arrays.toString(this.f7626b) + ", offsets=" + Arrays.toString(this.f7627c) + ", timeUs=" + Arrays.toString(this.f7629e) + ", durationsUs=" + Arrays.toString(this.f7628d) + ")";
    }
}
