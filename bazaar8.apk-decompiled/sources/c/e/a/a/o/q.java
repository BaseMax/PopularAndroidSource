package c.e.a.a.o;

import java.util.Arrays;

/* compiled from: LongArray */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public int f9605a;

    /* renamed from: b  reason: collision with root package name */
    public long[] f9606b;

    public q() {
        this(32);
    }

    public void a(long j2) {
        int i2 = this.f9605a;
        long[] jArr = this.f9606b;
        if (i2 == jArr.length) {
            this.f9606b = Arrays.copyOf(jArr, i2 * 2);
        }
        long[] jArr2 = this.f9606b;
        int i3 = this.f9605a;
        this.f9605a = i3 + 1;
        jArr2[i3] = j2;
    }

    public long[] b() {
        return Arrays.copyOf(this.f9606b, this.f9605a);
    }

    public q(int i2) {
        this.f9606b = new long[i2];
    }

    public long a(int i2) {
        if (i2 >= 0 && i2 < this.f9605a) {
            return this.f9606b[i2];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i2 + ", size is " + this.f9605a);
    }

    public int a() {
        return this.f9605a;
    }
}
