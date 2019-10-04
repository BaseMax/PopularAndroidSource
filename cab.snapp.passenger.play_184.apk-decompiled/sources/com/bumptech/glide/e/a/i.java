package com.bumptech.glide.e.a;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.e.b.b;
import com.bumptech.glide.e.d;

public interface i<R> extends com.bumptech.glide.manager.i {
    public static final int SIZE_ORIGINAL = Integer.MIN_VALUE;

    d getRequest();

    void getSize(h hVar);

    void onLoadCleared(Drawable drawable);

    void onLoadFailed(Drawable drawable);

    void onLoadStarted(Drawable drawable);

    void onResourceReady(R r, b<? super R> bVar);

    void removeCallback(h hVar);

    void setRequest(d dVar);
}
