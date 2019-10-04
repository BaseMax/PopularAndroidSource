package dagger.a;

import dagger.Lazy;

public final class c<T> implements Lazy<T>, b<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final c<Object> f6542a = new c<>(null);

    /* renamed from: b  reason: collision with root package name */
    private final T f6543b;

    public static <T> b<T> create(T t) {
        return new c(d.checkNotNull(t, "instance cannot be null"));
    }

    private c(T t) {
        this.f6543b = t;
    }

    public final T get() {
        return this.f6543b;
    }

    public static <T> b<T> createNullable(T t) {
        if (t == null) {
            return f6542a;
        }
        return new c(t);
    }
}
