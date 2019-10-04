package com.bumptech.glide.d;

import androidx.collection.ArrayMap;
import com.bumptech.glide.g.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<i> f2008a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<i, List<Class<?>>> f2009b = new ArrayMap<>();

    public final List<Class<?>> get(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        List<Class<?>> list;
        i andSet = this.f2008a.getAndSet(null);
        if (andSet == null) {
            andSet = new i(cls, cls2, cls3);
        } else {
            andSet.set(cls, cls2, cls3);
        }
        synchronized (this.f2009b) {
            list = this.f2009b.get(andSet);
        }
        this.f2008a.set(andSet);
        return list;
    }

    public final void put(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.f2009b) {
            this.f2009b.put(new i(cls, cls2, cls3), list);
        }
    }

    public final void clear() {
        synchronized (this.f2009b) {
            this.f2009b.clear();
        }
    }
}
