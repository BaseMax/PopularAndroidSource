package com.koushikdutta.ion;

public class DeferredLoadBitmap extends BitmapCallback {
    public static int DEFER_COUNTER;
    BitmapFetcher fetcher;
    int priority;

    public DeferredLoadBitmap(Ion ion, String str, BitmapFetcher bitmapFetcher) {
        super(ion, str, false);
        int i = DEFER_COUNTER + 1;
        DEFER_COUNTER = i;
        this.priority = i;
        this.fetcher = bitmapFetcher;
    }
}
