package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.bitmap.d;

public final class h implements com.bumptech.glide.load.h<a, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final e f2390a;

    public final boolean handles(a aVar, g gVar) {
        return true;
    }

    public h(e eVar) {
        this.f2390a = eVar;
    }

    public final v<Bitmap> decode(a aVar, int i, int i2, g gVar) {
        return d.obtain(aVar.getNextFrame(), this.f2390a);
    }
}
