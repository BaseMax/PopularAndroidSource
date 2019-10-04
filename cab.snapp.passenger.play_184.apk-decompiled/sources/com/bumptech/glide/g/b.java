package com.bumptech.glide.g;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

public final class b<K, V> extends ArrayMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private int f2069a;

    public final void clear() {
        this.f2069a = 0;
        super.clear();
    }

    public final V setValueAt(int i, V v) {
        this.f2069a = 0;
        return super.setValueAt(i, v);
    }

    public final V put(K k, V v) {
        this.f2069a = 0;
        return super.put(k, v);
    }

    public final void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f2069a = 0;
        super.putAll(simpleArrayMap);
    }

    public final V removeAt(int i) {
        this.f2069a = 0;
        return super.removeAt(i);
    }

    public final int hashCode() {
        if (this.f2069a == 0) {
            this.f2069a = super.hashCode();
        }
        return this.f2069a;
    }
}
