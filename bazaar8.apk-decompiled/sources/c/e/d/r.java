package c.e.d;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;

/* compiled from: JsonObject */
public final class r extends p {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedTreeMap<String, p> f11873a = new LinkedTreeMap<>();

    public void a(String str, p pVar) {
        if (pVar == null) {
            pVar = q.f11872a;
        }
        this.f11873a.put(str, pVar);
    }

    public r b(String str) {
        return (r) this.f11873a.get(str);
    }

    public boolean c(String str) {
        return this.f11873a.containsKey(str);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof r) && ((r) obj).f11873a.equals(this.f11873a));
    }

    public int hashCode() {
        return this.f11873a.hashCode();
    }

    public Set<Map.Entry<String, p>> j() {
        return this.f11873a.entrySet();
    }

    public Set<String> k() {
        return this.f11873a.keySet();
    }

    public void a(String str, String str2) {
        a(str, a((Object) str2));
    }

    public void a(String str, Number number) {
        a(str, a((Object) number));
    }

    public final p a(Object obj) {
        return obj == null ? q.f11872a : new t(obj);
    }

    public p a(String str) {
        return this.f11873a.get(str);
    }
}
