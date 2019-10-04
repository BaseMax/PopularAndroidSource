package d.b;

import d.a;

/* compiled from: InstanceFactory */
public final class d<T> implements c<T>, a<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final d<Object> f13657a = new d<>(null);

    /* renamed from: b  reason: collision with root package name */
    public final T f13658b;

    public d(T t) {
        this.f13658b = t;
    }

    public static <T> c<T> a(T t) {
        h.a(t, "instance cannot be null");
        return new d(t);
    }

    public T get() {
        return this.f13658b;
    }
}
