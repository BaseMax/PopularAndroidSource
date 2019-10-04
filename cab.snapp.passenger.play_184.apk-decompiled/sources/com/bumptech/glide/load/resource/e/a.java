package com.bumptech.glide.load.resource.e;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.a.b;
import java.io.ByteArrayOutputStream;

public final class a implements e<Bitmap, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap.CompressFormat f2393a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2394b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public a(Bitmap.CompressFormat compressFormat, int i) {
        this.f2393a = compressFormat;
        this.f2394b = i;
    }

    public final v<byte[]> transcode(v<Bitmap> vVar, g gVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        vVar.get().compress(this.f2393a, this.f2394b, byteArrayOutputStream);
        vVar.recycle();
        return new b(byteArrayOutputStream.toByteArray());
    }
}
