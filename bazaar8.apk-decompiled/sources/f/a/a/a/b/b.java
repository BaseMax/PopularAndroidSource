package f.a.a.a.b;

import java.util.HashMap;
import java.util.Map;

/* compiled from: DummyCacheBackend */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Object> f13927a = new HashMap();

    public void a(String str, Object obj, int i2) {
        a(str, obj);
    }

    public boolean b(String str) {
        return this.f13927a.containsKey(str);
    }

    public void a(String str, Object obj) {
        this.f13927a.put(str, obj);
    }

    public Object a(String str) {
        return this.f13927a.get(str);
    }
}
