package com.koushikdutta.ion.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import com.koushikdutta.async.e.i;
import com.koushikdutta.ion.ResponseServedFrom;
import com.koushikdutta.ion.gif.GifDecoder;
import java.io.File;

public class BitmapInfo {
    public final Bitmap bitmap;
    public BitmapRegionDecoder decoder;
    public File decoderFile;
    public long drawTime;
    public Exception exception;
    public final i extras = new i();
    public GifDecoder gifDecoder;
    public final String key;
    public long loadTime = System.currentTimeMillis();
    public final String mimeType;
    public final Point originalSize;
    public ResponseServedFrom servedFrom;

    public BitmapInfo(String str, String str2, Bitmap bitmap2, Point point) {
        this.originalSize = point;
        this.bitmap = bitmap2;
        this.key = str;
        this.mimeType = str2;
    }

    public int sizeOf() {
        Bitmap bitmap2 = this.bitmap;
        if (bitmap2 != null) {
            return bitmap2.getRowBytes() * this.bitmap.getHeight();
        }
        GifDecoder gifDecoder2 = this.gifDecoder;
        if (gifDecoder2 != null) {
            return gifDecoder2.getGifDataLength();
        }
        return 0;
    }
}
