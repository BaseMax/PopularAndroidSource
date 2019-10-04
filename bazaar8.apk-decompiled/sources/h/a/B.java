package h.a;

import h.f.b.j;
import java.util.List;

/* compiled from: ReversedViews.kt */
public class B<T> extends C1087d<T> {

    /* renamed from: b  reason: collision with root package name */
    public final List<T> f14514b;

    public B(List<? extends T> list) {
        j.b(list, "delegate");
        this.f14514b = list;
    }

    public int a() {
        return this.f14514b.size();
    }

    public T get(int i2) {
        return this.f14514b.get(r.b(this, i2));
    }
}
