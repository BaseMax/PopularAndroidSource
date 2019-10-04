package com.koushikdutta.ion.bitmap;

public class BitmapDecodeException extends Exception {
    public final int height;
    public final int width;

    public BitmapDecodeException(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public String toString() {
        return super.toString() + " size=" + this.width + 'x' + this.height;
    }
}
