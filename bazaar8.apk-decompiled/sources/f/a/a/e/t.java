package f.a.a.e;

import android.util.Pair;
import f.a.a.a.b.c;
import f.a.a.d.a;
import f.a.a.f.e;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Pages */
public class t implements a {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Pair<Object, Integer>> f14317a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public Collection<String> f14318b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public PageInflater f14319c;

    public void a(Object obj, String str, Integer num) {
        this.f14317a.put(str, new Pair(obj, num));
    }

    public PageInflater b() {
        return this.f14319c;
    }

    public void a(Object obj, String str) {
        a(obj, str, null);
    }

    public void a(String str) {
        this.f14318b.add(str);
    }

    public void a(PageInflater pageInflater) {
        this.f14319c = pageInflater;
    }

    public void a(g gVar, c cVar) {
        for (Map.Entry next : this.f14317a.entrySet()) {
            if (((Pair) next.getValue()).second != null) {
                gVar.j().a(cVar.a((String) next.getKey()), cVar.a(((Pair) next.getValue()).first), ((Integer) ((Pair) next.getValue()).second).intValue());
            } else {
                gVar.j().a(cVar.a((String) next.getKey()), cVar.a(((Pair) next.getValue()).first));
            }
        }
    }

    public void a() {
        for (String a2 : this.f14318b) {
            e.a().a(a2);
        }
    }
}
