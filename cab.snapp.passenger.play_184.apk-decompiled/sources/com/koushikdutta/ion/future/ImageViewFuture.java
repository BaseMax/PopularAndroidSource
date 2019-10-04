package com.koushikdutta.ion.future;

import android.widget.ImageView;
import com.koushikdutta.async.b.e;
import com.koushikdutta.ion.ImageViewBitmapInfo;

public interface ImageViewFuture extends e<ImageView> {
    e<ImageViewBitmapInfo> withBitmapInfo();
}
