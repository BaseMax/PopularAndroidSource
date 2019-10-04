package com.bumptech.glide.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.b.j;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;

public final class h extends a<h> {

    /* renamed from: a  reason: collision with root package name */
    private static h f2046a;
    private static h c;
    private static h d;
    private static h e;
    private static h f;
    private static h g;
    private static h h;
    private static h i;

    public static h sizeMultiplierOf(float f2) {
        return (h) new h().sizeMultiplier(f2);
    }

    public static h diskCacheStrategyOf(j jVar) {
        return (h) new h().diskCacheStrategy(jVar);
    }

    public static h priorityOf(Priority priority) {
        return (h) new h().priority(priority);
    }

    public static h placeholderOf(Drawable drawable) {
        return (h) new h().placeholder(drawable);
    }

    public static h placeholderOf(int i2) {
        return (h) new h().placeholder(i2);
    }

    public static h errorOf(Drawable drawable) {
        return (h) new h().error(drawable);
    }

    public static h errorOf(int i2) {
        return (h) new h().error(i2);
    }

    public static h skipMemoryCacheOf(boolean z) {
        if (z) {
            if (f2046a == null) {
                f2046a = (h) ((h) new h().skipMemoryCache(true)).autoClone();
            }
            return f2046a;
        }
        if (c == null) {
            c = (h) ((h) new h().skipMemoryCache(false)).autoClone();
        }
        return c;
    }

    public static h overrideOf(int i2, int i3) {
        return (h) new h().override(i2, i3);
    }

    public static h overrideOf(int i2) {
        return overrideOf(i2, i2);
    }

    public static h signatureOf(d dVar) {
        return (h) new h().signature(dVar);
    }

    public static h fitCenterTransform() {
        if (d == null) {
            d = (h) ((h) new h().fitCenter()).autoClone();
        }
        return d;
    }

    public static h centerInsideTransform() {
        if (e == null) {
            e = (h) ((h) new h().centerInside()).autoClone();
        }
        return e;
    }

    public static h centerCropTransform() {
        if (f == null) {
            f = (h) ((h) new h().centerCrop()).autoClone();
        }
        return f;
    }

    public static h circleCropTransform() {
        if (g == null) {
            g = (h) ((h) new h().circleCrop()).autoClone();
        }
        return g;
    }

    /* JADX WARNING: type inference failed for: r1v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.bumptech.glide.e.h bitmapTransform(com.bumptech.glide.load.j<android.graphics.Bitmap> r1) {
        /*
            com.bumptech.glide.e.h r0 = new com.bumptech.glide.e.h
            r0.<init>()
            com.bumptech.glide.e.a r1 = r0.transform((com.bumptech.glide.load.j<android.graphics.Bitmap>) r1)
            com.bumptech.glide.e.h r1 = (com.bumptech.glide.e.h) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.h.bitmapTransform(com.bumptech.glide.load.j):com.bumptech.glide.e.h");
    }

    public static h noTransformation() {
        if (h == null) {
            h = (h) ((h) new h().dontTransform()).autoClone();
        }
        return h;
    }

    public static <T> h option(f<T> fVar, T t) {
        return (h) new h().set(fVar, t);
    }

    public static h decodeTypeOf(Class<?> cls) {
        return (h) new h().decode(cls);
    }

    public static h formatOf(DecodeFormat decodeFormat) {
        return (h) new h().format(decodeFormat);
    }

    public static h frameOf(long j) {
        return (h) new h().frame(j);
    }

    public static h downsampleOf(DownsampleStrategy downsampleStrategy) {
        return (h) new h().downsample(downsampleStrategy);
    }

    public static h timeoutOf(int i2) {
        return (h) new h().timeout(i2);
    }

    public static h encodeQualityOf(int i2) {
        return (h) new h().encodeQuality(i2);
    }

    public static h encodeFormatOf(Bitmap.CompressFormat compressFormat) {
        return (h) new h().encodeFormat(compressFormat);
    }

    public static h noAnimation() {
        if (i == null) {
            i = (h) ((h) new h().dontAnimate()).autoClone();
        }
        return i;
    }
}
