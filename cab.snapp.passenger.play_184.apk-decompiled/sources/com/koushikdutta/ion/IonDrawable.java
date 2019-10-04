package com.koushikdutta.ion;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.ImageView;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.e.c;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.gif.GifDecoder;
import com.koushikdutta.ion.gif.GifFrame;
import java.lang.ref.WeakReference;

class IonDrawable extends LayerDrawable {
    private static final int DEFAULT_PAINT_FLAGS = 6;
    private static final long FADE_DURATION = 200;
    private static final double LOG_2 = Math.log(2.0d);
    private static final int TILE_DIM = 256;
    private final Drawable NULL_BITMAPINFO;
    private final Drawable NULL_ERROR;
    private final Drawable NULL_PLACEHOLDER;
    private int alpha = 255;
    private Drawable bitmapDrawable;
    private BitmapDrawableFactory bitmapDrawableFactory;
    private BitmapFetcher bitmapFetcher;
    private IonDrawableCallback callback;
    private Drawable error;
    private int errorResource;
    private boolean fadeIn;
    private IonGifDecoder gifDecoder;
    private BitmapInfo info;
    private Ion ion;
    /* access modifiers changed from: private */
    public f<IonDrawable> loadCallback;
    private int maxLevel;
    private Paint paint;
    private Drawable placeholder;
    private int placeholderResource;
    /* access modifiers changed from: private */
    public boolean repeatAnimation;
    private int resizeHeight;
    private int resizeWidth;
    private Resources resources;
    private ResponseServedFrom servedFrom;
    private int textureDim;
    private f<BitmapInfo> tileCallback = new f<BitmapInfo>() {
        public void onCompleted(Exception exc, BitmapInfo bitmapInfo) {
            IonDrawable.this.invalidateSelf();
        }
    };

    static class IonDrawableCallback implements f<BitmapInfo> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private String bitmapKey;
        private Ion ion;
        private WeakReference<IonDrawable> ionDrawableRef;

        static {
            Class<IonDrawable> cls = IonDrawable.class;
        }

        public IonDrawableCallback(IonDrawable ionDrawable) {
            this.ionDrawableRef = new WeakReference<>(ionDrawable);
        }

        public void register(Ion ion2, String str) {
            String str2 = this.bitmapKey;
            Ion ion3 = this.ion;
            if (!TextUtils.equals(str2, str) || this.ion != ion2) {
                this.ion = ion2;
                this.bitmapKey = str;
                if (ion2 != null) {
                    ion2.bitmapsPending.add(str, this);
                }
                unregister(ion3, str2);
            }
        }

        private void unregister(Ion ion2, String str) {
            if (str != null) {
                if (ion2.bitmapsPending.removeItem(str, this)) {
                    Object tag = ion2.bitmapsPending.tag(str);
                    if (tag instanceof TransformBitmap) {
                        TransformBitmap transformBitmap = (TransformBitmap) tag;
                        ion2.bitmapsPending.remove(transformBitmap.key);
                        if (ion2.bitmapsPending.removeItem(transformBitmap.downloadKey, transformBitmap)) {
                            tag = ion2.bitmapsPending.tag(transformBitmap.downloadKey);
                        }
                    }
                    if (tag instanceof DeferredLoadBitmap) {
                        ion2.bitmapsPending.remove(((DeferredLoadBitmap) tag).key);
                    }
                }
                ion2.processDeferred();
            }
        }

