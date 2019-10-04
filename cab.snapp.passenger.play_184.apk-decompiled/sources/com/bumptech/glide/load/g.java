package com.bumptech.glide.load;

import androidx.collection.ArrayMap;
import com.bumptech.glide.g.b;
import java.security.MessageDigest;

public final class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<f<?>, Object> f2327a = new b();

    public final void putAll(g gVar) {
        this.f2327a.putAll(gVar.f2327a);
    }

    public final <T> g set(f<T> fVar, T t) {
        this.f2327a.put(fVar, t);
        return this;
    }

    public final <T> T get(f<T> fVar) {
        return this.f2327a.containsKey(fVar) ? this.f2327a.get(fVar) : fVar.getDefaultValue();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f2327a.equals(((g) obj).f2327a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2327a.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        for (int i = 0; i < this.f2327a.size(); i++) {
            this.f2327a.keyAt(i).update(this.f2327a.valueAt(i), messageDigest);
        }
    }

    public final String toString() {
        return "Options{values=" + this.f2327a + '}';
    }
}
