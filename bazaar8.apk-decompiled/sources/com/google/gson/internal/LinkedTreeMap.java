package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<Comparable> f13535a = new t();
    public Comparator<? super K> comparator;
    public LinkedTreeMap<K, V>.defpackage.a entrySet;
    public final d<K, V> header;
    public LinkedTreeMap<K, V>.defpackage.b keySet;
    public int modCount;
    public d<K, V> root;
    public int size;

    class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        public void clear() {
            LinkedTreeMap.this.clear();
        }

        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.a((Map.Entry<?, ?>) (Map.Entry) obj) != null;
        }

        public Iterator<Map.Entry<K, V>> iterator() {
            return new u(this);
        }

        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            d a2 = LinkedTreeMap.this.a((Map.Entry<?, ?>) (Map.Entry) obj);
            if (a2 == null) {
                return false;
            }
            LinkedTreeMap.this.b(a2, true);
            return true;
        }

        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    final class b extends AbstractSet<K> {
        public b() {
        }

        public void clear() {
            LinkedTreeMap.this.clear();
        }

        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        public Iterator<K> iterator() {
            return new v(this);
        }

        public boolean remove(Object obj) {
            return LinkedTreeMap.this.c(obj) != null;
        }

        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    private abstract class c<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        public d<K, V> f13538a;

        /* renamed from: b  reason: collision with root package name */
        public d<K, V> f13539b = null;

        /* renamed from: c  reason: collision with root package name */
        public int f13540c;

        public c() {
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            this.f13538a = linkedTreeMap.header.f13545d;
            this.f13540c = linkedTreeMap.modCount;
        }

        public final d<K, V> a() {
            d<K, V> dVar = this.f13538a;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (dVar == linkedTreeMap.header) {
                throw new NoSuchElementException();
            } else if (linkedTreeMap.modCount == this.f13540c) {
                this.f13538a = dVar.f13545d;
                this.f13539b = dVar;
                return dVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        public final boolean hasNext() {
            return this.f13538a != LinkedTreeMap.this.header;
        }

        public final void remove() {
            d<K, V> dVar = this.f13539b;
            if (dVar != null) {
                LinkedTreeMap.this.b(dVar, true);
                this.f13539b = null;
                this.f13540c = LinkedTreeMap.this.modCount;
                return;
            }
            throw new IllegalStateException();
        }
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public d<K, V> f13542a;

        /* renamed from: b  reason: collision with root package name */
        public d<K, V> f13543b;

        /* renamed from: c  reason: collision with root package name */
        public d<K, V> f13544c;

        /* renamed from: d  reason: collision with root package name */
        public d<K, V> f13545d;

        /* renamed from: e  reason: collision with root package name */
        public d<K, V> f13546e;

        /* renamed from: f  reason: collision with root package name */
        public final K f13547f;

        /* renamed from: g  reason: collision with root package name */
        public V f13548g;

        /* renamed from: h  reason: collision with root package name */
        public int f13549h;

        public d() {
            this.f13547f = null;
            this.f13546e = this;
            this.f13545d = this;
        }

        public d<K, V> a() {
            d<K, V> dVar = this;
            for (d<K, V> dVar2 = this.f13543b; dVar2 != null; dVar2 = dVar2.f13543b) {
                dVar = dVar2;
            }
            return dVar;
        }

        public d<K, V> b() {
            d<K, V> dVar = this;
            for (d<K, V> dVar2 = this.f13544c; dVar2 != null; dVar2 = dVar2.f13544c) {
                dVar = dVar2;
            }
            return dVar;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k2 = this.f13547f;
            if (k2 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k2.equals(entry.getKey())) {
                return false;
            }
            V v = this.f13548g;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public K getKey() {
            return this.f13547f;
        }

        public V getValue() {
            return this.f13548g;
        }

        public int hashCode() {
            K k2 = this.f13547f;
            int i2 = 0;
            int hashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.f13548g;
            if (v != null) {
                i2 = v.hashCode();
            }
            return hashCode ^ i2;
        }

        public V setValue(V v) {
            V v2 = this.f13548g;
            this.f13548g = v;
            return v2;
        }

        public String toString() {
            return this.f13547f + "=" + this.f13548g;
        }

        public d(d<K, V> dVar, K k2, d<K, V> dVar2, d<K, V> dVar3) {
            this.f13542a = dVar;
            this.f13547f = k2;
            this.f13549h = 1;
            this.f13545d = dVar2;
            this.f13546e = dVar3;
            dVar3.f13545d = this;
            dVar2.f13546e = this;
        }
    }

    public LinkedTreeMap() {
        this(f13535a);
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    public d<K, V> a(K k2, boolean z) {
        int i2;
        d<K, V> dVar;
        Comparator<? super K> comparator2 = this.comparator;
        d<K, V> dVar2 = this.root;
        if (dVar2 != null) {
            Comparable comparable = comparator2 == f13535a ? (Comparable) k2 : null;
            while (true) {
                if (comparable != null) {
                    i2 = comparable.compareTo(dVar2.f13547f);
                } else {
                    i2 = comparator2.compare(k2, dVar2.f13547f);
                }
                if (i2 == 0) {
                    return dVar2;
                }
                d<K, V> dVar3 = i2 < 0 ? dVar2.f13543b : dVar2.f13544c;
                if (dVar3 == null) {
                    break;
                }
                dVar2 = dVar3;
            }
        } else {
            i2 = 0;
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar4 = this.header;
        if (dVar2 != null) {
            dVar = new d<>(dVar2, k2, dVar4, dVar4.f13546e);
            if (i2 < 0) {
                dVar2.f13543b = dVar;
            } else {
                dVar2.f13544c = dVar;
            }
            a(dVar2, true);
        } else if (comparator2 != f13535a || (k2 instanceof Comparable)) {
            dVar = new d<>(dVar2, k2, dVar4, dVar4.f13546e);
            this.root = dVar;
        } else {
            throw new ClassCastException(k2.getClass().getName() + " is not Comparable");
        }
        this.size++;
        this.modCount++;
        return dVar;
    }

    public d<K, V> b(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public d<K, V> c(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            b(b2, true);
        }
        return b2;
    }

    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        d<K, V> dVar = this.header;
        dVar.f13546e = dVar;
        dVar.f13545d = dVar;
    }

    public boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.defpackage.a aVar = this.entrySet;
        if (aVar != null) {
            return aVar;
        }
        LinkedTreeMap<K, V>.defpackage.a aVar2 = new a();
        this.entrySet = aVar2;
        return aVar2;
    }

    public V get(Object obj) {
        d b2 = b(obj);
        if (b2 != null) {
            return b2.f13548g;
        }
        return null;
    }

    public Set<K> keySet() {
        LinkedTreeMap<K, V>.defpackage.b bVar = this.keySet;
        if (bVar != null) {
            return bVar;
        }
        LinkedTreeMap<K, V>.defpackage.b bVar2 = new b();
        this.keySet = bVar2;
        return bVar2;
    }

    public V put(K k2, V v) {
        if (k2 != null) {
            d a2 = a(k2, true);
            V v2 = a2.f13548g;
            a2.f13548g = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    public V remove(Object obj) {
        d c2 = c(obj);
        if (c2 != null) {
            return c2.f13548g;
        }
        return null;
    }

    public int size() {
        return this.size;
    }

    public LinkedTreeMap(Comparator<? super K> comparator2) {
        this.size = 0;
        this.modCount = 0;
        this.header = new d<>();
        this.comparator = comparator2 == null ? f13535a : comparator2;
    }

    public void b(d<K, V> dVar, boolean z) {
        int i2;
        if (z) {
            d<K, V> dVar2 = dVar.f13546e;
            dVar2.f13545d = dVar.f13545d;
            dVar.f13545d.f13546e = dVar2;
        }
        d<K, V> dVar3 = dVar.f13543b;
        d<K, V> dVar4 = dVar.f13544c;
        d<K, V> dVar5 = dVar.f13542a;
        int i3 = 0;
        if (dVar3 == null || dVar4 == null) {
            if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.f13543b = null;
            } else if (dVar4 != null) {
                a(dVar, dVar4);
                dVar.f13544c = null;
            } else {
                a(dVar, (d<K, V>) null);
            }
            a(dVar5, false);
            this.size--;
            this.modCount++;
            return;
        }
        d<K, V> b2 = dVar3.f13549h > dVar4.f13549h ? dVar3.b() : dVar4.a();
        b(b2, false);
        d<K, V> dVar6 = dVar.f13543b;
        if (dVar6 != null) {
            i2 = dVar6.f13549h;
            b2.f13543b = dVar6;
            dVar6.f13542a = b2;
            dVar.f13543b = null;
        } else {
            i2 = 0;
        }
        d<K, V> dVar7 = dVar.f13544c;
        if (dVar7 != null) {
            i3 = dVar7.f13549h;
            b2.f13544c = dVar7;
            dVar7.f13542a = b2;
            dVar.f13544c = null;
        }
        b2.f13549h = Math.max(i2, i3) + 1;
        a(dVar, b2);
    }

    public d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> b2 = b((Object) entry.getKey());
        if (b2 != null && a((Object) b2.f13548g, (Object) entry.getValue())) {
            return b2;
        }
        return null;
    }

    public final boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public final void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f13542a;
        dVar.f13542a = null;
        if (dVar2 != null) {
            dVar2.f13542a = dVar3;
        }
        if (dVar3 == null) {
            this.root = dVar2;
        } else if (dVar3.f13543b == dVar) {
            dVar3.f13543b = dVar2;
        } else {
            dVar3.f13544c = dVar2;
        }
    }

    public final void a(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f13543b;
            d<K, V> dVar3 = dVar.f13544c;
            int i2 = 0;
            int i3 = dVar2 != null ? dVar2.f13549h : 0;
            int i4 = dVar3 != null ? dVar3.f13549h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                d<K, V> dVar4 = dVar3.f13543b;
                d<K, V> dVar5 = dVar3.f13544c;
                int i6 = dVar5 != null ? dVar5.f13549h : 0;
                if (dVar4 != null) {
                    i2 = dVar4.f13549h;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    a(dVar);
                } else {
                    b(dVar3);
                    a(dVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                d<K, V> dVar6 = dVar2.f13543b;
                d<K, V> dVar7 = dVar2.f13544c;
                int i8 = dVar7 != null ? dVar7.f13549h : 0;
                if (dVar6 != null) {
                    i2 = dVar6.f13549h;
                }
                int i9 = i2 - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    b(dVar);
                } else {
                    a(dVar2);
                    b(dVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                dVar.f13549h = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                dVar.f13549h = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.f13542a;
        }
    }

    public final void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f13543b;
        d<K, V> dVar3 = dVar.f13544c;
        d<K, V> dVar4 = dVar2.f13543b;
        d<K, V> dVar5 = dVar2.f13544c;
        dVar.f13543b = dVar5;
        if (dVar5 != null) {
            dVar5.f13542a = dVar;
        }
        a(dVar, dVar2);
        dVar2.f13544c = dVar;
        dVar.f13542a = dVar2;
        int i2 = 0;
        dVar.f13549h = Math.max(dVar3 != null ? dVar3.f13549h : 0, dVar5 != null ? dVar5.f13549h : 0) + 1;
        int i3 = dVar.f13549h;
        if (dVar4 != null) {
            i2 = dVar4.f13549h;
        }
        dVar2.f13549h = Math.max(i3, i2) + 1;
    }

    public final void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f13543b;
        d<K, V> dVar3 = dVar.f13544c;
        d<K, V> dVar4 = dVar3.f13543b;
        d<K, V> dVar5 = dVar3.f13544c;
        dVar.f13544c = dVar4;
        if (dVar4 != null) {
            dVar4.f13542a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f13543b = dVar;
        dVar.f13542a = dVar3;
        int i2 = 0;
        dVar.f13549h = Math.max(dVar2 != null ? dVar2.f13549h : 0, dVar4 != null ? dVar4.f13549h : 0) + 1;
        int i3 = dVar.f13549h;
        if (dVar5 != null) {
            i2 = dVar5.f13549h;
        }
        dVar3.f13549h = Math.max(i3, i2) + 1;
    }
}
