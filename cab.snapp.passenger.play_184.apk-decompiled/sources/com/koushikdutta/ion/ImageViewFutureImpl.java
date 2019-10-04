package com.koushikdutta.ion;

import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.koushikdutta.async.b.a;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.b.j;
import com.koushikdutta.ion.ContextReference;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.future.ImageViewFuture;

class ImageViewFutureImpl extends j<ImageView, IonDrawable> implements ImageViewFuture {
    public static final ImageViewFutureImpl FUTURE_IMAGEVIEW_NULL_URI = new ImageViewFutureImpl() {
        {
            setComplete((Exception) new NullPointerException("uri"));
        }

        public final /* bridge */ /* synthetic */ void transform(Object obj) throws Exception {
            ImageViewFutureImpl.super.transform((IonDrawable) obj);
        }
    };
    private ContextReference.ImageViewContextReference imageViewRef;
    private Animation inAnimation;
    private int inAnimationResource;
    private ScaleMode scaleMode;

    /* renamed from: com.koushikdutta.ion.ImageViewFutureImpl$3  reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$koushikdutta$ion$ScaleMode = new int[ScaleMode.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.koushikdutta.ion.ScaleMode[] r0 = com.koushikdutta.ion.ScaleMode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$koushikdutta$ion$ScaleMode = r0
                int[] r0 = $SwitchMap$com$koushikdutta$ion$ScaleMode     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.koushikdutta.ion.ScaleMode r1 = com.koushikdutta.ion.ScaleMode.CenterCrop     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$koushikdutta$ion$ScaleMode     // Catch:{ NoSuchFieldError -> 0x001f }
                com.koushikdutta.ion.ScaleMode r1 = com.koushikdutta.ion.ScaleMode.FitCenter     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$koushikdutta$ion$ScaleMode     // Catch:{ NoSuchFieldError -> 0x002a }
                com.koushikdutta.ion.ScaleMode r1 = com.koushikdutta.ion.ScaleMode.CenterInside     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$koushikdutta$ion$ScaleMode     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.koushikdutta.ion.ScaleMode r1 = com.koushikdutta.ion.ScaleMode.FitXY     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.ion.ImageViewFutureImpl.AnonymousClass3.<clinit>():void");
        }
    }

    ImageViewFutureImpl() {
    }

    public static ImageViewFutureImpl getOrCreateImageViewFuture(ContextReference.ImageViewContextReference imageViewContextReference, IonDrawable ionDrawable) {
        ImageViewFutureImpl imageViewFutureImpl;
        if (ionDrawable.getLoadCallback() instanceof ImageViewFutureImpl) {
            imageViewFutureImpl = (ImageViewFutureImpl) ionDrawable.getLoadCallback();
        } else {
            imageViewFutureImpl = new ImageViewFutureImpl();
        }
        ionDrawable.setLoadCallback(imageViewFutureImpl);
        imageViewFutureImpl.imageViewRef = imageViewContextReference;
        return imageViewFutureImpl;
    }

    /* access modifiers changed from: protected */
    public void transform(IonDrawable ionDrawable) throws Exception {
        ImageView imageView = (ImageView) this.imageViewRef.get();
        if (this.imageViewRef.isAlive() != null || imageView == null) {
            cancelSilently();
        } else if (imageView.getDrawable() != ionDrawable) {
            cancelSilently();
        } else {
            BitmapInfo bitmapInfo = ionDrawable.getBitmapInfo();
            if (bitmapInfo != null && bitmapInfo.exception == null) {
                applyScaleMode(imageView, this.scaleMode);
            }
            IonBitmapRequestBuilder.doAnimation(imageView, this.inAnimation, this.inAnimationResource);
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(ionDrawable);
            setComplete(imageView);
        }
    }

    public e<ImageViewBitmapInfo> withBitmapInfo() {
        final i iVar = new i();
        setCallback((f) new f<ImageView>() {
            public void onCompleted(Exception exc, ImageView imageView) {
                ImageViewBitmapInfo imageViewBitmapInfo = new ImageViewBitmapInfo();
                Drawable drawable = imageView != null ? imageView.getDrawable() : null;
                if (drawable instanceof IonDrawable) {
                    imageViewBitmapInfo.info = ((IonDrawable) drawable).getBitmapInfo();
                }
                imageViewBitmapInfo.exception = exc;
                imageViewBitmapInfo.imageView = imageView;
                iVar.setComplete(imageViewBitmapInfo);
            }
        });
        iVar.setParent((a) this);
        return iVar;
    }

    public ImageViewFutureImpl setInAnimation(Animation animation, int i) {
        this.inAnimation = animation;
        this.inAnimationResource = i;
        return this;
    }

    public ImageViewFutureImpl setScaleMode(ScaleMode scaleMode2) {
        this.scaleMode = scaleMode2;
        return this;
    }

    public static void applyScaleMode(ImageView imageView, ScaleMode scaleMode2) {
        if (scaleMode2 != null) {
            int i = AnonymousClass3.$SwitchMap$com$koushikdutta$ion$ScaleMode[scaleMode2.ordinal()];
            if (i == 1) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else if (i == 2) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else if (i != 3) {
                if (i == 4) {
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                }
            } else {
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            }
        }
    }
}
