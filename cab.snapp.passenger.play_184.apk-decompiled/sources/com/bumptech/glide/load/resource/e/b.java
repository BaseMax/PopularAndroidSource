package com.bumptech.glide.load.resource.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.bitmap.q;

public final class b implements e<Bitmap, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f2395a;

    public b(Context context) {
        this(context.getResources());
    }

    @Deprecated
    public b(Resources resources, e eVar) {
        this(resources);
    }

    public b(Resources resources) {
        this.f2395a = (Resources) j.checkNotNull(resources);
    }

    public final v<BitmapDrawable> transcode(v<Bitmap> vVar, g gVar) {
        return q.obtain(this.f2395a, vVar);
    }
}
