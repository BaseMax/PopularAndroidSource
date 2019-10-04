package c.e.d;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: JsonArray */
public final class m extends p implements Iterable<p> {

    /* renamed from: a  reason: collision with root package name */
    public final List<p> f11871a = new ArrayList();

    public void a(p pVar) {
        if (pVar == null) {
            pVar = q.f11872a;
        }
        this.f11871a.add(pVar);
    }

    public String e() {
        if (this.f11871a.size() == 1) {
            return this.f11871a.get(0).e();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof m) && ((m) obj).f11871a.equals(this.f11871a));
    }

    public p get(int i2) {
        return this.f11871a.get(i2);
    }

    public int hashCode() {
        return this.f11871a.hashCode();
    }

    public Iterator<p> iterator() {
        return this.f11871a.iterator();
    }

    public p a(int i2, p pVar) {
        return this.f11871a.set(i2, pVar);
    }

    public int a() {
        if (this.f11871a.size() == 1) {
            return this.f11871a.get(0).a();
        }
        throw new IllegalStateException();
    }
}
