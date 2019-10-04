package h.f.b;

import h.f.a;
import h.i.c;

/* compiled from: ClassReference.kt */
public final class d implements c<Object>, c {

    /* renamed from: a  reason: collision with root package name */
    public final Class<?> f14564a;

    public d(Class<?> cls) {
        j.b(cls, "jClass");
        this.f14564a = cls;
    }

    public Class<?> a() {
        return this.f14564a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof d) && j.a((Object) a.a(this), (Object) a.a((c) obj));
    }

    public int hashCode() {
        return a.a(this).hashCode();
    }

    public String toString() {
        return a().toString() + " (Kotlin reflection is not available)";
    }
}
