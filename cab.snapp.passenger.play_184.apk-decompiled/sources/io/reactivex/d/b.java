package io.reactivex.d;

import io.reactivex.j;

public abstract class b<K, T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final K f6714b;

    protected b(K k) {
        this.f6714b = k;
    }

    public K getKey() {
        return this.f6714b;
    }
}
