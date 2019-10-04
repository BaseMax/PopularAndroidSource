package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.c;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.b.v;

public final class q implements r, v<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f2359a;

    /* renamed from: b  reason: collision with root package name */
    private final v<Bitmap> f2360b;

    @Deprecated
    public static q obtain(Context context, Bitmap bitmap) {
        return (q) obtain(context.getResources(), (v<Bitmap>) d.obtain(bitmap, c.get(context).getBitmapPool()));
    }

    @Deprecated
    public static q obtain(Resources resources, e eVar, Bitmap bitmap) {
        return (q) obtain(resources, (v<Bitmap>) d.obtain(bitmap, eVar));
    }

    public static v<BitmapDrawable> obtain(Resources resources, v<Bitmap> vVar) {
        if (vVar == null) {
            return null;
        }
        return new q(resources, vVar);
    }

    private q(Resources resources, v<Bitmap> vVar) {
        this.f2359a = (Resources) j.checkNotNull(resources);
        this.f2360b = (v) j.checkNotNull(vVar);
    }

    public final Class<BitmapDrawable> getResourceClass() {
        return BitmapDrawable.class;
    }

    public final BitmapDrawable get() {
        return new BitmapDrawable(this.f2359a, this.f2360b.get());
    }

    public final int getSize() {
        return this.f2360b.getSize();
    }

    public final void recycle() {
        this.f2360b.recycle();
    }

    public final void initialize() {
        v<Bitmap> vVar = this.f2360b;
        if (vVar instanceof r) {
            ((r) vVar).initialize();
        }
    }
}
