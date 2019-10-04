package com.koushikdutta.ion;

import android.graphics.Bitmap;
import android.os.Build;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.e.c;
import com.koushikdutta.async.h;
import com.koushikdutta.ion.TransformBitmap;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.LocallyCachedStatus;
import com.koushikdutta.ion.bitmap.PostProcess;
import com.koushikdutta.ion.bitmap.Transform;
import com.koushikdutta.ion.builder.AnimateGifMode;
import com.koushikdutta.ion.builder.BitmapFutureBuilder;
import com.koushikdutta.ion.builder.Builders;
import java.util.ArrayList;
import java.util.List;

abstract class IonBitmapRequestBuilder implements BitmapFutureBuilder, Builders.Any.BF {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final i<Bitmap> FUTURE_BITMAP_NULL_URI = new i<Bitmap>() {
        {
            setComplete((Exception) new NullPointerException("uri"));
        }
    };
    AnimateGifMode animateGifMode = AnimateGifMode.ANIMATE;
    IonRequestBuilder builder;
    boolean deepZoom;
    Ion ion;
    ArrayList<PostProcess> postProcess;
    int resizeHeight;
    int resizeWidth;
    ScaleMode scaleMode;
    ArrayList<Transform> transforms;

    /* access modifiers changed from: package-private */
    public void reset() {
        this.ion = null;
        this.transforms = null;
        this.scaleMode = null;
        this.resizeWidth = 0;
        this.resizeHeight = 0;
        this.animateGifMode = AnimateGifMode.ANIMATE;
        this.builder = null;
        this.deepZoom = false;
        this.postProcess = null;
    }

    public IonBitmapRequestBuilder(IonRequestBuilder ionRequestBuilder) {
        this.builder = ionRequestBuilder;
        this.ion = ionRequestBuilder.ion;
    }

    public IonBitmapRequestBuilder(Ion ion2) {
        this.ion = ion2;
    }

    static void doAnimation(ImageView imageView, Animation animation, int i) {
        if (imageView != null) {
            if (animation == null && i != 0) {
                animation = AnimationUtils.loadAnimation(imageView.getContext(), i);
            }
            if (animation == null) {
                imageView.setAnimation(null);
            } else {
                imageView.startAnimation(animation);
            }
        }
    }

    /* access modifiers changed from: protected */
    public IonRequestBuilder ensureBuilder() {
        return this.builder;
    }

    public IonBitmapRequestBuilder transform(Transform transform) {
        if (transform == null) {
            return this;
        }
        if (this.transforms == null) {
            this.transforms = new ArrayList<>();
        }
        this.transforms.add(transform);
        return this;
    }

    public IonBitmapRequestBuilder postProcess(PostProcess postProcess2) {
        if (this.postProcess == null) {
            this.postProcess = new ArrayList<>();
        }
        this.postProcess.add(postProcess2);
        return transform((Transform) new TransformBitmap.PostProcessNullTransform(postProcess2.key()));
    }

    private String computeDecodeKey() {
        return computeDecodeKey(this.builder, this.resizeWidth, this.resizeHeight, this.animateGifMode != AnimateGifMode.NO_ANIMATE, this.deepZoom);
    }

    public static String computeDecodeKey(IonRequestBuilder ionRequestBuilder, int i, int i2, boolean z, boolean z2) {
        String str = ionRequestBuilder.uri;
        String str2 = str + "resize=" + i + "," + i2;
        if (!z) {
            str2 = str2 + ":noAnimate";
        }
        if (z2) {
            str2 = str2 + ":deepZoom";
        }
        return c.toKeyString(str2);
    }

    public void addDefaultTransform() {
        if (this.resizeHeight > 0 || this.resizeWidth > 0) {
            if (this.transforms == null) {
                this.transforms = new ArrayList<>();
            }
            this.transforms.add(0, new DefaultTransform(this.resizeWidth, this.resizeHeight, this.scaleMode));
        } else if (this.scaleMode != null) {
            throw new IllegalStateException("Must call resize when using " + this.scaleMode);
        }
    }

    public String computeBitmapKey(String str) {
        return computeBitmapKey(str, this.transforms);
    }

    public static String computeBitmapKey(String str, List<Transform> list) {
        if (list == null || list.size() <= 0) {
            return str;
        }
        while (list.iterator().hasNext()) {
            str = str + r3.next().key();
        }
        return c.toKeyString(str);
    }

    public LocallyCachedStatus isLocallyCached() {
        if (this.builder.noCache || this.deepZoom) {
            return LocallyCachedStatus.NOT_CACHED;
        }
        String computeDecodeKey = computeDecodeKey();
        addDefaultTransform();
        String computeBitmapKey = computeBitmapKey(computeDecodeKey);
        BitmapInfo bitmapInfo = this.builder.ion.bitmapCache.get(computeBitmapKey);
        if (bitmapInfo != null && bitmapInfo.exception == null) {
            return LocallyCachedStatus.CACHED;
        }
        c fileCache = this.ion.responseCache.getFileCache();
        if (hasTransforms() && fileCache.exists(computeBitmapKey)) {
            return LocallyCachedStatus.CACHED;
        }
        if (fileCache.exists(computeDecodeKey)) {
            return LocallyCachedStatus.MAYBE_CACHED;
        }
        return LocallyCachedStatus.NOT_CACHED;
    }

    public void removeCachedBitmap() {
        String computeDecodeKey = computeDecodeKey();
        addDefaultTransform();
        String computeBitmapKey = computeBitmapKey(computeDecodeKey);
        this.ion.responseCache.getFileCache().remove(computeDecodeKey);
        this.ion.responseCache.getFileCache().remove(computeBitmapKey);
        this.builder.ion.bitmapCache.remove(computeBitmapKey);
        this.builder.ion.bitmapCache.remove(computeDecodeKey);
    }

