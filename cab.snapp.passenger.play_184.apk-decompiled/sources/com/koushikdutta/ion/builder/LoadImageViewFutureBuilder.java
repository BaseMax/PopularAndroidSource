package com.koushikdutta.ion.builder;

import android.widget.ImageView;
import com.koushikdutta.async.b.e;
import com.koushikdutta.ion.future.ImageViewFuture;

public interface LoadImageViewFutureBuilder {
    e<ImageView> load(String str, String str2);

    ImageViewFuture load(String str);
}
