package com.koushikdutta.ion.builder;

import com.koushikdutta.ion.bitmap.PostProcess;
import com.koushikdutta.ion.bitmap.Transform;
import com.koushikdutta.ion.builder.BitmapBuilder;

public interface BitmapBuilder<B extends BitmapBuilder<?>> {
    B centerCrop();

    B centerInside();

    B fitCenter();

    B fitXY();

    B postProcess(PostProcess postProcess);

    B resize(int i, int i2);

    B resizeHeight(int i);

    B resizeWidth(int i);

    B smartSize(boolean z);

    B transform(Transform transform);
}
