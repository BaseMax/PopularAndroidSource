package c.e.a.b.g.f;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: c.e.a.b.g.f.kb  reason: case insensitive filesystem */
public final class C0840kb extends Fa<Float> implements C0883vb<Float>, C0809cc, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    public static final C0840kb f10442b;

    /* renamed from: c  reason: collision with root package name */
    public float[] f10443c;

    /* renamed from: d  reason: collision with root package name */
    public int f10444d;

    static {
        C0840kb kbVar = new C0840kb(new float[0], 0);
        f10442b = kbVar;
        kbVar.t();
    }

    public C0840kb() {
        this(new float[10], 0);
    }

    public final void a(float f2) {
        a(this.f10444d, f2);
    }

    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Float) obj).floatValue());
    }

    public final boolean addAll(Collection<? extends Float> collection) {
        a();
        C0864qb.a(collection);
        if (!(collection instanceof C0840kb)) {
            return super.addAll(collection);
        }
        C0840kb kbVar = (C0840kb) collection;
        int i2 = kbVar.f10444d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f10444d;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            float[] fArr = this.f10443c;
            if (i4 > fArr.length) {
                this.f10443c = Arrays.copyOf(fArr, i4);
            }
            System.arraycopy(kbVar.f10443c, 0, this.f10443c, this.f10444d, kbVar.f10444d);
            this.f10444d = i4;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final /* synthetic */ C0883vb c(int i2) {
        if (i2 >= this.f10444d) {
            return new C0840kb(Arrays.copyOf(this.f10443c, i2), this.f10444d);
        }
        throw new IllegalArgumentException();
    }

    public final String e(int i2) {
        int i3 = this.f10444d;
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
        if (!(obj instanceof C0840kb)) {
            return super.equals(obj);
        }
        C0840kb kbVar = (C0840kb) obj;
        if (this.f10444d != kbVar.f10444d) {
            return false;
        }
        float[] fArr = kbVar.f10443c;
        for (int i2 = 0; i2 < this.f10444d; i2++) {
            if (Float.floatToIntBits(this.f10443c[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Float.valueOf(this.f10443c[i2]);
    }

    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f10444d; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(this.f10443c[i3]);
        }
        return i2;
    }

    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f10444d; i2++) {
            if (obj.equals(Float.valueOf(this.f10443c[i2]))) {
                float[] fArr = this.f10443c;
                System.arraycopy(fArr, i2 + 1, fArr, i2, (this.f10444d - i2) - 1);
                this.f10444d--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            float[] fArr = this.f10443c;
            System.arraycopy(fArr, i3, fArr, i2, this.f10444d - i3);
            this.f10444d -= i3 - i2;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public final /* synthetic */ Object set(int i2, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        a(i2);
        float[] fArr = this.f10443c;
        float f2 = fArr[i2];
        fArr[i2] = floatValue;
        return Float.valueOf(f2);
    }

    public final int size() {
        return this.f10444d;
    }

    public C0840kb(float[] fArr, int i2) {
        this.f10443c = fArr;
        this.f10444d = i2;
    }

    public final void a(int i2, float f2) {
        a();
        if (i2 >= 0) {
            int i3 = this.f10444d;
            if (i2 <= i3) {
                float[] fArr = this.f10443c;
                if (i3 < fArr.length) {
                    System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
                } else {
                    float[] fArr2 = new float[(((i3 * 3) / 2) + 1)];
                    System.arraycopy(fArr, 0, fArr2, 0, i2);
                    System.arraycopy(this.f10443c, i2, fArr2, i2 + 1, this.f10444d - i2);
                    this.f10443c = fArr2;
                }
                this.f10443c[i2] = f2;
                this.f10444d++;
                this.modCount++;
                return;
            }
        }
        throw new IndexOutOfBoundsException(e(i2));
    }

    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        float[] fArr = this.f10443c;
        float f2 = fArr[i2];
        int i3 = this.f10444d;
        if (i2 < i3 - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (i3 - i2) - 1);
        }
        this.f10444d--;
        this.modCount++;
        return Float.valueOf(f2);
    }

    public final void a(int i2) {
        if (i2 < 0 || i2 >= this.f10444d) {
            throw new IndexOutOfBoundsException(e(i2));
        }
    }
}
