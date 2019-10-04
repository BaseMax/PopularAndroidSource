package f.a.a.a.b;

import f.a.a.d.a;
import f.a.a.e.g;
import f.a.a.f.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: PreCache */
public class f implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, Object> f13932a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public Map<String, Integer> f13933b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public List<String> f13934c = new ArrayList();

    public f() {
        f13932a.put("precache", true);
    }

    public void a(g gVar) {
        for (String a2 : this.f13934c) {
            e.a().a(a2);
        }
        for (Map.Entry<String, Integer> key : this.f13933b.entrySet()) {
            a(gVar, (String) key.getKey());
        }
    }

    public void b(String str) {
        a(str, -1);
    }

    public final void a(g gVar, String str) {
        e eVar = new e(this, gVar, str);
        eVar.c();
        gVar.j().a(gVar.h().g().a().a(str), eVar);
    }

    public void a(String str, int i2) {
        this.f13933b.put(str, Integer.valueOf(i2));
    }

    public void a(String str) {
        this.f13934c.add(str);
    }
}
