package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.bitmap.d;
import java.security.MessageDigest;

public final class f implements j<c> {

    /* renamed from: a  reason: collision with root package name */
    private final j<Bitmap> f2384a;

    /* JADX WARNING: type inference failed for: r1v0, types: [com.bumptech.glide.load.j<android.graphics.Bitmap>, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public f(com.bumptech.glide.load.j<android.graphics.Bitmap> r1) {
        /*
            r0 = this;
            r0.<init>()
            java.lang.Object r1 = com.bumptech.glide.g.j.checkNotNull(r1)
            com.bumptech.glide.load.j r1 = (com.bumptech.glide.load.j) r1
            r0.f2384a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.d.f.<init>(com.bumptech.glide.load.j):void");
    }

    public final v<c> transform(Context context, v<c> vVar, int i, int i2) {
        c cVar = vVar.get();
        d dVar = new d(cVar.getFirstFrame(), c.get(context).getBitmapPool());
        v<Bitmap> transform = this.f2384a.transform(context, dVar, i, i2);
        if (!dVar.equals(transform)) {
            dVar.recycle();
        }
        cVar.setFrameTransformation(this.f2384a, transform.get());
        return vVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f2384a.equals(((f) obj).f2384a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2384a.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f2384a.updateDiskCacheKey(messageDigest);
    }
}
