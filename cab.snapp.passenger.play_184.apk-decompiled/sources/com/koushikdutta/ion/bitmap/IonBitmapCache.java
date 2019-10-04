package com.koushikdutta.ion.bitmap;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserView;
import com.koushikdutta.async.e.g;
import com.koushikdutta.ion.Ion;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class IonBitmapCache {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final long DEFAULT_ERROR_CACHE_DURATION = 30000;
    LruBitmapCache cache;
    long errorCacheDuration = DEFAULT_ERROR_CACHE_DURATION;
    double heapRatio = 0.14285714285714285d;
    Ion ion;
    DisplayMetrics metrics;
    Resources resources;

    public long getErrorCacheDuration() {
        return this.errorCacheDuration;
    }

    public void setErrorCacheDuration(long j) {
        this.errorCacheDuration = j;
    }

    public IonBitmapCache(Ion ion2) {
        Context applicationContext = ion2.getContext().getApplicationContext();
        this.ion = ion2;
        this.metrics = new DisplayMetrics();
        ((WindowManager) applicationContext.getSystemService("window")).getDefaultDisplay().getMetrics(this.metrics);
        this.resources = new Resources(applicationContext.getAssets(), this.metrics, applicationContext.getResources().getConfiguration());
        this.cache = new LruBitmapCache(getHeapSize(applicationContext) / 7);
    }

    public BitmapInfo remove(String str) {
        return this.cache.removeBitmapInfo(str);
    }

    public void clear() {
        this.cache.evictAllBitmapInfo();
    }

    public double getHeapRatio() {
        return this.heapRatio;
    }

    public void setHeapRatio(double d) {
        this.heapRatio = d;
    }

    public void put(BitmapInfo bitmapInfo) {
        double heapSize = (double) getHeapSize(this.ion.getContext());
        double d = this.heapRatio;
        Double.isNaN(heapSize);
        long j = (long) ((int) (heapSize * d));
        if (j != this.cache.maxSize()) {
            this.cache.setMaxSize(j);
        }
        this.cache.put(bitmapInfo.key, bitmapInfo);
    }

    public void putSoft(BitmapInfo bitmapInfo) {
        this.cache.putSoft(bitmapInfo.key, bitmapInfo);
    }

    public BitmapInfo get(String str) {
        if (str == null) {
            return null;
        }
        BitmapInfo bitmapInfo = this.cache.getBitmapInfo(str);
        if (bitmapInfo == null) {
            return null;
        }
        if (bitmapInfo.bitmap != null && bitmapInfo.bitmap.isRecycled()) {
            this.cache.remove(str);
            return null;
        } else if (bitmapInfo.exception == null || bitmapInfo.loadTime + this.errorCacheDuration > System.currentTimeMillis()) {
            return bitmapInfo;
        } else {
            this.cache.remove(str);
            return null;
        }
    }

    public void dump() {
        new StringBuilder("bitmap cache: ").append(this.cache.size());
        new StringBuilder("freeMemory: ").append(Runtime.getRuntime().freeMemory());
    }

    private Point computeTarget(int i, int i2) {
        if (i == 0) {
            i = this.metrics.widthPixels;
        }
        if (i <= 0) {
            i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        if (i2 == 0) {
            i2 = this.metrics.heightPixels;
        }
        if (i2 <= 0) {
            i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return new Point(i, i2);
    }

    private BitmapFactory.Options prepareBitmapOptions(BitmapFactory.Options options, int i, int i2) throws BitmapDecodeException {
        if (options.outWidth < 0 || options.outHeight < 0) {
            throw new BitmapDecodeException(options.outWidth, options.outHeight);
        }
        Point computeTarget = computeTarget(i, i2);
        int round = Math.round(Math.max(((float) options.outWidth) / ((float) computeTarget.x), ((float) options.outHeight) / ((float) computeTarget.y)));
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = round;
        options2.outWidth = options.outWidth;
        options2.outHeight = options.outHeight;
        options2.outMimeType = options.outMimeType;
        return options2;
    }

    public BitmapFactory.Options prepareBitmapOptions(File file, int i, int i2) throws BitmapDecodeException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.toString(), options);
        return prepareBitmapOptions(options, i, i2);
    }

    public BitmapFactory.Options prepareBitmapOptions(byte[] bArr, int i, int i2, int i3, int i4) throws BitmapDecodeException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, i, i2, options);
        return prepareBitmapOptions(options, i3, i4);
    }

    public BitmapFactory.Options prepareBitmapOptions(Resources resources2, int i, int i2, int i3) throws BitmapDecodeException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources2, i, options);
        return prepareBitmapOptions(options, i2, i3);
    }

    public BitmapFactory.Options prepareBitmapOptions(InputStream inputStream, int i, int i2) throws BitmapDecodeException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        return prepareBitmapOptions(options, i, i2);
    }

    private static Bitmap getRotatedBitmap(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate((float) i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap loadBitmap(byte[] bArr, int i, int i2, BitmapFactory.Options options) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, i, i2, options);
        if (decodeByteArray == null) {
            return null;
        }
        return getRotatedBitmap(decodeByteArray, Exif.getOrientation(bArr, i, i2));
    }

    public static Bitmap loadRegion(BitmapRegionDecoder bitmapRegionDecoder, Rect rect, int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i;
        return bitmapRegionDecoder.decodeRegion(rect, options);
    }

    public static Bitmap loadBitmap(Resources resources2, int i, BitmapFactory.Options options) {
        int i2;
        InputStream inputStream = null;
        try {
            inputStream = resources2.openRawResource(i);
            byte[] bArr = new byte[50000];
            i2 = Exif.getOrientation(bArr, 0, inputStream.read(bArr));
        } catch (Exception unused) {
            i2 = 0;
        }
        g.closeQuietly(inputStream);
        return getRotatedBitmap(BitmapFactory.decodeResource(resources2, i, options), i2);
    }

    public static Bitmap loadBitmap(InputStream inputStream, BitmapFactory.Options options) throws IOException {
        MarkableInputStream markableInputStream = new MarkableInputStream(inputStream);
        markableInputStream.mark(50000);
        int i = 0;
        try {
            byte[] bArr = new byte[50000];
            i = Exif.getOrientation(bArr, 0, markableInputStream.read(bArr));
        } catch (Exception unused) {
        }
        markableInputStream.reset();
        return getRotatedBitmap(BitmapFactory.decodeStream(markableInputStream, null, options), i);
    }

    public static Bitmap loadBitmap(File file, BitmapFactory.Options options) {
        FileInputStream fileInputStream;
        int i;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[50000];
                i = Exif.getOrientation(bArr, 0, fileInputStream.read(bArr));
            } catch (Exception unused) {
                i = 0;
                g.closeQuietly(fileInputStream);
                return getRotatedBitmap(BitmapFactory.decodeFile(file.toString(), options), i);
            }
        } catch (Exception unused2) {
            fileInputStream = null;
            i = 0;
            g.closeQuietly(fileInputStream);
            return getRotatedBitmap(BitmapFactory.decodeFile(file.toString(), options), i);
        }
        g.closeQuietly(fileInputStream);
        return getRotatedBitmap(BitmapFactory.decodeFile(file.toString(), options), i);
    }

    private static int getHeapSize(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getMemoryClass() * 1024 * 1024;
    }
}
