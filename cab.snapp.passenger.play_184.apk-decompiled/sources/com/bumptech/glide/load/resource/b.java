package com.bumptech.glide.load.resource;

import android.content.Context;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.j;
import java.security.MessageDigest;

public final class b<T> implements j<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final j<?> f2331a = new b();

    public final v<T> transform(Context context, v<T> vVar, int i, int i2) {
        return vVar;
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
    }

    public static <T> b<T> get() {
        return (b) f2331a;
    }

    private b() {
    }
}
