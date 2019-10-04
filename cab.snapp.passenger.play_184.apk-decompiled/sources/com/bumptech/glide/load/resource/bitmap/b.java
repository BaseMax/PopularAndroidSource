package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import java.io.File;

public final class b implements i<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final e f2337a;

    /* renamed from: b  reason: collision with root package name */
    private final i<Bitmap> f2338b;

    public b(e eVar, i<Bitmap> iVar) {
        this.f2337a = eVar;
        this.f2338b = iVar;
    }

    public final boolean encode(v<BitmapDrawable> vVar, File file, g gVar) {
        return this.f2338b.encode(new d(vVar.get().getBitmap(), this.f2337a), file, gVar);
    }

    public final EncodeStrategy getEncodeStrategy(g gVar) {
        return this.f2338b.getEncodeStrategy(gVar);
    }
}
