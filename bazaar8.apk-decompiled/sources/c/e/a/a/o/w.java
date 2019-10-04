package c.e.a.a.o;

/* compiled from: ParsableNalUnitBitArray */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f9637a;

    /* renamed from: b  reason: collision with root package name */
    public int f9638b;

    /* renamed from: c  reason: collision with root package name */
    public int f9639c;

    /* renamed from: d  reason: collision with root package name */
    public int f9640d;

    public w(byte[] bArr, int i2, int i3) {
        a(bArr, i2, i3);
    }

    public void a(byte[] bArr, int i2, int i3) {
        this.f9637a = bArr;
        this.f9639c = i2;
        this.f9638b = i3;
        this.f9640d = 0;
        a();
    }

    public int b(int i2) {
        int i3;
        int i4;
        this.f9640d += i2;
        int i5 = 0;
        while (true) {
            i3 = this.f9640d;
            i4 = 2;
            if (i3 <= 8) {
                break;
            }
            this.f9640d = i3 - 8;
            byte[] bArr = this.f9637a;
            int i6 = this.f9639c;
            i5 |= (bArr[i6] & 255) << this.f9640d;
            if (!c(i6 + 1)) {
                i4 = 1;
            }
            this.f9639c = i6 + i4;
        }
        byte[] bArr2 = this.f9637a;
        int i7 = this.f9639c;
        int i8 = (-1 >>> (32 - i2)) & (i5 | ((bArr2[i7] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f9640d = 0;
            if (!c(i7 + 1)) {
                i4 = 1;
            }
            this.f9639c = i7 + i4;
        }
        a();
        return i8;
    }

    public boolean c() {
        boolean z = (this.f9637a[this.f9639c] & (128 >> this.f9640d)) != 0;
        g();
        return z;
    }

    public void d(int i2) {
        int i3 = this.f9639c;
        int i4 = i2 / 8;
        this.f9639c = i3 + i4;
        this.f9640d += i2 - (i4 * 8);
        if (this.f9640d > 7) {
            this.f9639c++;
            this.f9640d = r4 - 8;
        }
        while (true) {
            i3++;
            if (i3 > this.f9639c) {
                a();
                return;
            } else if (c(i3)) {
                this.f9639c++;
                i3 += 2;
            }
        }
    }

    public int e() {
        int d2 = d();
        return (d2 % 2 == 0 ? -1 : 1) * ((d2 + 1) / 2);
    }

    public int f() {
        return d();
    }

    public void g() {
        int i2 = 1;
        int i3 = this.f9640d + 1;
        this.f9640d = i3;
        if (i3 == 8) {
            this.f9640d = 0;
            int i4 = this.f9639c;
            if (c(i4 + 1)) {
                i2 = 2;
            }
            this.f9639c = i4 + i2;
        }
        a();
    }

    public final boolean c(int i2) {
        if (2 <= i2 && i2 < this.f9638b) {
            byte[] bArr = this.f9637a;
            if (bArr[i2] == 3 && bArr[i2 - 2] == 0 && bArr[i2 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean a(int i2) {
        int i3 = this.f9639c;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        int i6 = (this.f9640d + i2) - (i4 * 8);
        if (i6 > 7) {
            i5++;
            i6 -= 8;
        }
        while (true) {
            i3++;
            if (i3 > i5 || i5 >= this.f9638b) {
                int i7 = this.f9638b;
            } else if (c(i3)) {
                i5++;
                i3 += 2;
            }
        }
        int i72 = this.f9638b;
        if (i5 < i72) {
            return true;
        }
        if (i5 == i72 && i6 == 0) {
            return true;
        }
        return false;
    }

    public boolean b() {
        int i2 = this.f9639c;
        int i3 = this.f9640d;
        int i4 = 0;
        while (this.f9639c < this.f9638b && !c()) {
            i4++;
        }
        boolean z = this.f9639c == this.f9638b;
        this.f9639c = i2;
        this.f9640d = i3;
        if (z || !a((i4 * 2) + 1)) {
            return false;
        }
        return true;
    }

    public final void a() {
        boolean z;
        int i2 = this.f9639c;
        if (i2 >= 0) {
            int i3 = this.f9638b;
            if (i2 < i3 || (i2 == i3 && this.f9640d == 0)) {
                z = true;
                C0737e.b(z);
            }
        }
        z = false;
        C0737e.b(z);
    }

    public final int d() {
        int i2 = 0;
        int i3 = 0;
        while (!c()) {
            i3++;
        }
        int i4 = (1 << i3) - 1;
        if (i3 > 0) {
            i2 = b(i3);
        }
        return i4 + i2;
    }
}
