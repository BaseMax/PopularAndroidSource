package com.google.zxing.pdf417.a.a;

final class c {

    /* renamed from: a  reason: collision with root package name */
    final b f4366a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f4367b;

    c(b bVar, int[] iArr) {
        if (iArr.length != 0) {
            this.f4366a = bVar;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.f4367b = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.f4367b = new int[]{0};
                return;
            }
            this.f4367b = new int[(length - i)];
            int[] iArr2 = this.f4367b;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return this.f4367b[0] == 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(int i) {
        int[] iArr = this.f4367b;
        return iArr[(iArr.length - 1) - i];
    }

    /* access modifiers changed from: package-private */
    public final int b(int i) {
        if (i == 0) {
            return a(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int b2 : this.f4367b) {
                i2 = this.f4366a.b(i2, b2);
            }
            return i2;
        }
        int[] iArr = this.f4367b;
        int i3 = iArr[0];
        int length = iArr.length;
        for (int i4 = 1; i4 < length; i4++) {
            b bVar = this.f4366a;
            i3 = bVar.b(bVar.d(i, i3), this.f4367b[i4]);
        }
        return i3;
    }

    /* access modifiers changed from: package-private */
    public final c a(c cVar) {
        if (!this.f4366a.equals(cVar.f4366a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        } else if (a()) {
            return cVar;
        } else {
            if (cVar.a()) {
                return this;
            }
            int[] iArr = this.f4367b;
            int[] iArr2 = cVar.f4367b;
            if (iArr.length > iArr2.length) {
                int[] iArr3 = iArr;
                iArr = iArr2;
                iArr2 = iArr3;
            }
            int[] iArr4 = new int[iArr2.length];
            int length = iArr2.length - iArr.length;
            System.arraycopy(iArr2, 0, iArr4, 0, length);
            for (int i = length; i < iArr2.length; i++) {
                iArr4[i] = this.f4366a.b(iArr[i - length], iArr2[i]);
            }
            return new c(this.f4366a, iArr4);
        }
    }

    /* access modifiers changed from: package-private */
    public final c b(c cVar) {
        if (!this.f4366a.equals(cVar.f4366a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        } else if (cVar.a()) {
            return this;
        } else {
            return a(cVar.b());
        }
    }

    /* access modifiers changed from: package-private */
    public final c c(c cVar) {
        if (!this.f4366a.equals(cVar.f4366a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        } else if (a() || cVar.a()) {
            return this.f4366a.c;
        } else {
            int[] iArr = this.f4367b;
            int length = iArr.length;
            int[] iArr2 = cVar.f4367b;
            int length2 = iArr2.length;
            int[] iArr3 = new int[((length + length2) - 1)];
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < length2; i3++) {
                    int i4 = i + i3;
                    b bVar = this.f4366a;
                    iArr3[i4] = bVar.b(iArr3[i4], bVar.d(i2, iArr2[i3]));
                }
            }
            return new c(this.f4366a, iArr3);
        }
    }

    /* access modifiers changed from: package-private */
    public final c b() {
        int length = this.f4367b.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.f4366a.c(0, this.f4367b[i]);
        }
        return new c(this.f4366a, iArr);
    }

    /* access modifiers changed from: package-private */
    public final c c(int i) {
        if (i == 0) {
            return this.f4366a.c;
        }
        if (i == 1) {
            return this;
        }
        int length = this.f4367b.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f4366a.d(this.f4367b[i2], i);
        }
        return new c(this.f4366a, iArr);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f4367b.length - 1) * 8);
        for (int length = this.f4367b.length - 1; length >= 0; length--) {
            int a2 = a(length);
            if (a2 != 0) {
                if (a2 < 0) {
                    sb.append(" - ");
                    a2 = -a2;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (length == 0 || a2 != 1) {
                    sb.append(a2);
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
