package com.koushikdutta.ion.builder;

import android.widget.ImageView;
import com.koushikdutta.ion.future.ImageViewFuture;

public interface ImageViewFutureBuilder {
    ImageViewFuture intoImageView(ImageView imageView);
}
