package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.c;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.j;
import java.security.MessageDigest;

public final class m implements j<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final j<Bitmap> f2354a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2355b;

    public final j<BitmapDrawable> asBitmapDrawable() {
        return this;
    }

    public m(j<Bitmap> jVar, boolean z) {
        this.f2354a = jVar;
        this.f2355b = z;
    }

    public final v<Drawable> transform(Context context, v<Drawable> vVar, int i, int i2) {
        e bitmapPool = c.get(context).getBitmapPool();
        Drawable drawable = vVar.get();
        v<Bitmap> a2 = l.a(bitmapPool, drawable, i, i2);
        if (a2 != null) {
            v<Bitmap> transform = this.f2354a.transform(context, a2, i, i2);
            if (!transform.equals(a2)) {
                return q.obtain(context.getResources(), transform);
            }
            transform.recycle();
            return vVar;
        } else if (!this.f2355b) {
            return vVar;
        } else {
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m) {
            return this.f2354a.equals(((m) obj).f2354a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2354a.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f2354a.updateDiskCacheKey(messageDigest);
    }
}
