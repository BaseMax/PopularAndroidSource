package com.bumptech.glide.load.resource;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.v;

public class a<T> implements v<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f2328a;

    public final int getSize() {
        return 1;
    }

    public void recycle() {
    }

    public a(T t) {
        this.f2328a = j.checkNotNull(t);
    }

    public Class<T> getResourceClass() {
        return this.f2328a.getClass();
    }

    public final T get() {
        return this.f2328a;
    }
}
