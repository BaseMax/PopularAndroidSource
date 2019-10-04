package com.koushikdutta.ion;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public interface BitmapDrawableFactory {
    public static final BitmapDrawableFactory DEFAULT = new BitmapDrawableFactory() {
        public final Drawable fromBitmap(Resources resources, Bitmap bitmap) {
            return new BitmapDrawable(resources, bitmap);
        }
    };

    Drawable fromBitmap(Resources resources, Bitmap bitmap);
}
