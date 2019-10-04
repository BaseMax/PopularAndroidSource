package c.e.a.a.o;

import java.util.Arrays;

/* compiled from: TimedValueQueue */
public final class E<V> {

    /* renamed from: a  reason: collision with root package name */
    public long[] f9558a;

    /* renamed from: b  reason: collision with root package name */
    public V[] f9559b;

    /* renamed from: c  reason: collision with root package name */
    public int f9560c;

    /* renamed from: d  reason: collision with root package name */
    public int f9561d;

    public E() {
        this(10);
    }

    public synchronized void a(long j2, V v) {
        a(j2);
        b();
        b(j2, v);
    }

    public synchronized V b(long j2) {
        return a(j2, false);
    }

    public synchronized V c(long j2) {
        return a(j2, true);
    }

    public E(int i2) {
        this.f9558a = new long[i2];
        this.f9559b = a(i2);
    }

    public final void b() {
        int length = this.f9559b.length;
        if (this.f9561d >= length) {
            int i2 = length * 2;
            long[] jArr = new long[i2];
            V[] a2 = a(i2);
            int i3 = this.f9560c;
            int i4 = length - i3;
            System.arraycopy(this.f9558a, i3, jArr, 0, i4);
            System.arraycopy(this.f9559b, this.f9560c, a2, 0, i4);
            int i5 = this.f9560c;
            if (i5 > 0) {
                System.arraycopy(this.f9558a, 0, jArr, i4, i5);
                System.arraycopy(this.f9559b, 0, a2, i4, this.f9560c);
            }
            this.f9558a = jArr;
            this.f9559b = a2;
            this.f9560c = 0;
        }
    }

    public synchronized void a() {
        this.f9560c = 0;
        this.f9561d = 0;
        Arrays.fill(this.f9559b, null);
    }

    public final V a(long j2, boolean z) {
        long j3 = Long.MAX_VALUE;
        V v = null;
        while (this.f9561d > 0) {
            long j4 = j2 - this.f9558a[this.f9560c];
            if (j4 < 0 && (z || (-j4) >= j3)) {
                break;
            }
            V[] vArr = this.f9559b;
            int i2 = this.f9560c;
            v = vArr[i2];
            vArr[i2] = null;
            this.f9560c = (i2 + 1) % vArr.length;
            this.f9561d--;
            j3 = j4;
        }
        return v;
    }

    public final void a(long j2) {
        int i2 = this.f9561d;
        if (i2 > 0) {
            if (j2 <= this.f9558a[((this.f9560c + i2) - 1) % this.f9559b.length]) {
                a();
            }
        }
    }

    public final void b(long j2, V v) {
        int i2 = this.f9560c;
        int i3 = this.f9561d;
        V[] vArr = this.f9559b;
        int length = (i2 + i3) % vArr.length;
        this.f9558a[length] = j2;
        vArr[length] = v;
        this.f9561d = i3 + 1;
    }

    public static <V> V[] a(int i2) {
        return new Object[i2];
    }
}
