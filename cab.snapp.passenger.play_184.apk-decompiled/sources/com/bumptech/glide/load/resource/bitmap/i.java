package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.a.e;
import java.security.MessageDigest;

public final class i extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2345a = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(CHARSET);

    /* access modifiers changed from: protected */
    public final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return u.circleCrop(eVar, bitmap, i, i2);
    }

    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    public final int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f2345a);
    }
}
