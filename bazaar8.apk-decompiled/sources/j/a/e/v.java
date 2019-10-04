package j.a.e;

import java.util.Arrays;

/* compiled from: Settings */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public int f15566a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f15567b = new int[10];

    public void a() {
        this.f15566a = 0;
        Arrays.fill(this.f15567b, 0);
    }

    public int b() {
        if ((this.f15566a & 2) != 0) {
            return this.f15567b[1];
        }
        return -1;
    }

    public int c(int i2) {
        return (this.f15566a & 32) != 0 ? this.f15567b[5] : i2;
    }

    public boolean d(int i2) {
        return ((1 << i2) & this.f15566a) != 0;
    }

    public int b(int i2) {
        return (this.f15566a & 16) != 0 ? this.f15567b[4] : i2;
    }

    public int c() {
        if ((this.f15566a & 128) != 0) {
            return this.f15567b[7];
        }
        return 65535;
    }

    public int d() {
        return Integer.bitCount(this.f15566a);
    }

    public v a(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.f15567b;
            if (i2 < iArr.length) {
                this.f15566a = (1 << i2) | this.f15566a;
                iArr[i2] = i3;
            }
        }
        return this;
    }

    public int a(int i2) {
        return this.f15567b[i2];
    }

    public void a(v vVar) {
        for (int i2 = 0; i2 < 10; i2++) {
            if (vVar.d(i2)) {
                a(i2, vVar.a(i2));
            }
        }
    }
}
