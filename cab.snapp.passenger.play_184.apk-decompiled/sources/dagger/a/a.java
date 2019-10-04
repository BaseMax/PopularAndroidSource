package dagger.a;

import dagger.Lazy;
import javax.inject.Provider;

public final class a<T> implements Lazy<T>, Provider<T> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f6540a = (!a.class.desiredAssertionStatus());

    /* renamed from: b  reason: collision with root package name */
    private static final Object f6541b = new Object();
    private volatile Provider<T> c;
    private volatile Object d = f6541b;

    private a(Provider<T> provider) {
        if (f6540a || provider != null) {
            this.c = provider;
            return;
        }
        throw new AssertionError();
    }

    public final T get() {
        T t = this.d;
        if (t == f6541b) {
            synchronized (this) {
                t = this.d;
                if (t == f6541b) {
                    t = this.c.get();
                    T t2 = this.d;
                    if (t2 != f6541b) {
                        if (t2 != t) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + t2 + " & " + t + ". This is likely due to a circular dependency.");
                        }
                    }
                    this.d = t;
                    this.c = null;
                }
            }
        }
        return t;
    }

    public static <T> Provider<T> provider(Provider<T> provider) {
        d.checkNotNull(provider);
        if (provider instanceof a) {
            return provider;
        }
        return new a(provider);
    }

    public static <T> Lazy<T> lazy(Provider<T> provider) {
        if (provider instanceof Lazy) {
            return (Lazy) provider;
        }
        return new a((Provider) d.checkNotNull(provider));
    }
}
