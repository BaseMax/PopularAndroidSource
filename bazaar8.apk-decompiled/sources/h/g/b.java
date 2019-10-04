package h.g;

import h.f.b.j;
import h.i.i;

/* compiled from: Delegates.kt */
public final class b<T> implements c<Object, T> {

    /* renamed from: a  reason: collision with root package name */
    public T f14578a;

    public T a(Object obj, i<?> iVar) {
        j.b(iVar, "property");
        T t = this.f14578a;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Property " + iVar.getName() + " should be initialized before get.");
    }

    public void a(Object obj, i<?> iVar, T t) {
        j.b(iVar, "property");
        j.b(t, "value");
        this.f14578a = t;
    }
}
