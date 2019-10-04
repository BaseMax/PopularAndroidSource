package f.a.a.d;

import f.a.a.d.a;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ExtensiblePlatform */
public abstract class b implements f {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, a.C0141a> f14001a = new HashMap();

    public void a(String str, a.C0141a aVar) {
        this.f14001a.put(str, aVar);
    }

    public a a(String str, Object obj) {
        if (this.f14001a.containsKey(str)) {
            return this.f14001a.get(str).a(obj, this);
        }
        return null;
    }
}
