package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.D;
import c.b.a.c.b.a.b;
import c.b.a.c.b.a.e;
import c.b.a.c.d.a.k;
import c.b.a.c.f;
import c.b.a.c.g;
import c.b.a.i.d;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamBitmapDecoder */
public class u implements g<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public final k f4193a;

    /* renamed from: b  reason: collision with root package name */
    public final b f4194b;

    /* compiled from: StreamBitmapDecoder */
    static class a implements k.a {

        /* renamed from: a  reason: collision with root package name */
        public final RecyclableBufferedInputStream f4195a;

        /* renamed from: b  reason: collision with root package name */
        public final d f4196b;

        public a(RecyclableBufferedInputStream recyclableBufferedInputStream, d dVar) {
            this.f4195a = recyclableBufferedInputStream;
            this.f4196b = dVar;
        }

        public void a() {
            this.f4195a.s();
        }

        public void a(e eVar, Bitmap bitmap) {
            IOException s = this.f4196b.s();
            if (s != null) {
                if (bitmap != null) {
                    eVar.a(bitmap);
                }
                throw s;
            }
        }
    }

    public u(k kVar, b bVar) {
        this.f4193a = kVar;
        this.f4194b = bVar;
    }

    public boolean a(InputStream inputStream, f fVar) {
        return this.f4193a.a(inputStream);
    }

    public D<Bitmap> a(InputStream inputStream, int i2, int i3, f fVar) {
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        boolean z;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.f4194b);
            z = true;
        }
        d a2 = d.a(recyclableBufferedInputStream);
        try {
            return this.f4193a.a((InputStream) new c.b.a.i.g(a2), i2, i3, fVar, (k.a) new a(recyclableBufferedInputStream, a2));
        } finally {
            a2.t();
            if (z) {
                recyclableBufferedInputStream.t();
            }
        }
    }
}
