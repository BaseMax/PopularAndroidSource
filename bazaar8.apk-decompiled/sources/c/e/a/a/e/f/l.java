package c.e.a.a.e.f;

import c.e.a.a.o.C0737e;

/* compiled from: VorbisBitArray */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f7954a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7955b;

    /* renamed from: c  reason: collision with root package name */
    public int f7956c;

    /* renamed from: d  reason: collision with root package name */
    public int f7957d;

    public l(byte[] bArr) {
        this.f7954a = bArr;
        this.f7955b = bArr.length;
    }

    public int a(int i2) {
        int i3 = this.f7956c;
        int min = Math.min(i2, 8 - this.f7957d);
        int i4 = i3 + 1;
        int i5 = ((this.f7954a[i3] & 255) >> this.f7957d) & (255 >> (8 - min));
        while (min < i2) {
            i5 |= (this.f7954a[i4] & 255) << min;
            min += 8;
            i4++;
        }
        int i6 = i5 & (-1 >>> (32 - i2));
        b(i2);
        return i6;
    }

    public void b(int i2) {
        int i3 = i2 / 8;
        this.f7956c += i3;
        this.f7957d += i2 - (i3 * 8);
        if (this.f7957d > 7) {
            this.f7956c++;
            this.f7957d = r3 - 8;
        }
        a();
    }

    public boolean c() {
        boolean z = (((this.f7954a[this.f7956c] & 255) >> this.f7957d) & 1) == 1;
        b(1);
        return z;
    }

    public final void a() {
        boolean z;
        int i2 = this.f7956c;
        if (i2 >= 0) {
            int i3 = this.f7955b;
            if (i2 < i3 || (i2 == i3 && this.f7957d == 0)) {
                z = true;
                C0737e.b(z);
            }
        }
        z = false;
        C0737e.b(z);
    }

    public int b() {
        return (this.f7956c * 8) + this.f7957d;
    }
}
