package c.e.a.b.g.f;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class Ja extends Fa<Boolean> implements C0883vb<Boolean>, C0809cc, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    public static final Ja f10183b;

    /* renamed from: c  reason: collision with root package name */
    public boolean[] f10184c;

    /* renamed from: d  reason: collision with root package name */
    public int f10185d;

    static {
        Ja ja = new Ja(new boolean[0], 0);
        f10183b = ja;
        ja.t();
    }

    public Ja() {
        this(new boolean[10], 0);
    }

    public final void a(boolean z) {
        a(this.f10185d, z);
    }

    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Boolean) obj).booleanValue());
    }

    public final boolean addAll(Collection<? extends Boolean> collection) {
        a();
        C0864qb.a(collection);
        if (!(collection instanceof Ja)) {
            return super.addAll(collection);
        }
        Ja ja = (Ja) collection;
        int i2 = ja.f10185d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f10185d;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            boolean[] zArr = this.f10184c;
            if (i4 > zArr.length) {
                this.f10184c = Arrays.copyOf(zArr, i4);
            }
            System.arraycopy(ja.f10184c, 0, this.f10184c, this.f10185d, ja.f10185d);
            this.f10185d = i4;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final /* synthetic */ C0883vb c(int i2) {
        if (i2 >= this.f10185d) {
            return new Ja(Arrays.copyOf(this.f10184c, i2), this.f10185d);
        }
        throw new IllegalArgumentException();
    }

    public final String e(int i2) {
        int i3 = this.f10185d;
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
        if (!(obj instanceof Ja)) {
            return super.equals(obj);
        }
        Ja ja = (Ja) obj;
        if (this.f10185d != ja.f10185d) {
            return false;
        }
        boolean[] zArr = ja.f10184c;
        for (int i2 = 0; i2 < this.f10185d; i2++) {
            if (this.f10184c[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Boolean.valueOf(this.f10184c[i2]);
    }

    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f10185d; i3++) {
            i2 = (i2 * 31) + C0864qb.a(this.f10184c[i3]);
        }
        return i2;
    }

    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f10185d; i2++) {
            if (obj.equals(Boolean.valueOf(this.f10184c[i2]))) {
                boolean[] zArr = this.f10184c;
                System.arraycopy(zArr, i2 + 1, zArr, i2, (this.f10185d - i2) - 1);
                this.f10185d--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            boolean[] zArr = this.f10184c;
            System.arraycopy(zArr, i3, zArr, i2, this.f10185d - i3);
            this.f10185d -= i3 - i2;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public final /* synthetic */ Object set(int i2, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        a(i2);
        boolean[] zArr = this.f10184c;
        boolean z = zArr[i2];
        zArr[i2] = booleanValue;
        return Boolean.valueOf(z);
    }

    public final int size() {
        return this.f10185d;
    }

    public Ja(boolean[] zArr, int i2) {
        this.f10184c = zArr;
        this.f10185d = i2;
    }

    public final void a(int i2, boolean z) {
        a();
        if (i2 >= 0) {
            int i3 = this.f10185d;
            if (i2 <= i3) {
                boolean[] zArr = this.f10184c;
                if (i3 < zArr.length) {
                    System.arraycopy(zArr, i2, zArr, i2 + 1, i3 - i2);
                } else {
                    boolean[] zArr2 = new boolean[(((i3 * 3) / 2) + 1)];
                    System.arraycopy(zArr, 0, zArr2, 0, i2);
                    System.arraycopy(this.f10184c, i2, zArr2, i2 + 1, this.f10185d - i2);
                    this.f10184c = zArr2;
                }
                this.f10184c[i2] = z;
                this.f10185d++;
                this.modCount++;
                return;
            }
        }
        throw new IndexOutOfBoundsException(e(i2));
    }

    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        boolean[] zArr = this.f10184c;
        boolean z = zArr[i2];
        int i3 = this.f10185d;
        if (i2 < i3 - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, (i3 - i2) - 1);
        }
        this.f10185d--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    public final void a(int i2) {
        if (i2 < 0 || i2 >= this.f10185d) {
            throw new IndexOutOfBoundsException(e(i2));
        }
    }
}
