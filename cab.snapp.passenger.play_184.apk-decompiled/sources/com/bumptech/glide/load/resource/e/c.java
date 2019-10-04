package com.bumptech.glide.load.resource.e;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.bitmap.d;

public final class c implements e<Drawable, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final e f2396a;

    /* renamed from: b  reason: collision with root package name */
    private final e<Bitmap, byte[]> f2397b;
    private final e<com.bumptech.glide.load.resource.d.c, byte[]> c;

    public c(e eVar, e<Bitmap, byte[]> eVar2, e<com.bumptech.glide.load.resource.d.c, byte[]> eVar3) {
        this.f2396a = eVar;
        this.f2397b = eVar2;
        this.c = eVar3;
    }

    public final v<byte[]> transcode(v<Drawable> vVar, g gVar) {
        Drawable drawable = vVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f2397b.transcode(d.obtain(((BitmapDrawable) drawable).getBitmap(), this.f2396a), gVar);
        }
        if (drawable instanceof com.bumptech.glide.load.resource.d.c) {
            return this.c.transcode(vVar, gVar);
        }
        return null;
    }
}
