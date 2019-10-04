package com.koushikdutta.ion;

import android.graphics.Bitmap;
import com.koushikdutta.async.b.j;
import com.koushikdutta.ion.bitmap.BitmapInfo;

class BitmapInfoToBitmap extends j<Bitmap, BitmapInfo> {
    ContextReference contextReference;

    public BitmapInfoToBitmap(ContextReference contextReference2) {
        this.contextReference = contextReference2;
    }

    /* access modifiers changed from: protected */
    public void transform(BitmapInfo bitmapInfo) throws Exception {
        if (this.contextReference.isAlive() != null) {
            cancel();
        } else if (bitmapInfo.exception != null) {
            setComplete(bitmapInfo.exception);
        } else {
            setComplete(bitmapInfo.bitmap);
        }
    }
}
