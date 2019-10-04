package com.google.android.gms.internal;

public final class st implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    static final su f3522a = new su();

    /* renamed from: b  reason: collision with root package name */
    int[] f3523b;
    su[] c;
    int d;
    private boolean e;

    st() {
        this(10);
    }

    private st(int i) {
        this.e = false;
        int b2 = b(i);
        this.f3523b = new int[b2];
        this.c = new su[b2];
        this.d = 0;
    }

    static int b(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        return i2 / 4;
    }

    /* access modifiers changed from: package-private */
    public final su a(int i) {
        int c2 = c(i);
        if (c2 >= 0) {
            su[] suVarArr = this.c;
            if (suVarArr[c2] != f3522a) {
                return suVarArr[c2];
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final int c(int i) {
        int i2 = this.d - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.f3523b[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ -1;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.d;
        st stVar = new st(i);
        System.arraycopy(this.f3523b, 0, stVar.f3523b, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            su[] suVarArr = this.c;
            if (suVarArr[i2] != null) {
                stVar.c[i2] = (su) suVarArr[i2].clone();
            }
        }
        stVar.d = i;
        return stVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof st)) {
            return false;
        }
        st stVar = (st) obj;
        int i = this.d;
        if (i != stVar.d) {
            return false;
        }
        int[] iArr = this.f3523b;
        int[] iArr2 = stVar.f3523b;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            su[] suVarArr = this.c;
            su[] suVarArr2 = stVar.c;
            int i3 = this.d;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                } else if (!suVarArr[i4].equals(suVarArr2[i4])) {
                    z2 = false;
                    break;
                } else {
                    i4++;
                }
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.d; i2++) {
            i = (((i * 31) + this.f3523b[i2]) * 31) + this.c[i2].hashCode();
        }
        return i;
    }

    public final boolean isEmpty() {
        return this.d == 0;
    }
}
