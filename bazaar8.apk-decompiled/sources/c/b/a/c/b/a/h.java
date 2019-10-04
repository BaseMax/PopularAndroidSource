package c.b.a.c.b.a;

import c.b.a.c.b.a.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: GroupedLinkedMap */
public class h<K extends m, V> {

    /* renamed from: a  reason: collision with root package name */
    public final a<K, V> f3852a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    public final Map<K, a<K, V>> f3853b = new HashMap();

    /* compiled from: GroupedLinkedMap */
    private static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final K f3854a;

        /* renamed from: b  reason: collision with root package name */
        public List<V> f3855b;

        /* renamed from: c  reason: collision with root package name */
        public a<K, V> f3856c;

        /* renamed from: d  reason: collision with root package name */
        public a<K, V> f3857d;

        public a() {
            this(null);
        }

        public V a() {
            int b2 = b();
            if (b2 > 0) {
                return this.f3855b.remove(b2 - 1);
            }
            return null;
        }

        public int b() {
            List<V> list = this.f3855b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public a(K k2) {
            this.f3857d = this;
            this.f3856c = this;
            this.f3854a = k2;
        }

        public void a(V v) {
            if (this.f3855b == null) {
                this.f3855b = new ArrayList();
            }
            this.f3855b.add(v);
        }
    }

    public static <K, V> void c(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f3857d;
        aVar2.f3856c = aVar.f3856c;
        aVar.f3856c.f3857d = aVar2;
    }

    public static <K, V> void d(a<K, V> aVar) {
        aVar.f3856c.f3857d = aVar;
        aVar.f3857d.f3856c = aVar;
    }

    public void a(K k2, V v) {
        a aVar = this.f3853b.get(k2);
        if (aVar == null) {
            aVar = new a(k2);
            b(aVar);
            this.f3853b.put(k2, aVar);
        } else {
            k2.a();
        }
        aVar.a(v);
    }

    public final void b(a<K, V> aVar) {
        c(aVar);
        a<K, V> aVar2 = this.f3852a;
        aVar.f3857d = aVar2.f3857d;
        aVar.f3856c = aVar2;
        d(aVar);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a<K, V> aVar = this.f3852a.f3856c; !aVar.equals(this.f3852a); aVar = aVar.f3856c) {
            z = true;
            sb.append('{');
            sb.append(aVar.f3854a);
            sb.append(':');
            sb.append(aVar.b());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }

    public V a(K k2) {
        a aVar = this.f3853b.get(k2);
        if (aVar == null) {
            aVar = new a(k2);
            this.f3853b.put(k2, aVar);
        } else {
            k2.a();
        }
        a(aVar);
        return aVar.a();
    }

    public V a() {
        for (a<K, V> aVar = this.f3852a.f3857d; !aVar.equals(this.f3852a); aVar = aVar.f3857d) {
            V a2 = aVar.a();
            if (a2 != null) {
                return a2;
            }
            c(aVar);
            this.f3853b.remove(aVar.f3854a);
            ((m) aVar.f3854a).a();
        }
        return null;
    }

    public final void a(a<K, V> aVar) {
        c(aVar);
        a<K, V> aVar2 = this.f3852a;
        aVar.f3857d = aVar2;
        aVar.f3856c = aVar2.f3856c;
        d(aVar);
    }
}
