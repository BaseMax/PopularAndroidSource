package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.j;

public abstract class e implements j<Bitmap> {
    /* access modifiers changed from: protected */
    public abstract Bitmap a(com.bumptech.glide.load.b.a.e eVar, Bitmap bitmap, int i, int i2);

    public final v<Bitmap> transform(Context context, v<Bitmap> vVar, int i, int i2) {
        if (k.isValidDimensions(i, i2)) {
            com.bumptech.glide.load.b.a.e bitmapPool = c.get(context).getBitmapPool();
            Bitmap bitmap = vVar.get();
            if (i == Integer.MIN_VALUE) {
                i = bitmap.getWidth();
            }
            if (i2 == Integer.MIN_VALUE) {
                i2 = bitmap.getHeight();
            }
            Bitmap a2 = a(bitmapPool, bitmap, i, i2);
            if (bitmap.equals(a2)) {
                return vVar;
            }
            return d.obtain(a2, bitmapPool);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
