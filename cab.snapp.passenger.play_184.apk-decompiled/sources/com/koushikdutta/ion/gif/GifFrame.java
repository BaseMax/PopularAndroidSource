package com.koushikdutta.ion.gif;

import android.graphics.Bitmap;

public class GifFrame {
    public int delay;
    public Bitmap image;

    public GifFrame(Bitmap bitmap, int i) {
        this.image = bitmap;
        this.delay = i;
    }
}
