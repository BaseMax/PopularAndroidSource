package com.koushikdutta.ion.builder;

import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import com.koushikdutta.ion.BitmapDrawableFactory;
import com.koushikdutta.ion.builder.ImageViewBuilder;

public interface ImageViewBuilder<I extends ImageViewBuilder<?>> {
    I animateGif(AnimateGifMode animateGifMode);

    I animateIn(int i);

    I animateIn(Animation animation);

    I animateLoad(int i);

    I animateLoad(Animation animation);

    I bitmapDrawableFactory(BitmapDrawableFactory bitmapDrawableFactory);

    I crossfade(boolean z);

    I deepZoom();

    I error(int i);

    I error(Drawable drawable);

    I fadeIn(boolean z);

    I placeholder(int i);

    I placeholder(Drawable drawable);
}
