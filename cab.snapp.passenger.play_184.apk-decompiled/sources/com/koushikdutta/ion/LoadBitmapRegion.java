package com.koushikdutta.ion;

import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.util.concurrent.ExecutorService;

public class LoadBitmapRegion extends BitmapCallback {
    public LoadBitmapRegion(Ion ion, String str, BitmapRegionDecoder bitmapRegionDecoder, Rect rect, int i) {
        super(ion, str, true);
        ExecutorService bitmapLoadExecutorService = Ion.getBitmapLoadExecutorService();
        final BitmapRegionDecoder bitmapRegionDecoder2 = bitmapRegionDecoder;
        final Rect rect2 = rect;
        final int i2 = i;
        final String str2 = str;
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                try {
                    Bitmap loadRegion = IonBitmapCache.loadRegion(bitmapRegionDecoder2, rect2, i2);
                    if (loadRegion != null) {
                        LoadBitmapRegion.this.report(null, new BitmapInfo(str2, null, loadRegion, new Point(loadRegion.getWidth(), loadRegion.getHeight())));
                        return;
                    }
                    throw new Exception("failed to load bitmap region");
                } catch (Exception e) {
                    LoadBitmapRegion.this.report(e, null);
                }
            }
        };
        bitmapLoadExecutorService.execute(r0);
    }
}
