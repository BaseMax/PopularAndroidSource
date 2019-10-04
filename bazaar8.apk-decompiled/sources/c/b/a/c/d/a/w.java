package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.D;
import c.b.a.c.f;
import c.b.a.c.g;
import c.b.a.i.k;

/* compiled from: UnitBitmapDecoder */
public final class w implements g<Bitmap, Bitmap> {

    /* compiled from: UnitBitmapDecoder */
    private static final class a implements D<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f4202a;

        public a(Bitmap bitmap) {
            this.f4202a = bitmap;
        }

        public void a() {
        }

        public int b() {
            return k.a(this.f4202a);
        }

        public Class<Bitmap> c() {
            return Bitmap.class;
        }

        public Bitmap get() {
            return this.f4202a;
        }
    }

    public boolean a(Bitmap bitmap, f fVar) {
        return true;
    }

    public D<Bitmap> a(Bitmap bitmap, int i2, int i3, f fVar) {
        return new a(bitmap);
    }
}
