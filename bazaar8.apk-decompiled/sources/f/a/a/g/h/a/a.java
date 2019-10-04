package f.a.a.g.h.a;

import java.util.HashMap;
import java.util.Map;

/* compiled from: InMemPrefillSheet */
public class a extends b {

    /* renamed from: c  reason: collision with root package name */
    public Map<String, Object> f14493c = new HashMap();

    public a(b bVar) {
        super(bVar);
    }

    public void a() {
    }

    public void a(String str, Object obj) {
        this.f14493c.put(str, obj);
    }

    public Object b(String str) {
        if (this.f14493c.containsKey(str)) {
            return this.f14493c.get(str);
        }
        return null;
    }

    public boolean d(String str) {
        return this.f14493c.containsKey(str);
    }

    public void a(String str) {
        this.f14493c.remove(str);
    }
}
