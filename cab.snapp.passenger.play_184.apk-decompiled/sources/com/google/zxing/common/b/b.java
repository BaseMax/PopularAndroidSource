package com.google.zxing.common.b;

final class b {

    /* renamed from: a  reason: collision with root package name */
    final a f4308a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f4309b;

    b(a aVar, int[] iArr) {
        if (iArr.length != 0) {
            this.f4308a = aVar;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.f4309b = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.f4309b = new int[]{0};
                return;
            }
            this.f4309b = new int[(length - i)];
            int[] iArr2 = this.f4309b;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return this.f4309b[0] == 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(int i) {
        int[] iArr = this.f4309b;
        return iArr[(iArr.length - 1) - i];
    }

    /* access modifiers changed from: package-private */
    public final int b(int i) {
        if (i == 0) {
            return a(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int b2 : this.f4309b) {
                i2 = a.b(i2, b2);
            }
            return i2;
        }
        int[] iArr = this.f4309b;
        int i3 = iArr[0];
        int length = iArr.length;
        for (int i4 = 1; i4 < length; i4++) {
            i3 = a.b(this.f4308a.c(i, i3), this.f4309b[i4]);
        }
        return i3;
    }

    /* access modifiers changed from: package-private */
    public final b a(b bVar) {
        if (!this.f4308a.equals(bVar.f4308a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (a()) {
            return bVar;
        } else {
            if (bVar.a()) {
                return this;
            }
            int[] iArr = this.f4309b;
            int[] iArr2 = bVar.f4309b;
            if (iArr.length > iArr2.length) {
                int[] iArr3 = iArr;
                iArr = iArr2;
                iArr2 = iArr3;
            }
            int[] iArr4 = new int[iArr2.length];
            int length = iArr2.length - iArr.length;
            System.arraycopy(iArr2, 0, iArr4, 0, length);
            for (int i = length; i < iArr2.length; i++) {
                iArr4[i] = a.b(iArr[i - length], iArr2[i]);
            }
            return new b(this.f4308a, iArr4);
        }
    }

    /* access modifiers changed from: package-private */
    public final b b(b bVar) {
        if (!this.f4308a.equals(bVar.f4308a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (a() || bVar.a()) {
            return this.f4308a.f4307b;
        } else {
            int[] iArr = this.f4309b;
            int length = iArr.length;
            int[] iArr2 = bVar.f4309b;
            int length2 = iArr2.length;
            int[] iArr3 = new int[((length + length2) - 1)];
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < length2; i3++) {
                    int i4 = i + i3;
                    iArr3[i4] = a.b(iArr3[i4], this.f4308a.c(i2, iArr2[i3]));
                }
            }
            return new b(this.f4308a, iArr3);
        }
    }

    /* access modifiers changed from: package-private */
    public final b c(int i) {
        if (i == 0) {
            return this.f4308a.f4307b;
        }
        if (i == 1) {
            return this;
        }
        int length = this.f4309b.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f4308a.c(this.f4309b[i2], i);
        }
        return new b(this.f4308a, iArr);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f4309b.length - 1) * 8);
        for (int length = this.f4309b.length - 1; length >= 0; length--) {
            int a2 = a(length);
            if (a2 != 0) {
                if (a2 < 0) {
                    sb.append(" - ");
                    a2 = -a2;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (length == 0 || a2 != 1) {
                    int a3 = this.f4308a.a(a2);
                    if (a3 == 0) {
                        sb.append('1');
                    } else if (a3 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(a3);
                    }
                }
                if (length != 0) {
                    if (length == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(length);
                    }
                }
            }
        }
        return sb.toString();
    }
}
