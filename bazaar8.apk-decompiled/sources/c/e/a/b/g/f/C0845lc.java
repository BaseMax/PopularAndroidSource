package c.e.a.b.g.f;

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

/* renamed from: c.e.a.b.g.f.lc  reason: case insensitive filesystem */
public class C0845lc<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public final int f10453a;

    /* renamed from: b  reason: collision with root package name */
    public List<C0872sc> f10454b;

    /* renamed from: c  reason: collision with root package name */
    public Map<K, V> f10455c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10456d;

    /* renamed from: e  reason: collision with root package name */
    public volatile C0880uc f10457e;

    /* renamed from: f  reason: collision with root package name */
    public Map<K, V> f10458f;

    /* renamed from: g  reason: collision with root package name */
    public volatile C0857oc f10459g;

    public C0845lc(int i2) {
        this.f10453a = i2;
        this.f10454b = Collections.emptyList();
        this.f10455c = Collections.emptyMap();
        this.f10458f = Collections.emptyMap();
    }

    public static <FieldDescriptorType extends C0832ib<FieldDescriptorType>> C0845lc<FieldDescriptorType, Object> a(int i2) {
        return new C0849mc(i2);
    }

    public void b() {
        Map<K, V> map;
        Map<K, V> map2;
        if (!this.f10456d) {
            if (this.f10455c.isEmpty()) {
                map = Collections.emptyMap();
            } else {
                map = Collections.unmodifiableMap(this.f10455c);
            }
            this.f10455c = map;
            if (this.f10458f.isEmpty()) {
                map2 = Collections.emptyMap();
            } else {
                map2 = Collections.unmodifiableMap(this.f10458f);
            }
            this.f10458f = map2;
            this.f10456d = true;
        }
    }

    public final int c() {
        return this.f10454b.size();
    }

    public void clear() {
        f();
        if (!this.f10454b.isEmpty()) {
            this.f10454b.clear();
        }
        if (!this.f10455c.isEmpty()) {
            this.f10455c.clear();
        }
    }

    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f10455c.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        if (this.f10455c.isEmpty()) {
            return C0861pc.a();
        }
        return this.f10455c.entrySet();
    }

    public final Set<Map.Entry<K, V>> e() {
        if (this.f10459g == null) {
            this.f10459g = new C0857oc(this, null);
        }
        return this.f10459g;
    }

    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f10457e == null) {
            this.f10457e = new C0880uc(this, null);
        }
        return this.f10457e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0845lc)) {
            return super.equals(obj);
        }
        C0845lc lcVar = (C0845lc) obj;
        int size = size();
        if (size != lcVar.size()) {
            return false;
        }
        int c2 = c();
        if (c2 != lcVar.c()) {
            return entrySet().equals(lcVar.entrySet());
        }
        for (int i2 = 0; i2 < c2; i2++) {
            if (!b(i2).equals(lcVar.b(i2))) {
                return false;
            }
        }
        if (c2 != size) {
            return this.f10455c.equals(lcVar.f10455c);
        }
        return true;
    }

    public final void f() {
        if (this.f10456d) {
            throw new UnsupportedOperationException();
        }
    }

    public final SortedMap<K, V> g() {
        f();
        if (this.f10455c.isEmpty() && !(this.f10455c instanceof TreeMap)) {
            this.f10455c = new TreeMap();
            this.f10458f = ((TreeMap) this.f10455c).descendingMap();
        }
        return (SortedMap) this.f10455c;
    }

    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a(comparable);
        if (a2 >= 0) {
            return this.f10454b.get(a2).getValue();
        }
        return this.f10455c.get(comparable);
    }

    public int hashCode() {
        int c2 = c();
        int i2 = 0;
        for (int i3 = 0; i3 < c2; i3++) {
            i2 += this.f10454b.get(i3).hashCode();
        }
        return this.f10455c.size() > 0 ? i2 + this.f10455c.hashCode() : i2;
    }

    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int a2 = a(comparable);
        if (a2 >= 0) {
            return c(a2);
        }
        if (this.f10455c.isEmpty()) {
            return null;
        }
        return this.f10455c.remove(comparable);
    }

    public int size() {
        return this.f10454b.size() + this.f10455c.size();
    }

    public final boolean a() {
        return this.f10456d;
    }

    public final V c(int i2) {
        f();
        V value = this.f10454b.remove(i2).getValue();
        if (!this.f10455c.isEmpty()) {
            Iterator it = g().entrySet().iterator();
            this.f10454b.add(new C0872sc(this, (Map.Entry) it.next()));
            it.remove();
        }
        return value;
    }

    /* renamed from: a */
    public final V put(K k2, V v) {
        f();
        int a2 = a(k2);
        if (a2 >= 0) {
            return this.f10454b.get(a2).setValue(v);
        }
        f();
        if (this.f10454b.isEmpty() && !(this.f10454b instanceof ArrayList)) {
            this.f10454b = new ArrayList(this.f10453a);
        }
        int i2 = -(a2 + 1);
        if (i2 >= this.f10453a) {
            return g().put(k2, v);
        }
        int size = this.f10454b.size();
        int i3 = this.f10453a;
        if (size == i3) {
            C0872sc remove = this.f10454b.remove(i3 - 1);
            g().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.f10454b.add(i2, new C0872sc(this, k2, v));
        return null;
    }

    public /* synthetic */ C0845lc(int i2, C0849mc mcVar) {
        this(i2);
    }

    public final Map.Entry<K, V> b(int i2) {
        return this.f10454b.get(i2);
    }

    public final int a(K k2) {
        int size = this.f10454b.size() - 1;
        if (size >= 0) {
            int compareTo = k2.compareTo((Comparable) this.f10454b.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) / 2;
            int compareTo2 = k2.compareTo((Comparable) this.f10454b.get(i3).getKey());
            if (compareTo2 < 0) {
                size = i3 - 1;
            } else if (compareTo2 <= 0) {
                return i3;
            } else {
                i2 = i3 + 1;
            }
        }
        return -(i2 + 1);
    }
}
