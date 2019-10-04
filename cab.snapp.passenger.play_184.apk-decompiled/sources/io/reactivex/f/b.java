package io.reactivex.f;

import io.reactivex.z;

public abstract class b<K, T> extends z<T> {

    /* renamed from: b  reason: collision with root package name */
    final K f6715b;

    protected b(K k) {
        this.f6715b = k;
    }

    public K getKey() {
        return this.f6715b;
    }
}
