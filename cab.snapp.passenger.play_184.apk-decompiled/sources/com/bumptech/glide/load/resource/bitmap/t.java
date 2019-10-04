package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.d;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.bitmap.k;
import java.io.IOException;
import java.io.InputStream;

public final class t implements h<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final k f2365a;

    /* renamed from: b  reason: collision with root package name */
    private final b f2366b;

    static class a implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private final r f2367a;

        /* renamed from: b  reason: collision with root package name */
        private final d f2368b;

        a(r rVar, d dVar) {
            this.f2367a = rVar;
            this.f2368b = dVar;
        }

        public final void onObtainBounds() {
            this.f2367a.fixMarkLimit();
        }

        public final void onDecodeComplete(e eVar, Bitmap bitmap) throws IOException {
            IOException exception = this.f2368b.getException();
            if (exception != null) {
                if (bitmap != null) {
                    eVar.put(bitmap);
                }
                throw exception;
            }
        }
    }

    public t(k kVar, b bVar) {
        this.f2365a = kVar;
        this.f2366b = bVar;
    }

    public final boolean handles(InputStream inputStream, g gVar) {
        return this.f2365a.handles(inputStream);
    }

    public final v<Bitmap> decode(InputStream inputStream, int i, int i2, g gVar) throws IOException {
        r rVar;
        boolean z;
        if (inputStream instanceof r) {
            rVar = (r) inputStream;
            z = false;
        } else {
            rVar = new r(inputStream, this.f2366b);
            z = true;
        }
        d obtain = d.obtain(rVar);
        try {
            return this.f2365a.decode(new com.bumptech.glide.g.h(obtain), i, i2, gVar, new a(rVar, obtain));
        } finally {
            obtain.release();
            if (z) {
                rVar.release();
            }
        }
    }
}
