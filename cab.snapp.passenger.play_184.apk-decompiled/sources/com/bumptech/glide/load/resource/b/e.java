package com.bumptech.glide.load.resource.b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;

public final class e implements h<Drawable, Drawable> {
    public final boolean handles(Drawable drawable, g gVar) {
        return true;
    }

    public final v<Drawable> decode(Drawable drawable, int i, int i2, g gVar) {
        return c.a(drawable);
    }
}
