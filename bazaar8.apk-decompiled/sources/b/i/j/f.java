package b.i.j;

/* compiled from: Pools */
public class f<T> implements e<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Object[] f2757a;

    /* renamed from: b  reason: collision with root package name */
    public int f2758b;

    public f(int i2) {
        if (i2 > 0) {
            this.f2757a = new Object[i2];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    public T a() {
        int i2 = this.f2758b;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        T[] tArr = this.f2757a;
        T t = tArr[i3];
        tArr[i3] = null;
        this.f2758b = i2 - 1;
        return t;
    }

    public final boolean b(T t) {
        for (int i2 = 0; i2 < this.f2758b; i2++) {
            if (this.f2757a[i2] == t) {
                return true;
            }
        }
        return false;
    }

    public boolean a(T t) {
        if (!b(t)) {
            int i2 = this.f2758b;
            Object[] objArr = this.f2757a;
            if (i2 >= objArr.length) {
                return false;
            }
            objArr[i2] = t;
            this.f2758b = i2 + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }
}