    public BitmapInfo asCachedBitmap() {
        String computeDecodeKey = computeDecodeKey();
        addDefaultTransform();
        return this.builder.ion.bitmapCache.get(computeBitmapKey(computeDecodeKey));
    }

    /* access modifiers changed from: package-private */
    public BitmapFetcher executeCache() {
        return executeCache(this.resizeWidth, this.resizeHeight);
    }

    /* access modifiers changed from: package-private */
    public BitmapFetcher executeCache(int i, int i2) {
        String computeDecodeKey = computeDecodeKey();
        String computeBitmapKey = computeBitmapKey(computeDecodeKey);
        BitmapFetcher bitmapFetcher = new BitmapFetcher();
        bitmapFetcher.bitmapKey = computeBitmapKey;
        bitmapFetcher.decodeKey = computeDecodeKey;
        bitmapFetcher.hasTransforms = hasTransforms();
        bitmapFetcher.sampleWidth = i;
        bitmapFetcher.sampleHeight = i2;
        bitmapFetcher.builder = this.builder;
        bitmapFetcher.transforms = this.transforms;
        bitmapFetcher.animateGif = this.animateGifMode != AnimateGifMode.NO_ANIMATE;
        bitmapFetcher.deepZoom = this.deepZoom;
        bitmapFetcher.postProcess = this.postProcess;
        if (!this.builder.noCache) {
            BitmapInfo bitmapInfo = this.builder.ion.bitmapCache.get(computeBitmapKey);
            if (bitmapInfo != null) {
                bitmapFetcher.info = bitmapInfo;
            }
        }
        return bitmapFetcher;
    }

    public e<Bitmap> asBitmap() {
        if (this.builder.uri == null) {
            return FUTURE_BITMAP_NULL_URI;
        }
        addDefaultTransform();
        final BitmapFetcher executeCache = executeCache();
        if (executeCache.info != null) {
            i iVar = new i();
            iVar.setComplete(executeCache.info.exception, executeCache.info.bitmap);
            return iVar;
        }
        final BitmapInfoToBitmap bitmapInfoToBitmap = new BitmapInfoToBitmap(this.builder.contextReference);
        h.post(Ion.mainHandler, (Runnable) new Runnable() {
            public void run() {
                executeCache.execute();
                IonBitmapRequestBuilder.this.ion.bitmapsPending.add(executeCache.bitmapKey, bitmapInfoToBitmap);
            }
        });
        return bitmapInfoToBitmap;
    }

    private void checkNoTransforms(String str) {
        if (hasTransforms()) {
            throw new IllegalStateException("Can't apply " + str + " after transform has been called." + str + " is applied to the original resized bitmap.");
        }
    }

    public IonBitmapRequestBuilder centerCrop() {
        checkNoTransforms("centerCrop");
        this.scaleMode = ScaleMode.CenterCrop;
        return this;
    }

    public IonBitmapRequestBuilder fitXY() {
        checkNoTransforms("fitXY");
        this.scaleMode = ScaleMode.FitXY;
        return this;
    }

    public IonBitmapRequestBuilder fitCenter() {
        checkNoTransforms("fitCenter");
        this.scaleMode = ScaleMode.FitCenter;
        return this;
    }

    public IonBitmapRequestBuilder centerInside() {
        checkNoTransforms("centerInside");
        this.scaleMode = ScaleMode.CenterInside;
        return this;
    }

    public IonBitmapRequestBuilder resize(int i, int i2) {
        if (hasTransforms()) {
            throw new IllegalStateException("Can't apply resize after transform has been called.resize is applied to the original bitmap.");
        } else if (!this.deepZoom) {
            this.resizeWidth = i;
            this.resizeHeight = i2;
            return this;
        } else {
            throw new IllegalStateException("Can not resize with deepZoom.");
        }
    }

    public IonBitmapRequestBuilder resizeWidth(int i) {
        return resize(i, 0);
    }

    public IonBitmapRequestBuilder resizeHeight(int i) {
        return resize(0, i);
    }

    public IonBitmapRequestBuilder smartSize(boolean z) {
        if (this.resizeWidth > 0 || this.resizeHeight > 0) {
            throw new IllegalStateException("Can't set smart size after resize has been called.");
        } else if (!this.deepZoom) {
            if (!z) {
                this.resizeWidth = -1;
                this.resizeHeight = -1;
            } else {
                this.resizeWidth = 0;
                this.resizeHeight = 0;
            }
            return this;
        } else {
            throw new IllegalStateException("Can not smartSize with deepZoom.");
        }
    }

    public IonBitmapRequestBuilder animateGif(AnimateGifMode animateGifMode2) {
        this.animateGifMode = animateGifMode2;
        return this;
    }

    public IonBitmapRequestBuilder deepZoom() {
        if (Build.VERSION.SDK_INT < 10) {
            return this;
        }
        this.deepZoom = true;
        if (this.resizeWidth > 0 || this.resizeHeight > 0) {
            throw new IllegalStateException("Can't deepZoom with resize.");
        } else if (!hasTransforms()) {
            this.resizeWidth = 0;
            this.resizeHeight = 0;
            return this;
        } else {
            throw new IllegalStateException("Can't deepZoom with transforms.");
        }
    }

    /* access modifiers changed from: package-private */
    public boolean hasTransforms() {
        ArrayList<Transform> arrayList = this.transforms;
        return arrayList != null && arrayList.size() > 0;
    }
}
