package com.koushikdutta.ion;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.koushikdutta.async.b.e;
import com.koushikdutta.ion.ContextReference;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.LocallyCachedStatus;
import com.koushikdutta.ion.bitmap.PostProcess;
import com.koushikdutta.ion.bitmap.Transform;
import com.koushikdutta.ion.builder.AnimateGifMode;
import com.koushikdutta.ion.builder.Builders;
import com.koushikdutta.ion.builder.ImageViewFutureBuilder;
import com.koushikdutta.ion.future.ImageViewFuture;

public class IonImageViewRequestBuilder extends IonBitmapRequestBuilder implements Builders.IV.F, ImageViewFutureBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    BitmapDrawableFactory bitmapDrawableFactory = BitmapDrawableFactory.DEFAULT;
    boolean crossfade;
    Drawable errorDrawable;
    int errorResource;
    boolean fadeIn = true;
    ContextReference.ImageViewContextReference imageViewPostRef;
    Animation inAnimation;
    int inAnimationResource;
    Animation loadAnimation;
    int loadAnimationResource;
    Drawable placeholderDrawable;
    int placeholderResource;

    public /* bridge */ /* synthetic */ void addDefaultTransform() {
        super.addDefaultTransform();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder animateGif(AnimateGifMode animateGifMode) {
        return super.animateGif(animateGifMode);
    }

    public /* bridge */ /* synthetic */ e asBitmap() {
        return super.asBitmap();
    }

    public /* bridge */ /* synthetic */ BitmapInfo asCachedBitmap() {
        return super.asCachedBitmap();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder centerCrop() {
        return super.centerCrop();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder centerInside() {
        return super.centerInside();
    }

    public /* bridge */ /* synthetic */ String computeBitmapKey(String str) {
        return super.computeBitmapKey(str);
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder deepZoom() {
        return super.deepZoom();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder fitCenter() {
        return super.fitCenter();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder fitXY() {
        return super.fitXY();
    }

    public /* bridge */ /* synthetic */ LocallyCachedStatus isLocallyCached() {
        return super.isLocallyCached();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder postProcess(PostProcess postProcess) {
        return super.postProcess(postProcess);
    }

    public /* bridge */ /* synthetic */ void removeCachedBitmap() {
        super.removeCachedBitmap();
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder resize(int i, int i2) {
        return super.resize(i, i2);
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder resizeHeight(int i) {
        return super.resizeHeight(i);
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder resizeWidth(int i) {
        return super.resizeWidth(i);
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder smartSize(boolean z) {
        return super.smartSize(z);
    }

    public /* bridge */ /* synthetic */ IonBitmapRequestBuilder transform(Transform transform) {
        return super.transform(transform);
    }

    public IonImageViewRequestBuilder(IonRequestBuilder ionRequestBuilder) {
        super(ionRequestBuilder);
    }

    public IonImageViewRequestBuilder(Ion ion) {
        super(ion);
    }

    /* access modifiers changed from: package-private */
    public void reset() {
        super.reset();
        this.fadeIn = true;
        this.crossfade = false;
        this.imageViewPostRef = null;
        this.placeholderDrawable = null;
        this.bitmapDrawableFactory = BitmapDrawableFactory.DEFAULT;
        this.placeholderResource = 0;
        this.errorDrawable = null;
        this.errorResource = 0;
        this.inAnimation = null;
        this.inAnimationResource = 0;
        this.loadAnimation = null;
        this.loadAnimationResource = 0;
    }

    /* access modifiers changed from: protected */
    public IonRequestBuilder ensureBuilder() {
        if (this.builder == null) {
            this.builder = new IonRequestBuilder(ContextReference.fromContext(this.imageViewPostRef.getContext().getApplicationContext()), this.ion);
        }
        return this.builder;
    }

    public ImageViewFuture load(String str) {
        ensureBuilder();
        this.builder.load(str);
        return intoImageView((ImageView) this.imageViewPostRef.get());
    }

    public e<ImageView> load(String str, String str2) {
        ensureBuilder();
        this.builder.load(str, str2);
        return intoImageView((ImageView) this.imageViewPostRef.get());
    }

    /* access modifiers changed from: package-private */
    public IonImageViewRequestBuilder withImageView(ImageView imageView) {
        ContextReference.ImageViewContextReference imageViewContextReference = this.imageViewPostRef;
        if (imageViewContextReference == null || imageViewContextReference.get() != imageView) {
            this.imageViewPostRef = new ContextReference.ImageViewContextReference(imageView);
        }
        return this;
    }

    private IonDrawable setIonDrawable(ImageView imageView, BitmapFetcher bitmapFetcher, ResponseServedFrom responseServedFrom) {
        BitmapInfo bitmapInfo = bitmapFetcher != null ? bitmapFetcher.info : null;
        if (bitmapInfo != null) {
            bitmapFetcher = null;
        }
        IonDrawable bitmapFetcher2 = IonDrawable.getOrCreateIonDrawable(imageView).ion(this.ion).setBitmap(bitmapInfo, responseServedFrom).setBitmapFetcher(bitmapFetcher);
        boolean z = true;
        IonDrawable placeholder = bitmapFetcher2.setRepeatAnimation(this.animateGifMode == AnimateGifMode.ANIMATE).setSize(this.resizeWidth, this.resizeHeight).setError(this.errorResource, this.errorDrawable).setPlaceholder(this.placeholderResource, this.placeholderDrawable);
        if (!this.fadeIn && !this.crossfade) {
            z = false;
        }
        IonDrawable updateLayers = placeholder.setFadeIn(z).setBitmapDrawableFactory(this.bitmapDrawableFactory).updateLayers();
        imageView.setImageDrawable(updateLayers);
        return updateLayers;
    }

    public IonBitmapRequestBuilder fadeIn(boolean z) {
        this.fadeIn = z;
        return this;
    }

    private static boolean getAdjustViewBounds_16(ImageView imageView) {
        return imageView.getAdjustViewBounds();
    }

    private static boolean getAdjustViewBounds(ImageView imageView) {
        return Build.VERSION.SDK_INT >= 16 && getAdjustViewBounds_16(imageView);
    }

    public ImageViewFuture intoImageView(ImageView imageView) {
        if (imageView == null) {
            throw new NullPointerException("imageView");
        } else if (this.builder.uri == null) {
            setIonDrawable(imageView, null, ResponseServedFrom.LOADED_FROM_NETWORK).cancel();
            return ImageViewFutureImpl.FUTURE_IMAGEVIEW_NULL_URI;
        } else {
            withImageView(imageView);
            if (this.crossfade) {
                Drawable drawable = imageView.getDrawable();
                if (drawable instanceof IonDrawable) {
                    drawable = ((IonDrawable) drawable).getCurrentDrawable();
                }
                placeholder(drawable);
            }
            int i = this.resizeWidth;
            int i2 = this.resizeHeight;
            if (this.resizeHeight == 0 && this.resizeWidth == 0 && !getAdjustViewBounds(imageView)) {
                i = imageView.getMeasuredWidth();
                i2 = imageView.getMeasuredHeight();
            } else {
                addDefaultTransform();
            }
            BitmapFetcher executeCache = executeCache(i, i2);
            if (executeCache.info != null) {
                doAnimation(imageView, null, 0);
                IonDrawable ionDrawable = setIonDrawable(imageView, executeCache, ResponseServedFrom.LOADED_FROM_MEMORY);
                ionDrawable.cancel();
                ImageViewFutureImpl scaleMode = ImageViewFutureImpl.getOrCreateImageViewFuture(this.imageViewPostRef, ionDrawable).setInAnimation(this.inAnimation, this.inAnimationResource).setScaleMode(this.scaleMode);
                ImageViewFutureImpl.applyScaleMode(imageView, this.scaleMode);
                scaleMode.reset();
                scaleMode.setComplete(executeCache.info.exception, imageView);
                return scaleMode;
            }
            IonDrawable ionDrawable2 = setIonDrawable(imageView, executeCache, ResponseServedFrom.LOADED_FROM_NETWORK);
            doAnimation(imageView, this.loadAnimation, this.loadAnimationResource);
            ImageViewFutureImpl scaleMode2 = ImageViewFutureImpl.getOrCreateImageViewFuture(this.imageViewPostRef, ionDrawable2).setInAnimation(this.inAnimation, this.inAnimationResource).setScaleMode(this.scaleMode);
            scaleMode2.reset();
            return scaleMode2;
        }
    }

    private Drawable getImageViewDrawable() {
        ImageView imageView = (ImageView) this.imageViewPostRef.get();
        if (imageView == null) {
            return null;
        }
        return imageView.getDrawable();
    }

    public Bitmap getBitmap() {
        Drawable imageViewDrawable = getImageViewDrawable();
        if (imageViewDrawable == null) {
            return null;
        }
        if (imageViewDrawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) imageViewDrawable).getBitmap();
        }
        if (!(imageViewDrawable instanceof IonDrawable)) {
            return null;
        }
        Drawable currentDrawable = ((IonDrawable) imageViewDrawable).getCurrentDrawable();
        if (currentDrawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) currentDrawable).getBitmap();
        }
        return null;
    }

    public BitmapInfo getBitmapInfo() {
        Drawable imageViewDrawable = getImageViewDrawable();
        if (imageViewDrawable != null && (imageViewDrawable instanceof IonDrawable)) {
            return ((IonDrawable) imageViewDrawable).getBitmapInfo();
        }
        return null;
    }

    public IonImageViewRequestBuilder crossfade(boolean z) {
        this.crossfade = z;
        return this;
    }

    public IonImageViewRequestBuilder placeholder(Drawable drawable) {
        this.placeholderDrawable = drawable;
        return this;
    }

    public IonImageViewRequestBuilder placeholder(int i) {
        this.placeholderResource = i;
        return this;
    }

    public IonImageViewRequestBuilder error(Drawable drawable) {
        this.errorDrawable = drawable;
        return this;
    }

    public IonImageViewRequestBuilder error(int i) {
        this.errorResource = i;
        return this;
    }

    public IonImageViewRequestBuilder animateIn(Animation animation) {
        this.inAnimation = animation;
        return this;
    }

    public IonImageViewRequestBuilder animateLoad(Animation animation) {
        this.loadAnimation = animation;
        return this;
    }

    public IonImageViewRequestBuilder animateLoad(int i) {
        this.loadAnimationResource = i;
        return this;
    }

    public IonImageViewRequestBuilder animateIn(int i) {
        this.inAnimationResource = i;
        return this;
    }

    public IonImageViewRequestBuilder bitmapDrawableFactory(BitmapDrawableFactory bitmapDrawableFactory2) {
        this.bitmapDrawableFactory = bitmapDrawableFactory2;
        return this;
    }
}
