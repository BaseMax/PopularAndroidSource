package c.e.a.b.d.a.a;

/* renamed from: c.e.a.b.d.a.a.g  reason: case insensitive filesystem */
public final class C0759g<L> {

    /* renamed from: a  reason: collision with root package name */
    public final L f9894a;

    /* renamed from: b  reason: collision with root package name */
    public final String f9895b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0759g)) {
            return false;
        }
        C0759g gVar = (C0759g) obj;
        return this.f9894a == gVar.f9894a && this.f9895b.equals(gVar.f9895b);
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f9894a) * 31) + this.f9895b.hashCode();
    }
}
