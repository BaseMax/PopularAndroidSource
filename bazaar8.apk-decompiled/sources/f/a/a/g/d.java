package f.a.a.g;

import android.util.Pair;
import f.a.a.e.b.b.B;
import f.a.a.g.h.b;
import ir.cafebazaar.inline.ux.prefill.PrefillDomain;
import java.util.HashMap;
import java.util.Map;

/* compiled from: UserInputManager */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public HashMap<String, Pair<PrefillDomain, B.a>> f14440a = new HashMap<>();

    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f14440a.entrySet()) {
            String a2 = ((B.a) ((Pair) next.getValue()).second).a();
            if (a2 != null) {
                hashMap.put(next.getKey(), a2);
            }
        }
        return hashMap;
    }

    public Map<String, Object> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f14440a.entrySet()) {
            Object b2 = ((B.a) ((Pair) next.getValue()).second).b();
            if (!a(b2)) {
                hashMap.put(next.getKey(), b2);
            }
        }
        return hashMap;
    }

    public boolean c() {
        return a().size() == 0;
    }

    public void d() {
        this.f14440a.clear();
    }

    public final boolean a(Object obj) {
        boolean z = true;
        if (obj == null) {
            return true;
        }
        if (!(obj instanceof String) || !((String) obj).trim().equals("")) {
            z = false;
        }
        return z;
    }

    public void a(b bVar) {
        f.a.a.g.h.a.b a2 = bVar.a();
        for (Map.Entry next : this.f14440a.entrySet()) {
            a2.a((PrefillDomain) ((Pair) next.getValue()).first, (String) next.getKey());
        }
        a2.b();
    }

    public void b(b bVar) {
        f.a.a.g.h.a.b a2 = bVar.a();
        for (Map.Entry next : this.f14440a.entrySet()) {
            Object b2 = ((B.a) ((Pair) next.getValue()).second).b();
            if (b2 != null && (!(b2 instanceof String) || !((String) b2).trim().equals(""))) {
                a2.a((PrefillDomain) ((Pair) next.getValue()).first, (String) next.getKey(), b2);
            }
        }
        a2.b();
    }

    public void a(String str, PrefillDomain prefillDomain, B.a aVar) {
        this.f14440a.put(str, new Pair(prefillDomain, aVar));
    }
}
