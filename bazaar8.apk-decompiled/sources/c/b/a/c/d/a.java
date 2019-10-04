package c.b.a.c.d;

import c.b.a.c.b.D;
import c.b.a.i.i;

/* compiled from: SimpleResource */
public class a<T> implements D<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f4149a;

    public a(T t) {
        i.a(t);
        this.f4149a = t;
    }

    public void a() {
    }

    public final int b() {
        return 1;
    }

    public Class<T> c() {
        return this.f4149a.getClass();
    }

    public final T get() {
        return this.f4149a;
    }
}
