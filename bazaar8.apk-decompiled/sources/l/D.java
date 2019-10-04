package l;

import j.P;
import j.S;

/* compiled from: Response */
public final class D<T> {

    /* renamed from: a  reason: collision with root package name */
    public final P f15863a;

    /* renamed from: b  reason: collision with root package name */
    public final T f15864b;

    /* renamed from: c  reason: collision with root package name */
    public final S f15865c;

    public D(P p, T t, S s) {
        this.f15863a = p;
        this.f15864b = t;
        this.f15865c = s;
    }

    public static <T> D<T> a(T t, P p) {
        H.a(p, "rawResponse == null");
        if (p.y()) {
            return new D<>(p, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public int b() {
        return this.f15863a.v();
    }

    public S c() {
        return this.f15865c;
    }

    public boolean d() {
        return this.f15863a.y();
    }

    public String e() {
        return this.f15863a.z();
    }

    public String toString() {
        return this.f15863a.toString();
    }

    public static <T> D<T> a(S s, P p) {
        H.a(s, "body == null");
        H.a(p, "rawResponse == null");
        if (!p.y()) {
            return new D<>(p, null, s);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public T a() {
        return this.f15864b;
    }
}
