package com.bumptech.glide.f;

import com.bumptech.glide.load.d;
import java.security.MessageDigest;

public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final b f2055a = new b();

    public final String toString() {
        return "EmptySignature";
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
    }

    public static b obtain() {
        return f2055a;
    }

    private b() {
    }
}
