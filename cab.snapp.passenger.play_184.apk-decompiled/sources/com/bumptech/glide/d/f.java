package com.bumptech.glide.d;

import com.bumptech.glide.load.i;
import java.util.ArrayList;
import java.util.List;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?>> f2014a = new ArrayList();

    static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<T> f2015a;

        /* renamed from: b  reason: collision with root package name */
        final i<T> f2016b;

        a(Class<T> cls, i<T> iVar) {
            this.f2015a = cls;
            this.f2016b = iVar;
        }
    }

    public final synchronized <Z> void append(Class<Z> cls, i<Z> iVar) {
        this.f2014a.add(new a(cls, iVar));
    }

    public final synchronized <Z> void prepend(Class<Z> cls, i<Z> iVar) {
        this.f2014a.add(0, new a(cls, iVar));
    }

    public final synchronized <Z> i<Z> get(Class<Z> cls) {
        int size = this.f2014a.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.f2014a.get(i);
            if (aVar.f2015a.isAssignableFrom(cls)) {
                return aVar.f2016b;
            }
        }
        return null;
    }
}
