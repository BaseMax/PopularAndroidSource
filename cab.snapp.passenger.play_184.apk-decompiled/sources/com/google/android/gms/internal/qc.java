package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map;

final class qc<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f3465a;

    public qc(Iterator<Map.Entry<K, Object>> it) {
        this.f3465a = it;
    }

    public final boolean hasNext() {
        return this.f3465a.hasNext();
    }

    public final /* synthetic */ Object next() {
        Map.Entry next = this.f3465a.next();
        return next.getValue() instanceof qa ? new qb(next, (byte) 0) : next;
    }

    public final void remove() {
        this.f3465a.remove();
    }
}
