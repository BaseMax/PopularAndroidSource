package c.e.a.b.g.f;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class _a extends Fa<Double> implements C0883vb<Double>, C0809cc, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    public static final _a f10310b;

    /* renamed from: c  reason: collision with root package name */
    public double[] f10311c;

    /* renamed from: d  reason: collision with root package name */
    public int f10312d;

    static {
        _a _aVar = new _a(new double[0], 0);
        f10310b = _aVar;
        _aVar.t();
    }

    public _a() {
        this(new double[10], 0);
    }

    public final void a(double d2) {
        a(this.f10312d, d2);
    }

    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Double) obj).doubleValue());
    }

    public final boolean addAll(Collection<? extends Double> collection) {
        a();
        C0864qb.a(collection);
        if (!(collection instanceof _a)) {
            return super.addAll(collection);
        }
        _a _aVar = (_a) collection;
        int i2 = _aVar.f10312d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f10312d;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            double[] dArr = this.f10311c;
            if (i4 > dArr.length) {
                this.f10311c = Arrays.copyOf(dArr, i4);
            }
            System.arraycopy(_aVar.f10311c, 0, this.f10311c, this.f10312d, _aVar.f10312d);
            this.f10312d = i4;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final /* synthetic */ C0883vb c(int i2) {
        if (i2 >= this.f10312d) {
            return new _a(Arrays.copyOf(this.f10311c, i2), this.f10312d);
        }
        throw new IllegalArgumentException();
    }

    public final String e(int i2) {
        int i3 = this.f10312d;
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
        if (!(obj instanceof _a)) {
            return super.equals(obj);
        }
        _a _aVar = (_a) obj;
        if (this.f10312d != _aVar.f10312d) {
            return false;
        }
        double[] dArr = _aVar.f10311c;
        for (int i2 = 0; i2 < this.f10312d; i2++) {
            if (Double.doubleToLongBits(this.f10311c[i2]) != Double.doubleToLongBits(dArr[i2])) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Double.valueOf(this.f10311c[i2]);
    }

    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f10312d; i3++) {
            i2 = (i2 * 31) + C0864qb.a(Double.doubleToLongBits(this.f10311c[i3]));
        }
        return i2;
    }

    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f10312d; i2++) {
            if (obj.equals(Double.valueOf(this.f10311c[i2]))) {
                double[] dArr = this.f10311c;
                System.arraycopy(dArr, i2 + 1, dArr, i2, (this.f10312d - i2) - 1);
                this.f10312d--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            double[] dArr = this.f10311c;
            System.arraycopy(dArr, i3, dArr, i2, this.f10312d - i3);
            this.f10312d -= i3 - i2;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public final /* synthetic */ Object set(int i2, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        a(i2);
        double[] dArr = this.f10311c;
        double d2 = dArr[i2];
        dArr[i2] = doubleValue;
        return Double.valueOf(d2);
    }

    public final int size() {
        return this.f10312d;
    }

    public _a(double[] dArr, int i2) {
        this.f10311c = dArr;
        this.f10312d = i2;
    }

    public final void a(int i2, double d2) {
        a();
        if (i2 >= 0) {
            int i3 = this.f10312d;
            if (i2 <= i3) {
                double[] dArr = this.f10311c;
                if (i3 < dArr.length) {
                    System.arraycopy(dArr, i2, dArr, i2 + 1, i3 - i2);
                } else {
                    double[] dArr2 = new double[(((i3 * 3) / 2) + 1)];
                    System.arraycopy(dArr, 0, dArr2, 0, i2);
                    System.arraycopy(this.f10311c, i2, dArr2, i2 + 1, this.f10312d - i2);
                    this.f10311c = dArr2;
                }
                this.f10311c[i2] = d2;
                this.f10312d++;
                this.modCount++;
                return;
            }
        }
        throw new IndexOutOfBoundsException(e(i2));
    }

    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        double[] dArr = this.f10311c;
        double d2 = dArr[i2];
        int i3 = this.f10312d;
        if (i2 < i3 - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, (i3 - i2) - 1);
        }
        this.f10312d--;
        this.modCount++;
        return Double.valueOf(d2);
    }

    public final void a(int i2) {
        if (i2 < 0 || i2 >= this.f10312d) {
            throw new IndexOutOfBoundsException(e(i2));
        }
    }
}
