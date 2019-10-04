package c.e.a.b.g.f;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: c.e.a.b.g.f.pb  reason: case insensitive filesystem */
public final class C0860pb extends Fa<Integer> implements C0883vb<Integer>, C0809cc, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    public static final C0860pb f10501b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f10502c;

    /* renamed from: d  reason: collision with root package name */
    public int f10503d;

    static {
        C0860pb pbVar = new C0860pb(new int[0], 0);
        f10501b = pbVar;
        pbVar.t();
    }

    public C0860pb() {
        this(new int[10], 0);
    }

    public final int a(int i2) {
        f(i2);
        return this.f10502c[i2];
    }

    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Integer) obj).intValue());
    }

    public final boolean addAll(Collection<? extends Integer> collection) {
        a();
        C0864qb.a(collection);
        if (!(collection instanceof C0860pb)) {
            return super.addAll(collection);
        }
        C0860pb pbVar = (C0860pb) collection;
        int i2 = pbVar.f10503d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f10503d;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            int[] iArr = this.f10502c;
            if (i4 > iArr.length) {
                this.f10502c = Arrays.copyOf(iArr, i4);
            }
            System.arraycopy(pbVar.f10502c, 0, this.f10502c, this.f10503d, pbVar.f10503d);
            this.f10503d = i4;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final /* synthetic */ C0883vb c(int i2) {
        if (i2 >= this.f10503d) {
            return new C0860pb(Arrays.copyOf(this.f10502c, i2), this.f10503d);
        }
        throw new IllegalArgumentException();
    }

    public final void e(int i2) {
        a(this.f10503d, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0860pb)) {
            return super.equals(obj);
        }
        C0860pb pbVar = (C0860pb) obj;
        if (this.f10503d != pbVar.f10503d) {
            return false;
        }
        int[] iArr = pbVar.f10502c;
        for (int i2 = 0; i2 < this.f10503d; i2++) {
            if (this.f10502c[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i2) {
        if (i2 < 0 || i2 >= this.f10503d) {
            throw new IndexOutOfBoundsException(g(i2));
        }
    }

    public final String g(int i2) {
        int i3 = this.f10503d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final /* synthetic */ Object get(int i2) {
        return Integer.valueOf(a(i2));
    }

    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f10503d; i3++) {
            i2 = (i2 * 31) + this.f10502c[i3];
        }
        return i2;
    }

    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f10503d; i2++) {
            if (obj.equals(Integer.valueOf(this.f10502c[i2]))) {
                int[] iArr = this.f10502c;
                System.arraycopy(iArr, i2 + 1, iArr, i2, (this.f10503d - i2) - 1);
                this.f10503d--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            int[] iArr = this.f10502c;
            System.arraycopy(iArr, i3, iArr, i2, this.f10503d - i3);
            this.f10503d -= i3 - i2;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public final /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        f(i2);
        int[] iArr = this.f10502c;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    public final int size() {
        return this.f10503d;
    }

    public C0860pb(int[] iArr, int i2) {
        this.f10502c = iArr;
        this.f10503d = i2;
    }

    public final void a(int i2, int i3) {
        a();
        if (i2 >= 0) {
            int i4 = this.f10503d;
            if (i2 <= i4) {
                int[] iArr = this.f10502c;
                if (i4 < iArr.length) {
                    System.arraycopy(iArr, i2, iArr, i2 + 1, i4 - i2);
                } else {
                    int[] iArr2 = new int[(((i4 * 3) / 2) + 1)];
                    System.arraycopy(iArr, 0, iArr2, 0, i2);
                    System.arraycopy(this.f10502c, i2, iArr2, i2 + 1, this.f10503d - i2);
                    this.f10502c = iArr2;
                }
                this.f10502c[i2] = i3;
                this.f10503d++;
                this.modCount++;
                return;
            }
        }
        throw new IndexOutOfBoundsException(g(i2));
    }

    public final /* synthetic */ Object remove(int i2) {
        a();
        f(i2);
        int[] iArr = this.f10502c;
        int i3 = iArr[i2];
        int i4 = this.f10503d;
        if (i2 < i4 - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (i4 - i2) - 1);
        }
        this.f10503d--;
        this.modCount++;
        return Integer.valueOf(i3);
    }
}
