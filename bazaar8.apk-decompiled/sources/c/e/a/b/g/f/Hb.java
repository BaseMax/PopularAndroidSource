package c.e.a.b.g.f;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class Hb extends Fa<Long> implements C0879ub, C0809cc, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    public static final Hb f10173b;

    /* renamed from: c  reason: collision with root package name */
    public long[] f10174c;

    /* renamed from: d  reason: collision with root package name */
    public int f10175d;

    static {
        Hb hb = new Hb(new long[0], 0);
        f10173b = hb;
        hb.t();
    }

    public Hb() {
        this(new long[10], 0);
    }

    public static Hb b() {
        return f10173b;
    }

    public final void a(int i2, long j2) {
        a();
        if (i2 >= 0) {
            int i3 = this.f10175d;
            if (i2 <= i3) {
                long[] jArr = this.f10174c;
                if (i3 < jArr.length) {
                    System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
                } else {
                    long[] jArr2 = new long[(((i3 * 3) / 2) + 1)];
                    System.arraycopy(jArr, 0, jArr2, 0, i2);
                    System.arraycopy(this.f10174c, i2, jArr2, i2 + 1, this.f10175d - i2);
                    this.f10174c = jArr2;
                }
                this.f10174c[i2] = j2;
                this.f10175d++;
                this.modCount++;
                return;
            }
        }
        throw new IndexOutOfBoundsException(e(i2));
    }

    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Long) obj).longValue());
    }

    public final boolean addAll(Collection<? extends Long> collection) {
        a();
        C0864qb.a(collection);
        if (!(collection instanceof Hb)) {
            return super.addAll(collection);
        }
        Hb hb = (Hb) collection;
        int i2 = hb.f10175d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f10175d;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            long[] jArr = this.f10174c;
            if (i4 > jArr.length) {
                this.f10174c = Arrays.copyOf(jArr, i4);
            }
            System.arraycopy(hb.f10174c, 0, this.f10174c, this.f10175d, hb.f10175d);
            this.f10175d = i4;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final String e(int i2) {
        int i3 = this.f10175d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hb)) {
            return super.equals(obj);
        }
        Hb hb = (Hb) obj;
        if (this.f10175d != hb.f10175d) {
            return false;
        }
        long[] jArr = hb.f10174c;
        for (int i2 = 0; i2 < this.f10175d; i2++) {
            if (this.f10174c[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(getLong(i2));
    }

    public final long getLong(int i2) {
        a(i2);
        return this.f10174c[i2];
    }

    public final void h(long j2) {
        a(this.f10175d, j2);
    }

    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f10175d; i3++) {
            i2 = (i2 * 31) + C0864qb.a(this.f10174c[i3]);
        }
        return i2;
    }

    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f10175d; i2++) {
            if (obj.equals(Long.valueOf(this.f10174c[i2]))) {
                long[] jArr = this.f10174c;
                System.arraycopy(jArr, i2 + 1, jArr, i2, (this.f10175d - i2) - 1);
                this.f10175d--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            long[] jArr = this.f10174c;
            System.arraycopy(jArr, i3, jArr, i2, this.f10175d - i3);
            this.f10175d -= i3 - i2;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public final /* synthetic */ Object set(int i2, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        a(i2);
        long[] jArr = this.f10174c;
        long j2 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j2);
    }

    public final int size() {
        return this.f10175d;
    }

    public Hb(long[] jArr, int i2) {
        this.f10174c = jArr;
        this.f10175d = i2;
    }

    /* renamed from: b */
    public final C0879ub c(int i2) {
        if (i2 >= this.f10175d) {
            return new Hb(Arrays.copyOf(this.f10174c, i2), this.f10175d);
        }
        throw new IllegalArgumentException();
    }

    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        long[] jArr = this.f10174c;
        long j2 = jArr[i2];
        int i3 = this.f10175d;
        if (i2 < i3 - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (i3 - i2) - 1);
        }
        this.f10175d--;
        this.modCount++;
        return Long.valueOf(j2);
    }

    public final void a(int i2) {
        if (i2 < 0 || i2 >= this.f10175d) {
            throw new IndexOutOfBoundsException(e(i2));
        }
    }
}
