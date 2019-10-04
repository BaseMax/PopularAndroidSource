package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.b.d;

public final class s implements h<Uri, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final d f2363a;

    /* renamed from: b  reason: collision with root package name */
    private final e f2364b;

    public s(d dVar, e eVar) {
        this.f2363a = dVar;
        this.f2364b = eVar;
    }

    public final boolean handles(Uri uri, g gVar) {
        return "android.resource".equals(uri.getScheme());
    }

    public final v<Bitmap> decode(Uri uri, int i, int i2, g gVar) {
        v<Drawable> decode = this.f2363a.decode(uri, i, i2, gVar);
        if (decode == null) {
            return null;
        }
        return l.a(this.f2364b, decode.get(), i, i2);
    }
}
