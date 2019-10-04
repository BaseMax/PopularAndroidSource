package com.bumptech.glide.d;

import java.util.ArrayList;
import java.util.List;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<C0034a<?>> f2002a = new ArrayList();

    /* renamed from: com.bumptech.glide.d.a$a  reason: collision with other inner class name */
    static final class C0034a<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<T> f2003a;

        /* renamed from: b  reason: collision with root package name */
        final com.bumptech.glide.load.a<T> f2004b;

        C0034a(Class<T> cls, com.bumptech.glide.load.a<T> aVar) {
            this.f2003a = cls;
            this.f2004b = aVar;
        }
    }

    public final synchronized <T> com.bumptech.glide.load.a<T> getEncoder(Class<T> cls) {
        for (C0034a next : this.f2002a) {
            if (next.f2003a.isAssignableFrom(cls)) {
                return next.f2004b;
            }
        }
        return null;
    }

    public final synchronized <T> void append(Class<T> cls, com.bumptech.glide.load.a<T> aVar) {
        this.f2002a.add(new C0034a(cls, aVar));
    }

    public final synchronized <T> void prepend(Class<T> cls, com.bumptech.glide.load.a<T> aVar) {
        this.f2002a.add(0, new C0034a(cls, aVar));
    }
}
