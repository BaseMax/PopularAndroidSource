package com.bumptech.glide.load.resource.b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.b.v;

final class c extends b<Drawable> {
    public final void recycle() {
    }

    static v<Drawable> a(Drawable drawable) {
        if (drawable != null) {
            return new c(drawable);
        }
        return null;
    }

    private c(Drawable drawable) {
        super(drawable);
    }

    public final Class<Drawable> getResourceClass() {
        return this.f2333a.getClass();
    }

    public final int getSize() {
        return Math.max(1, this.f2333a.getIntrinsicWidth() * this.f2333a.getIntrinsicHeight() * 4);
    }
}
