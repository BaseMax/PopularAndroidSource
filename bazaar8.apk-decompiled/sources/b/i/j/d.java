package b.i.j;

/* compiled from: Pair */
public class d<F, S> {

    /* renamed from: a  reason: collision with root package name */
    public final F f2755a;

    /* renamed from: b  reason: collision with root package name */
    public final S f2756b;

    public d(F f2, S s) {
        this.f2755a = f2;
        this.f2756b = s;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (c.a(dVar.f2755a, this.f2755a) && c.a(dVar.f2756b, this.f2756b)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        F f2 = this.f2755a;
        int i2 = 0;
        int hashCode = f2 == null ? 0 : f2.hashCode();
        S s = this.f2756b;
        if (s != null) {
            i2 = s.hashCode();
        }
        return hashCode ^ i2;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f2755a) + " " + String.valueOf(this.f2756b) + "}";
    }
}
