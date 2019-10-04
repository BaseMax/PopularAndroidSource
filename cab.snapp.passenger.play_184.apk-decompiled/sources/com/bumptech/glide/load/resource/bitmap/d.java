package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.j;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.b.v;

public final class d implements r, v<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f2340a;

    /* renamed from: b  reason: collision with root package name */
    private final e f2341b;

    public static d obtain(Bitmap bitmap, e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new d(bitmap, eVar);
    }

    public d(Bitmap bitmap, e eVar) {
        this.f2340a = (Bitmap) j.checkNotNull(bitmap, "Bitmap must not be null");
        this.f2341b = (e) j.checkNotNull(eVar, "BitmapPool must not be null");
    }

    public final Class<Bitmap> getResourceClass() {
        return Bitmap.class;
    }

    public final Bitmap get() {
        return this.f2340a;
    }

    public final int getSize() {
        return k.getBitmapByteSize(this.f2340a);
    }

    public final void recycle() {
        this.f2341b.put(this.f2340a);
    }

    public final void initialize() {
        this.f2340a.prepareToDraw();
    }
}
