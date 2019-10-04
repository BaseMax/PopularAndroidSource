package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.D;
import c.b.a.c.b.a.e;
import c.b.a.c.b.y;
import c.b.a.i.i;
import c.b.a.i.k;

/* compiled from: BitmapResource */
public class d implements D<Bitmap>, y {

    /* renamed from: a  reason: collision with root package name */
    public final Bitmap f4157a;

    /* renamed from: b  reason: collision with root package name */
    public final e f4158b;

    public d(Bitmap bitmap, e eVar) {
        i.a(bitmap, "Bitmap must not be null");
        this.f4157a = bitmap;
        i.a(eVar, "BitmapPool must not be null");
        this.f4158b = eVar;
    }

    public static d a(Bitmap bitmap, e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new d(bitmap, eVar);
    }

    public int b() {
        return k.a(this.f4157a);
    }

    public Class<Bitmap> c() {
        return Bitmap.class;
    }

    public void d() {
        this.f4157a.prepareToDraw();
    }

    public void a() {
        this.f4158b.a(this.f4157a);
    }

    public Bitmap get() {
        return this.f4157a;
    }
}
