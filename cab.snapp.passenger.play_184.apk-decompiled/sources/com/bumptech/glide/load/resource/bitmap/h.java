package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.a.e;
import java.security.MessageDigest;

public final class h extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2344a = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(CHARSET);

    /* access modifiers changed from: protected */
    public final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return u.centerInside(eVar, bitmap, i, i2);
    }

    public final boolean equals(Object obj) {
        return obj instanceof h;
    }

    public final int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterInside".hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f2344a);
    }
}
