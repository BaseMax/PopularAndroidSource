package d.b;

import g.a.a;

/* compiled from: DoubleCheck */
public final class b<T> implements a<T>, d.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f13654a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public volatile a<T> f13655b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Object f13656c = f13654a;

    public b(a<T> aVar) {
        this.f13655b = aVar;
    }

    public static Object a(Object obj, Object obj2) {
        if (!(obj != f13654a) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    public T get() {
        T t = this.f13656c;
        if (t == f13654a) {
            synchronized (this) {
                t = this.f13656c;
                if (t == f13654a) {
                    t = this.f13655b.get();
                    a(this.f13656c, t);
                    this.f13656c = t;
                    this.f13655b = null;
                }
            }
        }
        return t;
    }

    public static <P extends a<T>, T> a<T> a(P p) {
        h.a(p);
        if (p instanceof b) {
            return p;
        }
        return new b(p);
    }
}
