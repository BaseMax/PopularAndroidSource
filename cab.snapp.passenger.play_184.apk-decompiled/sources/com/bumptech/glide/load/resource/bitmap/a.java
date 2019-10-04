package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import java.io.IOException;

public final class a<DataType> implements h<DataType, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final h<DataType, Bitmap> f2335a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f2336b;

    public a(Context context, h<DataType, Bitmap> hVar) {
        this(context.getResources(), hVar);
    }

    @Deprecated
    public a(Resources resources, e eVar, h<DataType, Bitmap> hVar) {
        this(resources, hVar);
    }

    public a(Resources resources, h<DataType, Bitmap> hVar) {
        this.f2336b = (Resources) j.checkNotNull(resources);
        this.f2335a = (h) j.checkNotNull(hVar);
    }

    public final boolean handles(DataType datatype, g gVar) throws IOException {
        return this.f2335a.handles(datatype, gVar);
    }

    public final v<BitmapDrawable> decode(DataType datatype, int i, int i2, g gVar) throws IOException {
        return q.obtain(this.f2336b, this.f2335a.decode(datatype, i, i2, gVar));
    }
}
