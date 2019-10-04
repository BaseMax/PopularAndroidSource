package com.koushikdutta.ion.builder;

import android.graphics.Bitmap;
import com.koushikdutta.async.b.e;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.LocallyCachedStatus;

public interface BitmapFutureBuilder {
    e<Bitmap> asBitmap();

    BitmapInfo asCachedBitmap();

    LocallyCachedStatus isLocallyCached();

    void removeCachedBitmap();
}
