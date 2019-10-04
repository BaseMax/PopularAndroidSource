package com.koushikdutta.ion.bitmap;

import java.lang.ref.Reference;
import java.util.Hashtable;

public abstract class ReferenceHashtable<K, V, R extends Reference<V>> {
    Hashtable<K, R> mTable = new Hashtable<>();

    /* access modifiers changed from: protected */
    public abstract R create(V v);

    public V put(K k, V v) {
        Reference reference = (Reference) this.mTable.put(k, create(v));
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public V get(K k) {
        Reference reference = (Reference) this.mTable.get(k);
        if (reference == null) {
            return null;
        }
        V v = reference.get();
        if (v == null) {
            this.mTable.remove(k);
        }
        return v;
    }

    public V remove(K k) {
        Reference reference = (Reference) this.mTable.remove(k);
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public void clear() {
        this.mTable.clear();
    }
}
