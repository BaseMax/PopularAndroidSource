package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class nu<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<K, Collection<V>> f6462a = new HashMap<>();

    public int a() {
        int i = 0;
        for (Collection<V> size : this.f6462a.values()) {
            i += size.size();
        }
        return i;
    }

    public Collection<V> a(K k) {
        return this.f6462a.get(k);
    }

    public Collection<V> a(K k, V v) {
        Collection collection = this.f6462a.get(k);
        Collection arrayList = collection == null ? new ArrayList() : a(collection);
        arrayList.add(v);
        return this.f6462a.put(k, arrayList);
    }

    public Collection<V> b(K k) {
        return this.f6462a.remove(k);
    }

    public Collection<V> b(K k, V v) {
        Collection collection = this.f6462a.get(k);
        if (collection == null || !collection.remove(v)) {
            return null;
        }
        return a(collection);
    }

    private static Collection<V> a(Collection<V> collection) {
        return new ArrayList(collection);
    }

    public Set<? extends Map.Entry<K, ? extends Collection<V>>> b() {
        return this.f6462a.entrySet();
    }
}
