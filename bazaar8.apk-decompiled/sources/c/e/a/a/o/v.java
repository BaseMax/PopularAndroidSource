package c.e.a.a.o;

import java.nio.charset.Charset;

/* compiled from: ParsableByteArray */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f9634a;

    /* renamed from: b  reason: collision with root package name */
    public int f9635b;

    /* renamed from: c  reason: collision with root package name */
    public int f9636c;

    public v() {
        this.f9634a = I.f9570f;
    }

    public int A() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        return (bArr[i3] & 255) | ((bArr[i2] & 255) << 8);
    }

    public long B() {
        int i2;
        int i3;
        long j2 = (long) this.f9634a[this.f9635b];
        int i4 = 7;
        while (true) {
            i2 = 1;
            if (i4 < 0) {
                break;
            }
            int i5 = 1 << i4;
            if ((((long) i5) & j2) != 0) {
                i4--;
            } else if (i4 < 6) {
                j2 &= (long) (i5 - 1);
                i3 = 7 - i4;
            } else if (i4 == 7) {
                i3 = 1;
            }
        }
        i3 = 0;
        if (i3 != 0) {
            while (i2 < i3) {
                byte b2 = this.f9634a[this.f9635b + i2];
                if ((b2 & 192) == 128) {
                    j2 = (j2 << 6) | ((long) (b2 & 63));
                    i2++;
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j2);
                }
            }
            this.f9635b += i3;
            return j2;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j2);
    }

    public void C() {
        this.f9635b = 0;
        this.f9636c = 0;
    }

    public void a(byte[] bArr) {
        a(bArr, bArr.length);
    }

    public int b() {
        return this.f9634a.length;
    }

    public void c(int i2) {
        a(b() < i2 ? new byte[i2] : this.f9634a, i2);
    }

    public int d() {
        return this.f9636c;
    }

    public void e(int i2) {
        C0737e.a(i2 >= 0 && i2 <= this.f9636c);
        this.f9635b = i2;
    }

    public void f(int i2) {
        e(this.f9635b + i2);
    }

    public double g() {
        return Double.longBitsToDouble(q());
    }

    public float h() {
        return Float.intBitsToFloat(i());
    }

    public int i() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        byte b2 = ((bArr[i2] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        byte b3 = b2 | ((bArr[i4] & 255) << 8);
        int i5 = this.f9635b;
        this.f9635b = i5 + 1;
        return (bArr[i5] & 255) | b3;
    }

    public int j() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        byte b2 = (((bArr[i2] & 255) << 24) >> 8) | ((bArr[i3] & 255) << 8);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        return (bArr[i4] & 255) | b2;
    }

    public String k() {
        if (a() == 0) {
            return null;
        }
        int i2 = this.f9635b;
        while (i2 < this.f9636c && !I.g((int) this.f9634a[i2])) {
            i2++;
        }
        int i3 = this.f9635b;
        if (i2 - i3 >= 3) {
            byte[] bArr = this.f9634a;
            if (bArr[i3] == -17 && bArr[i3 + 1] == -69 && bArr[i3 + 2] == -65) {
                this.f9635b = i3 + 3;
            }
        }
        byte[] bArr2 = this.f9634a;
        int i4 = this.f9635b;
        String a2 = I.a(bArr2, i4, i2 - i4);
        this.f9635b = i2;
        int i5 = this.f9635b;
        int i6 = this.f9636c;
        if (i5 == i6) {
            return a2;
        }
        if (this.f9634a[i5] == 13) {
            this.f9635b = i5 + 1;
            if (this.f9635b == i6) {
                return a2;
            }
        }
        byte[] bArr3 = this.f9634a;
        int i7 = this.f9635b;
        if (bArr3[i7] == 10) {
            this.f9635b = i7 + 1;
        }
        return a2;
    }

    public int l() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        byte b2 = (bArr[i2] & 255) | ((bArr[i3] & 255) << 8);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        byte b3 = b2 | ((bArr[i4] & 255) << 16);
        int i5 = this.f9635b;
        this.f9635b = i5 + 1;
        return ((bArr[i5] & 255) << 24) | b3;
    }

    public long m() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        long j2 = (((long) bArr[i2]) & 255) | ((((long) bArr[i3]) & 255) << 8);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        long j3 = j2 | ((((long) bArr[i4]) & 255) << 16);
        int i5 = this.f9635b;
        this.f9635b = i5 + 1;
        long j4 = j3 | ((((long) bArr[i5]) & 255) << 24);
        int i6 = this.f9635b;
        this.f9635b = i6 + 1;
        long j5 = j4 | ((((long) bArr[i6]) & 255) << 32);
        int i7 = this.f9635b;
        this.f9635b = i7 + 1;
        long j6 = j5 | ((((long) bArr[i7]) & 255) << 40);
        int i8 = this.f9635b;
        this.f9635b = i8 + 1;
        long j7 = j6 | ((((long) bArr[i8]) & 255) << 48);
        int i9 = this.f9635b;
        this.f9635b = i9 + 1;
        return j7 | ((255 & ((long) bArr[i9])) << 56);
    }

    public long n() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        long j2 = (((long) bArr[i2]) & 255) | ((((long) bArr[i3]) & 255) << 8);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        long j3 = j2 | ((((long) bArr[i4]) & 255) << 16);
        int i5 = this.f9635b;
        this.f9635b = i5 + 1;
        return j3 | ((255 & ((long) bArr[i5])) << 24);
    }

    public int o() {
        int l2 = l();
        if (l2 >= 0) {
            return l2;
        }
        throw new IllegalStateException("Top bit not zero: " + l2);
    }

    public int p() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        return ((bArr[i3] & 255) << 8) | (bArr[i2] & 255);
    }

    public long q() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        long j2 = ((((long) bArr[i2]) & 255) << 56) | ((((long) bArr[i3]) & 255) << 48);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        long j3 = j2 | ((((long) bArr[i4]) & 255) << 40);
        int i5 = this.f9635b;
        this.f9635b = i5 + 1;
        long j4 = j3 | ((((long) bArr[i5]) & 255) << 32);
        int i6 = this.f9635b;
        this.f9635b = i6 + 1;
        long j5 = j4 | ((((long) bArr[i6]) & 255) << 24);
        int i7 = this.f9635b;
        this.f9635b = i7 + 1;
        long j6 = j5 | ((((long) bArr[i7]) & 255) << 16);
        int i8 = this.f9635b;
        this.f9635b = i8 + 1;
        long j7 = j6 | ((((long) bArr[i8]) & 255) << 8);
        int i9 = this.f9635b;
        this.f9635b = i9 + 1;
        return j7 | (255 & ((long) bArr[i9]));
    }

    public String r() {
        if (a() == 0) {
            return null;
        }
        int i2 = this.f9635b;
        while (i2 < this.f9636c && this.f9634a[i2] != 0) {
            i2++;
        }
        byte[] bArr = this.f9634a;
        int i3 = this.f9635b;
        String a2 = I.a(bArr, i3, i2 - i3);
        this.f9635b = i2;
        int i4 = this.f9635b;
        if (i4 < this.f9636c) {
            this.f9635b = i4 + 1;
        }
        return a2;
    }

    public short s() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        return (short) ((bArr[i3] & 255) | ((bArr[i2] & 255) << 8));
    }

    public int t() {
        return (u() << 21) | (u() << 14) | (u() << 7) | u();
    }

    public int u() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        return bArr[i2] & 255;
    }

    public int v() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        byte b2 = (bArr[i3] & 255) | ((bArr[i2] & 255) << 8);
        this.f9635b += 2;
        return b2;
    }

    public long w() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        long j2 = ((((long) bArr[i2]) & 255) << 24) | ((((long) bArr[i3]) & 255) << 16);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        long j3 = j2 | ((((long) bArr[i4]) & 255) << 8);
        int i5 = this.f9635b;
        this.f9635b = i5 + 1;
        return j3 | (255 & ((long) bArr[i5]));
    }

    public int x() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        this.f9635b = i2 + 1;
        int i3 = this.f9635b;
        this.f9635b = i3 + 1;
        byte b2 = ((bArr[i2] & 255) << 16) | ((bArr[i3] & 255) << 8);
        int i4 = this.f9635b;
        this.f9635b = i4 + 1;
        return (bArr[i4] & 255) | b2;
    }

    public int y() {
        int i2 = i();
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalStateException("Top bit not zero: " + i2);
    }

    public long z() {
        long q = q();
        if (q >= 0) {
            return q;
        }
        throw new IllegalStateException("Top bit not zero: " + q);
    }

    public void a(byte[] bArr, int i2) {
        this.f9634a = bArr;
        this.f9636c = i2;
        this.f9635b = 0;
    }

    public String b(int i2) {
        return a(i2, Charset.forName("UTF-8"));
    }

    public int c() {
        return this.f9635b;
    }

    public void d(int i2) {
        C0737e.a(i2 >= 0 && i2 <= this.f9634a.length);
        this.f9636c = i2;
    }

    public int f() {
        return this.f9634a[this.f9635b] & 255;
    }

    public v(int i2) {
        this.f9634a = new byte[i2];
        this.f9636c = i2;
    }

    public char e() {
        byte[] bArr = this.f9634a;
        int i2 = this.f9635b;
        return (char) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    public int a() {
        return this.f9636c - this.f9635b;
    }

    public v(byte[] bArr) {
        this.f9634a = bArr;
        this.f9636c = bArr.length;
    }

    public void a(u uVar, int i2) {
        a(uVar.f9630a, 0, i2);
        uVar.b(0);
    }

    public void a(byte[] bArr, int i2, int i3) {
        System.arraycopy(this.f9634a, this.f9635b, bArr, i2, i3);
        this.f9635b += i3;
    }

    public v(byte[] bArr, int i2) {
        this.f9634a = bArr;
        this.f9636c = i2;
    }

    public String a(int i2, Charset charset) {
        String str = new String(this.f9634a, this.f9635b, i2, charset);
        this.f9635b += i2;
        return str;
    }

    public String a(int i2) {
        if (i2 == 0) {
            return "";
        }
        int i3 = (this.f9635b + i2) - 1;
        String a2 = I.a(this.f9634a, this.f9635b, (i3 >= this.f9636c || this.f9634a[i3] != 0) ? i2 : i2 - 1);
        this.f9635b += i2;
        return a2;
    }
}
