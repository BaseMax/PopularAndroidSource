package com.bumptech.glide.load.b.a;

import com.bumptech.glide.load.b.a.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class h<K extends m, V> {

    /* renamed from: a  reason: collision with root package name */
    private final a<K, V> f2130a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<K, a<K, V>> f2131b = new HashMap();

    static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f2132a;

        /* renamed from: b  reason: collision with root package name */
        a<K, V> f2133b;
        a<K, V> c;
        private List<V> d;

        a() {
            this(null);
        }

        a(K k) {
            this.c = this;
            this.f2133b = this;
            this.f2132a = k;
        }

        public final V removeLast() {
            int size = size();
            if (size > 0) {
                return this.d.remove(size - 1);
            }
            return null;
        }

        public final int size() {
            List<V> list = this.d;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public final void add(V v) {
            if (this.d == null) {
                this.d = new ArrayList();
            }
            this.d.add(v);
        }
    }

    h() {
    }

    public final void put(K k, V v) {
        a aVar = this.f2131b.get(k);
        if (aVar == null) {
            aVar = new a(k);
            b(aVar);
            aVar.c = this.f2130a.c;
            aVar.f2133b = this.f2130a;
            a(aVar);
            this.f2131b.put(k, aVar);
        } else {
            k.offer();
        }
        aVar.add(v);
    }

    public final V get(K k) {
        a aVar = this.f2131b.get(k);
        if (aVar == null) {
            aVar = new a(k);
            this.f2131b.put(k, aVar);
        } else {
            k.offer();
        }
        b(aVar);
        a<K, V> aVar2 = this.f2130a;
        aVar.c = aVar2;
        aVar.f2133b = aVar2.f2133b;
        a(aVar);
        return aVar.removeLast();
    }

    public final V removeLast() {
        for (a<K, V> aVar = this.f2130a.c; !aVar.equals(this.f2130a); aVar = aVar.c) {
            V removeLast = aVar.removeLast();
            if (removeLast != null) {
                return removeLast;
            }
            b(aVar);
            this.f2131b.remove(aVar.f2132a);
            ((m) aVar.f2132a).offer();
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a<K, V> aVar = this.f2130a.f2133b; !aVar.equals(this.f2130a); aVar = aVar.f2133b) {
            z = true;
            sb.append('{');
            sb.append(aVar.f2132a);
            sb.append(':');
            sb.append(aVar.size());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }

    private static <K, V> void a(a<K, V> aVar) {
        aVar.f2133b.c = aVar;
        aVar.c.f2133b = aVar;
    }

    private static <K, V> void b(a<K, V> aVar) {
        aVar.c.f2133b = aVar.f2133b;
        aVar.f2133b.c = aVar.c;
    }
}
