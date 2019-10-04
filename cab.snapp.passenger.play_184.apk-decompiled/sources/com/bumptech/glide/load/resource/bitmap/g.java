package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.a.e;
import java.security.MessageDigest;

public final class g extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2343a = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(CHARSET);

    /* access modifiers changed from: protected */
    public final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return u.centerCrop(eVar, bitmap, i, i2);
    }

    public final boolean equals(Object obj) {
        return obj instanceof g;
    }

    public final int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterCrop".hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f2343a);
    }
}
