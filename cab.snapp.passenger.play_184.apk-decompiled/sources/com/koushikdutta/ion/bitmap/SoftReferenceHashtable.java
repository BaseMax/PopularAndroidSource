package com.koushikdutta.ion.bitmap;

import java.lang.ref.SoftReference;

public class SoftReferenceHashtable<K, V> extends ReferenceHashtable<K, V, SoftReference<V>> {
    /* access modifiers changed from: protected */
    public SoftReference<V> create(V v) {
        return new SoftReference<>(v);
    }
}
