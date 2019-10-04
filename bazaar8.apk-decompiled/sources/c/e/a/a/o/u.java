package c.e.a.a.o;

/* compiled from: ParsableBitArray */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f9630a;

    /* renamed from: b  reason: collision with root package name */
    public int f9631b;

    /* renamed from: c  reason: collision with root package name */
    public int f9632c;

    /* renamed from: d  reason: collision with root package name */
    public int f9633d;

    public u() {
        this.f9630a = I.f9570f;
    }

    public void a(byte[] bArr) {
        a(bArr, bArr.length);
    }

    public int b() {
        return ((this.f9633d - this.f9631b) * 8) - this.f9632c;
    }

    public void c(int i2) {
        int i3 = i2 / 8;
        this.f9631b += i3;
        this.f9632c += i2 - (i3 * 8);
        if (this.f9632c > 7) {
            this.f9631b++;
            this.f9632c = r3 - 8;
        }
        a();
    }

    public int d() {
        C0737e.b(this.f9632c == 0);
        return this.f9631b;
    }

    public int e() {
        return (this.f9631b * 8) + this.f9632c;
    }

    public boolean f() {
        boolean z = (this.f9630a[this.f9631b] & (128 >> this.f9632c)) != 0;
        g();
        return z;
    }

    public void g() {
        int i2 = this.f9632c + 1;
        this.f9632c = i2;
        if (i2 == 8) {
            this.f9632c = 0;
            this.f9631b++;
        }
        a();
    }

    public void a(v vVar) {
        a(vVar.f9634a, vVar.d());
        b(vVar.c() * 8);
    }

    public void b(int i2) {
        this.f9631b = i2 / 8;
        this.f9632c = i2 - (this.f9631b * 8);
        a();
    }

    public u(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public void d(int i2) {
        C0737e.b(this.f9632c == 0);
        this.f9631b += i2;
        a();
    }

    public u(byte[] bArr, int i2) {
        this.f9630a = bArr;
        this.f9633d = i2;
    }

    public void a(byte[] bArr, int i2) {
        this.f9630a = bArr;
        this.f9631b = 0;
        this.f9632c = 0;
        this.f9633d = i2;
    }

    public void b(byte[] bArr, int i2, int i3) {
        C0737e.b(this.f9632c == 0);
        System.arraycopy(this.f9630a, this.f9631b, bArr, i2, i3);
        this.f9631b += i3;
        a();
    }

    public int a(int i2) {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        this.f9632c += i2;
        int i4 = 0;
        while (true) {
            i3 = this.f9632c;
            if (i3 <= 8) {
                break;
            }
            this.f9632c = i3 - 8;
            byte[] bArr = this.f9630a;
            int i5 = this.f9631b;
            this.f9631b = i5 + 1;
            i4 |= (bArr[i5] & 255) << this.f9632c;
        }
        byte[] bArr2 = this.f9630a;
        int i6 = this.f9631b;
        int i7 = (-1 >>> (32 - i2)) & (i4 | ((bArr2[i6] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f9632c = 0;
            this.f9631b = i6 + 1;
        }
        a();
        return i7;
    }

    public void c() {
        if (this.f9632c != 0) {
            this.f9632c = 0;
            this.f9631b++;
            a();
        }
    }

    public void a(byte[] bArr, int i2, int i3) {
        int i4 = (i3 >> 3) + i2;
        while (i2 < i4) {
            byte[] bArr2 = this.f9630a;
            int i5 = this.f9631b;
            this.f9631b = i5 + 1;
            byte b2 = bArr2[i5];
            int i6 = this.f9632c;
            bArr[i2] = (byte) (b2 << i6);
            bArr[i2] = (byte) (((255 & bArr2[this.f9631b]) >> (8 - i6)) | bArr[i2]);
            i2++;
        }
        int i7 = i3 & 7;
        if (i7 != 0) {
            bArr[i4] = (byte) (bArr[i4] & (255 >> i7));
            int i8 = this.f9632c;
            if (i8 + i7 > 8) {
                byte b3 = bArr[i4];
                byte[] bArr3 = this.f9630a;
                int i9 = this.f9631b;
                this.f9631b = i9 + 1;
                bArr[i4] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
                this.f9632c = i8 - 8;
            }
            this.f9632c += i7;
            byte[] bArr4 = this.f9630a;
            int i10 = this.f9631b;
            int i11 = this.f9632c;
            bArr[i4] = (byte) (((byte) (((bArr4[i10] & 255) >> (8 - i11)) << (8 - i7))) | bArr[i4]);
            if (i11 == 8) {
                this.f9632c = 0;
                this.f9631b = i10 + 1;
            }
            a();
        }
    }

    public void a(int i2, int i3) {
        if (i3 < 32) {
            i2 &= (1 << i3) - 1;
        }
        int min = Math.min(8 - this.f9632c, i3);
        int i4 = this.f9632c;
        int i5 = (8 - i4) - min;
        byte[] bArr = this.f9630a;
        int i6 = this.f9631b;
        bArr[i6] = (byte) (((65280 >> i4) | ((1 << i5) - 1)) & bArr[i6]);
        int i7 = i3 - min;
        bArr[i6] = (byte) (((i2 >>> i7) << i5) | bArr[i6]);
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.f9630a[i8] = (byte) (i2 >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.f9630a;
        bArr2[i8] = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = (byte) (((i2 & ((1 << i7) - 1)) << i9) | bArr2[i8]);
        c(i3);
        a();
    }

    public final void a() {
        boolean z;
        int i2 = this.f9631b;
        if (i2 >= 0) {
            int i3 = this.f9633d;
            if (i2 < i3 || (i2 == i3 && this.f9632c == 0)) {
                z = true;
                C0737e.b(z);
            }
        }
        z = false;
        C0737e.b(z);
    }
}
