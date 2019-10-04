package b.c.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: SafeIterableMap */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    public c<K, V> f2280a;

    /* renamed from: b  reason: collision with root package name */
    public c<K, V> f2281b;

    /* renamed from: c  reason: collision with root package name */
    public WeakHashMap<f<K, V>, Boolean> f2282c = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public int f2283d = 0;

    /* compiled from: SafeIterableMap */
    static class a<K, V> extends e<K, V> {
        public a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        public c<K, V> b(c<K, V> cVar) {
            return cVar.f2287d;
        }

        public c<K, V> c(c<K, V> cVar) {
            return cVar.f2286c;
        }
    }

    /* renamed from: b.c.a.b.b$b  reason: collision with other inner class name */
    /* compiled from: SafeIterableMap */
    private static class C0025b<K, V> extends e<K, V> {
        public C0025b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        public c<K, V> b(c<K, V> cVar) {
            return cVar.f2286c;
        }

        public c<K, V> c(c<K, V> cVar) {
            return cVar.f2287d;
        }
    }

    /* compiled from: SafeIterableMap */
    static class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final K f2284a;

        /* renamed from: b  reason: collision with root package name */
        public final V f2285b;

        /* renamed from: c  reason: collision with root package name */
        public c<K, V> f2286c;

        /* renamed from: d  reason: collision with root package name */
        public c<K, V> f2287d;

        public c(K k2, V v) {
            this.f2284a = k2;
            this.f2285b = v;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!this.f2284a.equals(cVar.f2284a) || !this.f2285b.equals(cVar.f2285b)) {
                z = false;
            }
            return z;
        }

        public K getKey() {
            return this.f2284a;
        }

        public V getValue() {
            return this.f2285b;
        }

        public int hashCode() {
            return this.f2284a.hashCode() ^ this.f2285b.hashCode();
        }

        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f2284a + "=" + this.f2285b;
        }
    }

    /* compiled from: SafeIterableMap */
    private class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public c<K, V> f2288a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f2289b = true;

        public d() {
        }

        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f2288a;
            if (cVar == cVar2) {
                this.f2288a = cVar2.f2287d;
                this.f2289b = this.f2288a == null;
            }
        }

        public boolean hasNext() {
            boolean z = true;
            if (this.f2289b) {
                if (b.this.f2280a == null) {
                    z = false;
                }
                return z;
            }
            c<K, V> cVar = this.f2288a;
            if (cVar == null || cVar.f2286c == null) {
                z = false;
            }
            return z;
        }

        public Map.Entry<K, V> next() {
            if (this.f2289b) {
                this.f2289b = false;
                this.f2288a = b.this.f2280a;
            } else {
                c<K, V> cVar = this.f2288a;
                this.f2288a = cVar != null ? cVar.f2286c : null;
            }
            return this.f2288a;
        }
    }

    /* compiled from: SafeIterableMap */
    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public c<K, V> f2291a;

        /* renamed from: b  reason: collision with root package name */
        public c<K, V> f2292b;

        public e(c<K, V> cVar, c<K, V> cVar2) {
            this.f2291a = cVar2;
            this.f2292b = cVar;
        }

        public void a(c<K, V> cVar) {
            if (this.f2291a == cVar && cVar == this.f2292b) {
                this.f2292b = null;
                this.f2291a = null;
            }
            c<K, V> cVar2 = this.f2291a;
            if (cVar2 == cVar) {
                this.f2291a = b(cVar2);
            }
            if (this.f2292b == cVar) {
                this.f2292b = a();
            }
        }

        public abstract c<K, V> b(c<K, V> cVar);

        public abstract c<K, V> c(c<K, V> cVar);

        public boolean hasNext() {
            return this.f2292b != null;
        }

        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f2292b;
            this.f2292b = a();
            return cVar;
        }

        public final c<K, V> a() {
            c<K, V> cVar = this.f2292b;
            c<K, V> cVar2 = this.f2291a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }
    }

    /* compiled from: SafeIterableMap */
    interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public c<K, V> a(K k2) {
        c<K, V> cVar = this.f2280a;
        while (cVar != null && !cVar.f2284a.equals(k2)) {
            cVar = cVar.f2286c;
        }
        return cVar;
    }

    public V b(K k2, V v) {
        c a2 = a(k2);
        if (a2 != null) {
            return a2.f2285b;
        }
        a(k2, v);
        return null;
    }

    public Map.Entry<K, V> c() {
        return this.f2281b;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0025b bVar = new C0025b(this.f2281b, this.f2280a);
        this.f2282c.put(bVar, false);
        return bVar;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object next = it2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        if (it.hasNext() || it2.hasNext()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Iterator it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += ((Map.Entry) it.next()).hashCode();
        }
        return i2;
    }

    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f2280a, this.f2281b);
        this.f2282c.put(aVar, false);
        return aVar;
    }

    public V remove(K k2) {
        c a2 = a(k2);
        if (a2 == null) {
            return null;
        }
        this.f2283d--;
        if (!this.f2282c.isEmpty()) {
            for (f<K, V> a3 : this.f2282c.keySet()) {
                a3.a(a2);
            }
        }
        c<K, V> cVar = a2.f2287d;
        if (cVar != null) {
            cVar.f2286c = a2.f2286c;
        } else {
            this.f2280a = a2.f2286c;
        }
        c<K, V> cVar2 = a2.f2286c;
        if (cVar2 != null) {
            cVar2.f2287d = a2.f2287d;
        } else {
            this.f2281b = a2.f2287d;
        }
        a2.f2286c = null;
        a2.f2287d = null;
        return a2.f2285b;
    }

    public int size() {
        return this.f2283d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb.append(((Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public c<K, V> a(K k2, V v) {
        c<K, V> cVar = new c<>(k2, v);
        this.f2283d++;
        c<K, V> cVar2 = this.f2281b;
        if (cVar2 == null) {
            this.f2280a = cVar;
            this.f2281b = this.f2280a;
            return cVar;
        }
        cVar2.f2286c = cVar;
        cVar.f2287d = cVar2;
        this.f2281b = cVar;
        return cVar;
    }

    public b<K, V>.d b() {
        b<K, V>.d dVar = new d();
        this.f2282c.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> a() {
        return this.f2280a;
    }
}
