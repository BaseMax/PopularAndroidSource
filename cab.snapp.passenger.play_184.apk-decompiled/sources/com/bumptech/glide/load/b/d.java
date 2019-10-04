package com.bumptech.glide.load.b;

import java.security.MessageDigest;

final class d implements com.bumptech.glide.load.d {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.d f2178a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.d f2179b;

    d(com.bumptech.glide.load.d dVar, com.bumptech.glide.load.d dVar2) {
        this.f2178a = dVar;
        this.f2179b = dVar2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f2178a.equals(dVar.f2178a) && this.f2179b.equals(dVar.f2179b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f2178a.hashCode() * 31) + this.f2179b.hashCode();
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f2178a + ", signature=" + this.f2179b + '}';
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f2178a.updateDiskCacheKey(messageDigest);
        this.f2179b.updateDiskCacheKey(messageDigest);
    }
}
