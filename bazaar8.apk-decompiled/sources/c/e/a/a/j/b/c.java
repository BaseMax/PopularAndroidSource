package c.e.a.a.j.b;

import c.e.a.a.e.f;
import c.e.a.a.e.q;
import c.e.a.a.j.B;
import c.e.a.a.j.b.e;
import c.e.a.a.o.p;

/* compiled from: BaseMediaChunkOutput */
public final class c implements e.b {

    /* renamed from: a  reason: collision with root package name */
    public final int[] f8457a;

    /* renamed from: b  reason: collision with root package name */
    public final B[] f8458b;

    public c(int[] iArr, B[] bArr) {
        this.f8457a = iArr;
        this.f8458b = bArr;
    }

    public q a(int i2, int i3) {
        int i4 = 0;
        while (true) {
            int[] iArr = this.f8457a;
            if (i4 >= iArr.length) {
                p.b("BaseMediaChunkOutput", "Unmatched track of type: " + i3);
                return new f();
            } else if (i3 == iArr[i4]) {
                return this.f8458b[i4];
            } else {
                i4++;
            }
        }
    }

    public int[] a() {
        int[] iArr = new int[this.f8458b.length];
        int i2 = 0;
        while (true) {
            B[] bArr = this.f8458b;
            if (i2 >= bArr.length) {
                return iArr;
            }
            if (bArr[i2] != null) {
                iArr[i2] = bArr[i2].i();
            }
            i2++;
        }
    }

    public void a(long j2) {
        for (B b2 : this.f8458b) {
            if (b2 != null) {
                b2.c(j2);
            }
        }
    }
}
