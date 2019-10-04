package com.koushikdutta.ion.bitmap;

import java.lang.ref.WeakReference;

public class WeakReferenceHashtable<K, V> extends ReferenceHashtable<K, V, WeakReference<V>> {
    /* access modifiers changed from: protected */
    public WeakReference<V> create(V v) {
        return new WeakReference<>(v);
    }
}
