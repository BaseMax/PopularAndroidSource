package com.koushikdutta.ion;

import android.widget.ImageView;
import com.koushikdutta.ion.bitmap.BitmapInfo;

public class ImageViewBitmapInfo {
    Exception exception;
    ImageView imageView;
    BitmapInfo info;

    public Exception getException() {
        return this.exception;
    }

    public ImageView getImageView() {
        return this.imageView;
    }

    public BitmapInfo getBitmapInfo() {
        return this.info;
    }
}
