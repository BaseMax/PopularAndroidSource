package b.f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: MapCollections */
public abstract class h<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public h<K, V>.defpackage.b f2357a;

    /* renamed from: b  reason: collision with root package name */
    public h<K, V>.c f2358b;

    /* renamed from: c  reason: collision with root package name */
    public h<K, V>.e f2359c;

    /* compiled from: MapCollections */
    final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        public final int f2360a;

        /* renamed from: b  reason: collision with root package name */
        public int f2361b;

        /* renamed from: c  reason: collision with root package name */
        public int f2362c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f2363d = false;

        public a(int i2) {
            this.f2360a = i2;
            this.f2361b = h.this.c();
        }

        public boolean hasNext() {
            return this.f2362c < this.f2361b;
        }

        public T next() {
            if (hasNext()) {
                T a2 = h.this.a(this.f2362c, this.f2360a);
                this.f2362c++;
                this.f2363d = true;
                return a2;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.f2363d) {
                this.f2362c--;
                this.f2361b--;
                this.f2363d = false;
                h.this.a(this.f2362c);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* compiled from: MapCollections */
    final class b implements Set<Map.Entry<K, V>> {
        public b() {
        }

        public boolean a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            a((Map.Entry) obj);
            throw null;
        }

        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int c2 = h.this.c();
            for (Map.Entry entry : collection) {
                h.this.a(entry.getKey(), entry.getValue());
            }
            return c2 != h.this.c();
        }

        public void clear() {
            h.this.a();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = h.this.a(entry.getKey());
            if (a2 < 0) {
                return false;
            }
            return e.a(h.this.a(a2, 1), entry.getValue());
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return h.a(this, obj);
        }

        public int hashCode() {
            int i2;
            int i3;
            int i4 = 0;
            for (int c2 = h.this.c() - 1; c2 >= 0; c2--) {
                Object a2 = h.this.a(c2, 0);
                Object a3 = h.this.a(c2, 1);
                if (a2 == null) {
                    i2 = 0;
                } else {
                    i2 = a2.hashCode();
                }
                if (a3 == null) {
                    i3 = 0;
                } else {
                    i3 = a3.hashCode();
                }
                i4 += i2 ^ i3;
            }
            return i4;
        }

        public boolean isEmpty() {
            return h.this.c() == 0;
        }

        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public int size() {
            return h.this.c();
        }

        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: MapCollections */
    final class c implements Set<K> {
        public c() {
        }

        public boolean add(K k2) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            h.this.a();
        }

        public boolean contains(Object obj) {
            return h.this.a(obj) >= 0;
        }

        public boolean containsAll(Collection<?> collection) {
            return h.a(h.this.b(), collection);
        }

        public boolean equals(Object obj) {
            return h.a(this, obj);
        }

        public int hashCode() {
            int i2;
            int i3 = 0;
            for (int c2 = h.this.c() - 1; c2 >= 0; c2--) {
                Object a2 = h.this.a(c2, 0);
                if (a2 == null) {
                    i2 = 0;
                } else {
                    i2 = a2.hashCode();
                }
                i3 += i2;
            }
            return i3;
        }

        public boolean isEmpty() {
            return h.this.c() == 0;
        }

        public Iterator<K> iterator() {
            return new a(0);
        }

        public boolean remove(Object obj) {
            int a2 = h.this.a(obj);
            if (a2 < 0) {
                return false;
            }
            h.this.a(a2);
            return true;
        }

        public boolean removeAll(Collection<?> collection) {
            return h.b(h.this.b(), collection);
        }

        public boolean retainAll(Collection<?> collection) {
            return h.c(h.this.b(), collection);
        }

        public int size() {
            return h.this.c();
        }

        public Object[] toArray() {
            return h.this.b(0);
        }

        public <T> T[] toArray(T[] tArr) {
            return h.this.a(tArr, 0);
        }
    }

    /* compiled from: MapCollections */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public int f2367a;

        /* renamed from: b  reason: collision with root package name */
        public int f2368b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f2369c = false;

        public d() {
            this.f2367a = r2.c() - 1;
            this.f2368b = -1;
        }

        public boolean equals(Object obj) {
            if (this.f2369c) {
                boolean z = false;
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (e.a(entry.getKey(), h.this.a(this.f2368b, 0)) && e.a(entry.getValue(), h.this.a(this.f2368b, 1))) {
                    z = true;
                }
                return z;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public K getKey() {
            if (this.f2369c) {
                return h.this.a(this.f2368b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public V getValue() {
            if (this.f2369c) {
                return h.this.a(this.f2368b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public boolean hasNext() {
            return this.f2368b < this.f2367a;
        }

        public int hashCode() {
            int i2;
            if (this.f2369c) {
                int i3 = 0;
                Object a2 = h.this.a(this.f2368b, 0);
                Object a3 = h.this.a(this.f2368b, 1);
                if (a2 == null) {
                    i2 = 0;
                } else {
                    i2 = a2.hashCode();
                }
                if (a3 != null) {
                    i3 = a3.hashCode();
                }
                return i2 ^ i3;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public void remove() {
            if (this.f2369c) {
                h.this.a(this.f2368b);
                this.f2368b--;
                this.f2367a--;
                this.f2369c = false;
                return;
            }
            throw new IllegalStateException();
        }

        public V setValue(V v) {
            if (this.f2369c) {
                return h.this.a(this.f2368b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }

        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f2368b++;
                this.f2369c = true;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: MapCollections */
    final class e implements Collection<V> {
        public e() {
        }

        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            h.this.a();
        }

        public boolean contains(Object obj) {
            return h.this.b(obj) >= 0;
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public boolean isEmpty() {
            return h.this.c() == 0;
        }

        public Iterator<V> iterator() {
            return new a(1);
        }

        public boolean remove(Object obj) {
            int b2 = h.this.b(obj);
            if (b2 < 0) {
                return false;
            }
            h.this.a(b2);
            return true;
        }

        public boolean removeAll(Collection<?> collection) {
            int c2 = h.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < c2) {
                if (collection.contains(h.this.a(i2, 1))) {
                    h.this.a(i2);
                    i2--;
                    c2--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        public boolean retainAll(Collection<?> collection) {
            int c2 = h.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < c2) {
                if (!collection.contains(h.this.a(i2, 1))) {
                    h.this.a(i2);
                    i2--;
                    c2--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        public int size() {
            return h.this.c();
        }

        public Object[] toArray() {
            return h.this.b(1);
        }

        public <T> T[] toArray(T[] tArr) {
            return h.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        for (Object containsKey : collection) {
            if (!map.containsKey(containsKey)) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        for (Object remove : collection) {
            map.remove(remove);
        }
        return size != map.size();
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract int a(Object obj);

    public abstract Object a(int i2, int i3);

    public abstract V a(int i2, V v);

    public abstract void a();

    public abstract void a(int i2);

    public abstract void a(K k2, V v);

    public abstract int b(Object obj);

    public abstract Map<K, V> b();

    public abstract int c();

    public Set<Map.Entry<K, V>> d() {
        if (this.f2357a == null) {
            this.f2357a = new b();
        }
        return this.f2357a;
    }

    public Set<K> e() {
        if (this.f2358b == null) {
            this.f2358b = new c();
        }
        return this.f2358b;
    }

    public Collection<V> f() {
        if (this.f2359c == null) {
            this.f2359c = new e();
        }
        return this.f2359c;
    }

    public <T> T[] a(T[] tArr, int i2) {
        int c2 = c();
        if (tArr.length < c2) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), c2);
        }
        for (int i3 = 0; i3 < c2; i3++) {
            tArr[i3] = a(i3, i2);
        }
        if (tArr.length > c2) {
            tArr[c2] = null;
        }
        return tArr;
    }

    public Object[] b(int i2) {
        int c2 = c();
        Object[] objArr = new Object[c2];
        for (int i3 = 0; i3 < c2; i3++) {
            objArr[i3] = a(i3, i2);
        }
        return objArr;
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        boolean z = true;
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() != set2.size() || !set.containsAll(set2)) {
                    z = false;
                }
                return z;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
