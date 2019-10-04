package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;

public final class v implements h<Bitmap, Bitmap> {

    static final class a implements com.bumptech.glide.load.b.v<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private final Bitmap f2371a;

        public final void recycle() {
        }

        a(Bitmap bitmap) {
            this.f2371a = bitmap;
        }

        public final Class<Bitmap> getResourceClass() {
            return Bitmap.class;
        }

        public final Bitmap get() {
            return this.f2371a;
        }

        public final int getSize() {
            return k.getBitmapByteSize(this.f2371a);
        }
    }

    public final boolean handles(Bitmap bitmap, g gVar) {
        return true;
    }

    public final com.bumptech.glide.load.b.v<Bitmap> decode(Bitmap bitmap, int i, int i2, g gVar) {
        return new a(bitmap);
    }
}
