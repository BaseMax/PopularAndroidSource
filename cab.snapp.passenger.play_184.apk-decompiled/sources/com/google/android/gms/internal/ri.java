package com.google.android.gms.internal;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

class ri<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f3494a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public List<rn> f3495b;
    /* access modifiers changed from: private */
    public Map<K, V> c;
    private boolean d;
    private volatile rp e;
    private Map<K, V> f;

    private ri(int i) {
        this.f3494a = i;
        this.f3495b = Collections.emptyList();
        this.c = Collections.emptyMap();
        this.f = Collections.emptyMap();
    }

    /* synthetic */ ri(int i, byte b2) {
        this(i);
    }

    private final int a(K k) {
        int size = this.f3495b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f3495b.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.f3495b.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    static <FieldDescriptorType extends pq<FieldDescriptorType>> ri<FieldDescriptorType, Object> a(int i) {
        return new rj(i);
    }

    /* access modifiers changed from: private */
    public final void a() {
        if (this.d) {
            throw new UnsupportedOperationException();
        }
    }

    /* access modifiers changed from: private */
    public final V b(int i) {
        a();
        V value = this.f3495b.remove(i).getValue();
        if (!this.c.isEmpty()) {
            Iterator it = b().entrySet().iterator();
            this.f3495b.add(new rn(this, (Map.Entry) it.next()));
            it.remove();
        }
        return value;
    }

    private final SortedMap<K, V> b() {
        a();
        if (this.c.isEmpty() && !(this.c instanceof TreeMap)) {
            this.c = new TreeMap();
            this.f = ((TreeMap) this.c).descendingMap();
        }
        return (SortedMap) this.c;
    }

    public void clear() {
        a();
        if (!this.f3495b.isEmpty()) {
            this.f3495b.clear();
        }
        if (!this.c.isEmpty()) {
            this.c.clear();
        }
    }

    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.c.containsKey(comparable);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        if (this.e == null) {
            this.e = new rp(this, (byte) 0);
        }
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ri)) {
            return super.equals(obj);
        }
        ri riVar = (ri) obj;
        int size = size();
        if (size != riVar.size()) {
            return false;
        }
        int zzczj = zzczj();
        if (zzczj != riVar.zzczj()) {
            return entrySet().equals(riVar.entrySet());
        }
        for (int i = 0; i < zzczj; i++) {
            if (!zzmb(i).equals(riVar.zzmb(i))) {
                return false;
            }
        }
        if (zzczj != size) {
            return this.c.equals(riVar.c);
        }
        return true;
    }

    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a(comparable);
        return a2 >= 0 ? this.f3495b.get(a2).getValue() : this.c.get(comparable);
    }

    public int hashCode() {
        int zzczj = zzczj();
        int i = 0;
        for (int i2 = 0; i2 < zzczj; i2++) {
            i += this.f3495b.get(i2).hashCode();
        }
        return this.c.size() > 0 ? i + this.c.hashCode() : i;
    }

    public final boolean isImmutable() {
        return this.d;
    }

    public V remove(Object obj) {
        a();
        Comparable comparable = (Comparable) obj;
        int a2 = a(comparable);
        if (a2 >= 0) {
            return b(a2);
        }
        if (this.c.isEmpty()) {
            return null;
        }
        return this.c.remove(comparable);
    }

    public int size() {
        return this.f3495b.size() + this.c.size();
    }

    /* renamed from: zza */
    public final V put(K k, V v) {
        a();
        int a2 = a(k);
        if (a2 >= 0) {
            return this.f3495b.get(a2).setValue(v);
        }
        a();
        if (this.f3495b.isEmpty() && !(this.f3495b instanceof ArrayList)) {
            this.f3495b = new ArrayList(this.f3494a);
        }
        int i = -(a2 + 1);
        if (i >= this.f3494a) {
            return b().put(k, v);
        }
        int size = this.f3495b.size();
        int i2 = this.f3494a;
        if (size == i2) {
            rn remove = this.f3495b.remove(i2 - 1);
            b().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.f3495b.add(i, new rn(this, k, v));
        return null;
    }

    public void zzbiy() {
        if (!this.d) {
            this.c = this.c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.c);
            this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
            this.d = true;
        }
    }

    public final int zzczj() {
        return this.f3495b.size();
    }

    public final Iterable<Map.Entry<K, V>> zzczk() {
        return this.c.isEmpty() ? rk.a() : this.c.entrySet();
    }

    public final Map.Entry<K, V> zzmb(int i) {
        return this.f3495b.get(i);
    }
}
