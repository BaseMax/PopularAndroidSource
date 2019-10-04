package com.bumptech.glide.f;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.d;
import java.security.MessageDigest;

public final class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2056a;

    public c(Object obj) {
        this.f2056a = j.checkNotNull(obj);
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f2056a + '}';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f2056a.equals(((c) obj).f2056a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2056a.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.f2056a.toString().getBytes(CHARSET));
    }
}
