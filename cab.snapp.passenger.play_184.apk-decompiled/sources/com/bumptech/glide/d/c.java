package com.bumptech.glide.d;

import androidx.collection.ArrayMap;
import com.bumptech.glide.g.i;
import com.bumptech.glide.load.b.t;
import com.bumptech.glide.load.resource.e.g;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final t<?, ?, ?> f2006a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<i, t<?, ?, ?>> f2007b = new ArrayMap<>();
    private final AtomicReference<i> c = new AtomicReference<>();

    static {
        com.bumptech.glide.load.b.i iVar = new com.bumptech.glide.load.b.i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null);
        t tVar = new t(Object.class, Object.class, Object.class, Collections.singletonList(iVar), null);
        f2006a = tVar;
    }

    public final boolean isEmptyLoadPath(t<?, ?, ?> tVar) {
        return f2006a.equals(tVar);
    }

    public final void put(Class<?> cls, Class<?> cls2, Class<?> cls3, t<?, ?, ?> tVar) {
        synchronized (this.f2007b) {
            ArrayMap<i, t<?, ?, ?>> arrayMap = this.f2007b;
            i iVar = new i(cls, cls2, cls3);
            if (tVar == null) {
                tVar = f2006a;
            }
            arrayMap.put(iVar, tVar);
        }
    }

    public final <Data, TResource, Transcode> t<Data, TResource, Transcode> get(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        t<Data, TResource, Transcode> tVar;
        i andSet = this.c.getAndSet(null);
        if (andSet == null) {
            andSet = new i();
        }
        andSet.set(cls, cls2, cls3);
        synchronized (this.f2007b) {
            tVar = this.f2007b.get(andSet);
        }
        this.c.set(andSet);
        return tVar;
    }
}
