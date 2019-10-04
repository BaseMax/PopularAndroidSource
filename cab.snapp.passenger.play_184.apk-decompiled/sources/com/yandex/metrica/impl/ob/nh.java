package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;

public class nh<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f6451a;

    /* renamed from: b  reason: collision with root package name */
    private final V f6452b;

    public nh(V v) {
        this(new HashMap(), v);
    }

    public nh(Map<K, V> map, V v) {
        this.f6451a = map;
        this.f6452b = v;
    }

    public void a(K k, V v) {
        this.f6451a.put(k, v);
    }

    public V a(K k) {
        V v = this.f6451a.get(k);
        return v == null ? this.f6452b : v;
    }
}
