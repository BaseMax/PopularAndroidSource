package com.bumptech.glide.load.resource.e;

import java.util.ArrayList;
import java.util.List;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?, ?>> f2398a = new ArrayList();

    static final class a<Z, R> {

        /* renamed from: a  reason: collision with root package name */
        final e<Z, R> f2399a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<Z> f2400b;
        private final Class<R> c;

        a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
            this.f2400b = cls;
            this.c = cls2;
            this.f2399a = eVar;
        }

        public final boolean handles(Class<?> cls, Class<?> cls2) {
            return this.f2400b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.c);
        }
    }

    public final synchronized <Z, R> void register(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
        this.f2398a.add(new a(cls, cls2, eVar));
    }

    public final synchronized <Z, R> e<Z, R> get(Class<Z> cls, Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.get();
        }
        for (a next : this.f2398a) {
            if (next.handles(cls, cls2)) {
                return next.f2399a;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public final synchronized <Z, R> List<Class<R>> getTranscodeClasses(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (a<?, ?> handles : this.f2398a) {
            if (handles.handles(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }
}
