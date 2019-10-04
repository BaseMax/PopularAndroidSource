package c.e.a.a.j.d;

import android.util.SparseArray;
import c.e.a.a.o.F;

/* compiled from: TimestampAdjusterProvider */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public final SparseArray<F> f8850a = new SparseArray<>();

    public F a(int i2) {
        F f2 = this.f8850a.get(i2);
        if (f2 != null) {
            return f2;
        }
        F f3 = new F(Long.MAX_VALUE);
        this.f8850a.put(i2, f3);
        return f3;
    }

    public void a() {
        this.f8850a.clear();
    }
}
