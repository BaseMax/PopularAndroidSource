package com.bumptech.glide.load.b;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.j;
import java.security.MessageDigest;
import java.util.Map;

final class n implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2229a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2230b;
    private final int c;
    private final Class<?> d;
    private final Class<?> e;
    private final d f;
    private final Map<Class<?>, j<?>> g;
    private final g h;
    private int i;

    n(Object obj, d dVar, int i2, int i3, Map<Class<?>, j<?>> map, Class<?> cls, Class<?> cls2, g gVar) {
        this.f2229a = com.bumptech.glide.g.j.checkNotNull(obj);
        this.f = (d) com.bumptech.glide.g.j.checkNotNull(dVar, "Signature must not be null");
        this.f2230b = i2;
        this.c = i3;
        this.g = (Map) com.bumptech.glide.g.j.checkNotNull(map);
        this.d = (Class) com.bumptech.glide.g.j.checkNotNull(cls, "Resource class must not be null");
        this.e = (Class) com.bumptech.glide.g.j.checkNotNull(cls2, "Transcode class must not be null");
        this.h = (g) com.bumptech.glide.g.j.checkNotNull(gVar);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.f2229a.equals(nVar.f2229a) && this.f.equals(nVar.f) && this.c == nVar.c && this.f2230b == nVar.f2230b && this.g.equals(nVar.g) && this.d.equals(nVar.d) && this.e.equals(nVar.e) && this.h.equals(nVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.i == 0) {
            this.i = this.f2229a.hashCode();
            this.i = (this.i * 31) + this.f.hashCode();
            this.i = (this.i * 31) + this.f2230b;
            this.i = (this.i * 31) + this.c;
            this.i = (this.i * 31) + this.g.hashCode();
            this.i = (this.i * 31) + this.d.hashCode();
            this.i = (this.i * 31) + this.e.hashCode();
            this.i = (this.i * 31) + this.h.hashCode();
        }
        return this.i;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f2229a + ", width=" + this.f2230b + ", height=" + this.c + ", resourceClass=" + this.d + ", transcodeClass=" + this.e + ", signature=" + this.f + ", hashCode=" + this.i + ", transformations=" + this.g + ", options=" + this.h + '}';
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