        public void onCompleted(Exception exc, BitmapInfo bitmapInfo) {
            IonDrawable ionDrawable = (IonDrawable) this.ionDrawableRef.get();
            if (ionDrawable != null) {
                ionDrawable.setBitmap(bitmapInfo, bitmapInfo.servedFrom).updateLayers();
                f access$000 = ionDrawable.loadCallback;
                if (access$000 != null) {
                    access$000.onCompleted(exc, ionDrawable);
                }
            }
        }
    }

    class IonGifDecoder {
        GifFrame currentFrame;
        Exception exception;
        GifDecoder gifDecoder;
        boolean isLoading;
        Runnable loader = new Runnable() {
            public void run() {
                try {
                    IonGifDecoder.this.gifDecoder.nextFrame();
                } catch (OutOfMemoryError e) {
                    IonGifDecoder.this.exception = new Exception(e);
                } catch (Exception e2) {
                    IonGifDecoder.this.exception = e2;
                }
                Ion.mainHandler.post(IonGifDecoder.this.postLoad);
            }
        };
        long nextFrameRender;
        Runnable postLoad = new Runnable() {
            public void run() {
                IonGifDecoder ionGifDecoder = IonGifDecoder.this;
                ionGifDecoder.isLoading = false;
                IonDrawable.this.invalidateSelf();
            }
        };

        public IonGifDecoder(BitmapInfo bitmapInfo) {
            this.gifDecoder = bitmapInfo.gifDecoder.mutate();
            this.currentFrame = this.gifDecoder.getLastFrame();
        }

        /* access modifiers changed from: package-private */
        public long getDelay() {
            GifFrame gifFrame = this.currentFrame;
            long j = 100;
            if (gifFrame == null) {
                return 100;
            }
            long j2 = (long) gifFrame.delay;
            if (j2 != 0) {
                j = j2;
            }
            return j;
        }

        public GifFrame getCurrentFrame() {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.nextFrameRender == 0) {
                this.nextFrameRender = getDelay() + currentTimeMillis;
                scheduleNextFrame();
            }
            if (currentTimeMillis >= this.nextFrameRender) {
                if (this.gifDecoder.getLastFrame() != this.currentFrame) {
                    this.currentFrame = this.gifDecoder.getLastFrame();
                    if (currentTimeMillis > this.nextFrameRender + getDelay()) {
                        this.nextFrameRender = currentTimeMillis + getDelay();
                    } else {
                        this.nextFrameRender += getDelay();
                    }
                }
                scheduleNextFrame();
            }
            return this.currentFrame;
        }

        public synchronized void scheduleNextFrame() {
            if (!this.isLoading) {
                if (this.exception == null) {
                    if (this.gifDecoder.getStatus() == -1 && IonDrawable.this.repeatAnimation) {
                        this.gifDecoder.restart();
                    }
                    this.isLoading = true;
                    Ion.getBitmapLoadExecutorService().execute(this.loader);
                }
            }
        }
    }

    public f<IonDrawable> getLoadCallback() {
        return this.loadCallback;
    }

    public IonDrawable setLoadCallback(f<IonDrawable> fVar) {
        this.loadCallback = fVar;
        return this;
    }

    public IonDrawable ion(Ion ion2) {
        if (ion2 != null) {
            this.ion = ion2;
            return this;
        }
        throw new AssertionError("null ion");
    }

    public Drawable getCurrentDrawable() {
        if (this.info == null) {
            int i = this.placeholderResource;
            if (i != 0) {
                return this.resources.getDrawable(i);
            }
        }
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo != null) {
            if (bitmapInfo.bitmap != null) {
                return new BitmapDrawable(this.resources, this.info.bitmap);
            }
            if (this.info.gifDecoder != null) {
                GifFrame lastFrame = this.info.gifDecoder.getLastFrame();
                if (lastFrame != null) {
                    return new BitmapDrawable(this.resources, lastFrame.image);
                }
                int i2 = this.placeholderResource;
                if (i2 != 0) {
                    return this.resources.getDrawable(i2);
                }
                return null;
            }
        }
        int i3 = this.errorResource;
        if (i3 != 0) {
            return this.resources.getDrawable(i3);
        }
        return null;
    }

    public BitmapInfo getBitmapInfo() {
        return this.info;
    }

    public IonDrawable setFadeIn(boolean z) {
        this.fadeIn = z;
        return this;
    }

    public IonDrawable setBitmapFetcher(BitmapFetcher bitmapFetcher2) {
        this.bitmapFetcher = bitmapFetcher2;
        if (this.ion != null) {
            return this;
        }
        throw new AssertionError("null ion");
    }

    public IonDrawable setBitmapDrawableFactory(BitmapDrawableFactory bitmapDrawableFactory2) {
        this.bitmapDrawableFactory = bitmapDrawableFactory2;
        return this;
    }

    public void cancel() {
        this.callback.register(null, null);
        this.bitmapFetcher = null;
    }

    public IonDrawable(Resources resources2) {
        super(new Drawable[]{new BitmapDrawable(null), new BitmapDrawable(null), new BitmapDrawable(null)});
        setId(0, 0);
        setId(1, 1);
        setId(2, 2);
        this.NULL_PLACEHOLDER = getDrawable(0);
        this.NULL_BITMAPINFO = getDrawable(1);
        this.NULL_ERROR = getDrawable(2);
        this.resources = resources2;
        this.paint = new Paint(6);
        this.callback = new IonDrawableCallback(this);
    }

    public IonDrawable updateLayers() {
        tryGetPlaceholderResource();
        Drawable drawable = this.placeholder;
        if (drawable == null) {
            setDrawableByLayerId(0, this.NULL_PLACEHOLDER);
        } else {
            setDrawableByLayerId(0, drawable);
        }
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo == null) {
            setDrawableByLayerId(1, this.NULL_BITMAPINFO);
            setDrawableByLayerId(2, this.NULL_ERROR);
            return this;
        } else if (bitmapInfo.bitmap == null && this.info.decoder == null && this.info.gifDecoder == null) {
            setDrawableByLayerId(1, this.NULL_BITMAPINFO);
            tryGetErrorResource();
            Drawable drawable2 = this.error;
            if (drawable2 == null) {
                setDrawableByLayerId(2, this.NULL_ERROR);
            } else {
                setDrawableByLayerId(2, drawable2);
            }
            return this;
        } else {
            if (this.info.decoder == null && this.info.gifDecoder == null) {
                tryGetBitmapResource();
                setDrawableByLayerId(1, this.bitmapDrawable);
            } else {
                setDrawableByLayerId(1, this.NULL_BITMAPINFO);
            }
            setDrawableByLayerId(2, this.NULL_ERROR);
            return this;
        }
    }

    public IonDrawable setBitmap(BitmapInfo bitmapInfo, ResponseServedFrom responseServedFrom) {
        if (this.info == bitmapInfo) {
            return this;
        }
        cancel();
        this.servedFrom = responseServedFrom;
        this.info = bitmapInfo;
        this.gifDecoder = null;
        this.bitmapDrawable = null;
        invalidateSelf();
        if (bitmapInfo == null) {
            return this;
        }
        if (bitmapInfo.decoder != null) {
            double d = (double) bitmapInfo.originalSize.x;
            Double.isNaN(d);
            double d2 = (double) bitmapInfo.originalSize.y;
            Double.isNaN(d2);
            this.maxLevel = (int) Math.ceil(Math.log(Math.max(d / 256.0d, d2 / 256.0d)) / LOG_2);
            this.textureDim = 256 << this.maxLevel;
        } else if (bitmapInfo.gifDecoder != null) {
            this.gifDecoder = new IonGifDecoder(bitmapInfo);
        }
        return this;
    }

    public IonDrawable setRepeatAnimation(boolean z) {
        this.repeatAnimation = z;
        return this;
    }

    public IonDrawable setSize(int i, int i2) {
        if (this.resizeWidth == i && this.resizeHeight == i2) {
            return this;
        }
        this.resizeWidth = i;
        this.resizeHeight = i2;
        invalidateSelf();
        return this;
    }

    public IonDrawable setError(int i, Drawable drawable) {
        if ((drawable != null && drawable == this.error) || (i != 0 && i == this.errorResource)) {
            return this;
        }
        this.errorResource = i;
        this.error = drawable;
        return this;
    }

    public IonDrawable setPlaceholder(int i, Drawable drawable) {
        if ((drawable != null && drawable == this.placeholder) || (i != 0 && i == this.placeholderResource)) {
            return this;
        }
        this.placeholderResource = i;
        this.placeholder = drawable;
        return this;
    }

    private Drawable tryGetErrorResource() {
        Drawable drawable = this.error;
        if (drawable != null) {
            return drawable;
        }
        int i = this.errorResource;
        if (i == 0) {
            return null;
        }
        this.error = this.resources.getDrawable(i);
        return this.error;
    }

    private Drawable tryGetBitmapResource() {
        Drawable drawable = this.bitmapDrawable;
        if (drawable != null) {
            return drawable;
        }
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo == null || bitmapInfo.gifDecoder != null || this.info.decoder != null || this.info.bitmap == null) {
            return null;
        }
        this.bitmapDrawable = this.bitmapDrawableFactory.fromBitmap(this.resources, this.info.bitmap);
        return this.bitmapDrawable;
    }

    private Drawable tryGetPlaceholderResource() {
        Drawable drawable = this.placeholder;
        if (drawable != null) {
            return drawable;
        }
        int i = this.placeholderResource;
        if (i == 0) {
            return null;
        }
        this.placeholder = this.resources.getDrawable(i);
        return this.placeholder;
    }

    public int getIntrinsicWidth() {
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo != null) {
            if (bitmapInfo.decoder != null) {
                return this.info.originalSize.x;
            }
            if (this.info.bitmap != null) {
                return this.info.bitmap.getScaledWidth(this.resources.getDisplayMetrics().densityDpi);
            }
        }
        IonGifDecoder ionGifDecoder = this.gifDecoder;
        if (ionGifDecoder != null) {
            return ionGifDecoder.gifDecoder.getWidth();
        }
        int i = this.resizeWidth;
        if (i > 0) {
            return i;
        }
        if (this.info != null) {
            Drawable tryGetErrorResource = tryGetErrorResource();
            if (tryGetErrorResource != null) {
                return tryGetErrorResource.getIntrinsicWidth();
            }
        }
        Drawable tryGetPlaceholderResource = tryGetPlaceholderResource();
        if (tryGetPlaceholderResource != null) {
            return tryGetPlaceholderResource.getIntrinsicWidth();
        }
        return -1;
    }

    public int getIntrinsicHeight() {
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo != null) {
            if (bitmapInfo.decoder != null) {
                return this.info.originalSize.y;
            }
            if (this.info.bitmap != null) {
                return this.info.bitmap.getScaledHeight(this.resources.getDisplayMetrics().densityDpi);
            }
        }
        IonGifDecoder ionGifDecoder = this.gifDecoder;
        if (ionGifDecoder != null) {
            return ionGifDecoder.gifDecoder.getHeight();
        }
        int i = this.resizeHeight;
        if (i > 0) {
            return i;
        }
        if (this.info != null) {
            Drawable tryGetErrorResource = tryGetErrorResource();
            if (tryGetErrorResource != null) {
                return tryGetErrorResource.getIntrinsicHeight();
            }
        }
        Drawable tryGetPlaceholderResource = tryGetPlaceholderResource();
        if (tryGetPlaceholderResource != null) {
            return tryGetPlaceholderResource.getIntrinsicHeight();
        }
        return -1;
    }

    public void draw(Canvas canvas) {
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo == null) {
            super.draw(canvas);
            BitmapFetcher bitmapFetcher2 = this.bitmapFetcher;
            if (bitmapFetcher2 != null) {
                if (bitmapFetcher2.sampleWidth == 0 && this.bitmapFetcher.sampleHeight == 0) {
                    if (canvas.getWidth() != 1) {
                        this.bitmapFetcher.sampleWidth = canvas.getWidth();
                    }
                    if (canvas.getHeight() != 1) {
                        this.bitmapFetcher.sampleHeight = canvas.getHeight();
                    }
                    this.bitmapFetcher.recomputeDecodeKey();
                    BitmapInfo bitmapInfo2 = this.ion.bitmapCache.get(this.bitmapFetcher.bitmapKey);
                    if (bitmapInfo2 != null) {
                        this.bitmapFetcher = null;
                        this.callback.onCompleted((Exception) null, bitmapInfo2);
                        return;
                    }
                }
                this.callback.register(this.ion, this.bitmapFetcher.bitmapKey);
                if (BitmapFetcher.shouldDeferImageView(this.ion)) {
                    this.bitmapFetcher.defer();
                } else {
                    this.bitmapFetcher.execute();
                }
                this.bitmapFetcher = null;
            }
        } else if (bitmapInfo.decoder != null) {
            drawDeepZoom(canvas);
        } else {
            if (this.info.drawTime == 0) {
                this.info.drawTime = SystemClock.uptimeMillis();
            }
            long j = (long) this.alpha;
            if (this.fadeIn) {
                j = Math.min(((SystemClock.uptimeMillis() - this.info.drawTime) << 8) / FADE_DURATION, (long) this.alpha);
            }
            if (j == ((long) this.alpha)) {
                if (this.placeholder != null) {
                    this.placeholder = null;
                    setDrawableByLayerId(0, this.NULL_PLACEHOLDER);
                }
            } else if (this.placeholder != null) {
                invalidateSelf();
            }
            if (this.info.gifDecoder != null) {
                super.draw(canvas);
                GifFrame currentFrame = this.gifDecoder.getCurrentFrame();
                if (currentFrame != null) {
                    this.paint.setAlpha((int) j);
                    canvas.drawBitmap(currentFrame.image, null, getBounds(), this.paint);
                    this.paint.setAlpha(this.alpha);
                    invalidateSelf();
                }
                return;
            }
            if (this.info.bitmap != null) {
                Drawable drawable = this.bitmapDrawable;
                if (drawable != null) {
                    drawable.setAlpha((int) j);
                }
            } else {
                Drawable drawable2 = this.error;
                if (drawable2 != null) {
                    drawable2.setAlpha((int) j);
                }
            }
            super.draw(canvas);
        }
    }

    private void drawDeepZoom(Canvas canvas) {
        int i;
        int i2;
        Rect rect;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Rect rect2;
        int i9;
        int i10;
        BitmapInfo bitmapInfo;
        BitmapInfo bitmapInfo2;
        int i11;
        Canvas canvas2 = canvas;
        Rect clipBounds = canvas.getClipBounds();
        Rect bounds = getBounds();
        float width = ((float) canvas.getWidth()) / ((float) clipBounds.width());
        double max = Math.max(Math.log((double) ((((float) bounds.width()) * width) / 256.0f)) / LOG_2, Math.log((double) ((width * ((float) bounds.height())) / 256.0f)) / LOG_2);
        int max2 = Math.max(0, clipBounds.left);
        int min = Math.min(bounds.width(), clipBounds.right);
        int max3 = Math.max(0, clipBounds.top);
        int min2 = Math.min(bounds.height(), clipBounds.bottom);
        int max4 = Math.max(Math.min(this.maxLevel, (int) Math.floor(max)), 0);
        int i12 = 1 << max4;
        int i13 = this.textureDim / i12;
        if (this.info.bitmap != null) {
            canvas2.drawBitmap(this.info.bitmap, null, getBounds(), this.paint);
        } else {
            this.paint.setColor(-16777216);
            canvas2.drawRect(getBounds(), this.paint);
        }
        int i14 = 1;
        while (i13 / i14 > 256) {
            i14 <<= 1;
        }
        int i15 = 0;
        while (i15 < i12) {
            int i16 = i13 * i15;
            int i17 = i15 + 1;
            int min3 = Math.min(i13 * i17, bounds.bottom);
            if (min3 >= max3) {
                if (i16 <= min2) {
                    int i18 = 0;
                    while (true) {
                        if (i18 >= i12) {
                            break;
                        }
                        int i19 = i13 * i18;
                        int i20 = i18 + 1;
                        i4 = min2;
                        i3 = max3;
                        int min4 = Math.min(i13 * i20, bounds.right);
                        if (min4 >= max2) {
                            if (i19 > min) {
                                rect = bounds;
                                i5 = max4;
                                i2 = max2;
                                i = min;
                                break;
                            }
                            Rect rect3 = new Rect(i19, i16, min4, min3);
                            String str = ",";
                            String keyString = c.toKeyString(this.info.key, str, Integer.valueOf(max4), str, Integer.valueOf(i18), str, Integer.valueOf(i15));
                            rect2 = bounds;
                            BitmapInfo bitmapInfo3 = this.ion.bitmapCache.get(keyString);
                            i8 = min3;
                            if (bitmapInfo3 == null || bitmapInfo3.bitmap == null) {
                                if (this.ion.bitmapsPending.tag(keyString) == null) {
                                    bitmapInfo = bitmapInfo3;
                                    i7 = max2;
                                    i6 = min;
                                    i10 = i18;
                                    LoadBitmapRegion loadBitmapRegion = new LoadBitmapRegion(this.ion, keyString, this.info.decoder, rect3, i14);
                                } else {
                                    bitmapInfo = bitmapInfo3;
                                    i7 = max2;
                                    i6 = min;
                                    i10 = i18;
                                }
                                this.ion.bitmapsPending.add(keyString, this.tileCallback);
                                int i21 = max4 - 1;
                                int i22 = i10 % 2 == 1 ? 1 : 0;
                                int i23 = i10 >> 1;
                                int i24 = i15 >> 1;
                                int i25 = i15 % 2 == 1 ? 1 : 0;
                                int i26 = 1;
                                while (true) {
                                    i9 = max4;
                                    if (i21 < 0) {
                                        bitmapInfo2 = bitmapInfo;
                                        break;
                                    }
                                    bitmapInfo2 = this.ion.bitmapCache.get(c.toKeyString(this.info.key, str, Integer.valueOf(i21), str, Integer.valueOf(i23), str, Integer.valueOf(i24)));
                                    if (bitmapInfo2 != null && bitmapInfo2.bitmap != null) {
                                        break;
                                    }
                                    String str2 = str;
                                    if (i23 % 2 == 1) {
                                        i22 += 1 << i26;
                                    }
                                    if (i24 % 2 == 1) {
                                        i25 += 1 << i26;
                                    }
                                    i21--;
                                    i26++;
                                    i23 >>= 1;
                                    i24 >>= 1;
                                    bitmapInfo = bitmapInfo2;
                                    max4 = i9;
                                    str = str2;
                                }
                                if (bitmapInfo2 == null || bitmapInfo2.bitmap == null) {
                                    max4 = i9;
                                    i18 = i20;
                                    min2 = i4;
                                    max3 = i3;
                                    bounds = rect2;
                                    min3 = i8;
                                    max2 = i7;
                                    min = i6;
                                } else {
                                    int i27 = this.textureDim / (1 << i21);
                                    int i28 = 1;
                                    while (true) {
                                        i11 = i27 / i28;
                                        if (i11 <= 256) {
                                            break;
                                        }
                                        i28 <<= 1;
                                    }
                                    int i29 = i11 >> i26;
                                    int i30 = i22 * i29;
                                    int i31 = i29 * i25;
                                    canvas2.drawBitmap(bitmapInfo2.bitmap, new Rect(i30, i31, i30 + i29, i29 + i31), rect3, this.paint);
                                    max4 = i9;
                                    i18 = i20;
                                    min2 = i4;
                                    max3 = i3;
                                    bounds = rect2;
                                    min3 = i8;
                                    max2 = i7;
                                    min = i6;
                                }
                            } else {
                                canvas2.drawBitmap(bitmapInfo3.bitmap, null, rect3, this.paint);
                                i9 = max4;
                            }
                        } else {
                            rect2 = bounds;
                            i9 = max4;
                            i8 = min3;
                        }
                        i7 = max2;
                        i6 = min;
                        max4 = i9;
                        i18 = i20;
                        min2 = i4;
                        max3 = i3;
                        bounds = rect2;
                        min3 = i8;
                        max2 = i7;
                        min = i6;
                    }
                    max4 = i5;
                    i15 = i17;
                    min2 = i4;
                    max3 = i3;
                    bounds = rect;
                    max2 = i2;
                    min = i;
                } else {
                    return;
                }
            }
            i4 = min2;
            rect = bounds;
            i5 = max4;
            i2 = max2;
            i = min;
            i3 = max3;
            max4 = i5;
            i15 = i17;
            min2 = i4;
            max3 = i3;
            bounds = rect;
            max2 = i2;
            min = i;
        }
    }

    public void setAlpha(int i) {
        super.setAlpha(i);
        this.alpha = i;
        this.paint.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
        this.paint.setColorFilter(colorFilter);
    }

    public int getOpacity() {
        BitmapInfo bitmapInfo = this.info;
        if (bitmapInfo == null || bitmapInfo.bitmap == null || this.info.bitmap.hasAlpha() || this.paint.getAlpha() < 255) {
            return -3;
        }
        return super.getOpacity();
    }

    static IonDrawable getOrCreateIonDrawable(ImageView imageView) {
        IonDrawable ionDrawable;
        Drawable drawable = imageView.getDrawable();
        if (drawable == null || !(drawable instanceof IonDrawable)) {
            ionDrawable = new IonDrawable(imageView.getResources());
        } else {
            ionDrawable = (IonDrawable) drawable;
        }
        imageView.setImageDrawable(null);
        return ionDrawable;
    }
}
