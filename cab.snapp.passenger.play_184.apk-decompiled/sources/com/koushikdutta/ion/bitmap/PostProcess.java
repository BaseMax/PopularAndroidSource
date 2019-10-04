package com.koushikdutta.ion.bitmap;

public interface PostProcess {
    String key();

    void postProcess(BitmapInfo bitmapInfo) throws Exception;
}
