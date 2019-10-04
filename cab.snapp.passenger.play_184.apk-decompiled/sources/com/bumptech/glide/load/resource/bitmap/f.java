package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.a;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class f implements h<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final k f2342a;

    public f(k kVar) {
        this.f2342a = kVar;
    }

    public final boolean handles(ByteBuffer byteBuffer, g gVar) {
        return this.f2342a.handles(byteBuffer);
    }

    public final v<Bitmap> decode(ByteBuffer byteBuffer, int i, int i2, g gVar) throws IOException {
        return this.f2342a.decode(a.toStream(byteBuffer), i, i2, gVar);
    }
}
