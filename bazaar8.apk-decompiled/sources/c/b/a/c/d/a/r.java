package c.b.a.c.d.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import c.b.a.c.b.D;
import c.b.a.c.b.y;
import c.b.a.i.i;

/* compiled from: LazyBitmapDrawableResource */
public final class r implements D<BitmapDrawable>, y {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f4187a;

    /* renamed from: b  reason: collision with root package name */
    public final D<Bitmap> f4188b;

    public r(Resources resources, D<Bitmap> d2) {
        i.a(resources);
        this.f4187a = resources;
        i.a(d2);
        this.f4188b = d2;
    }

    public static D<BitmapDrawable> a(Resources resources, D<Bitmap> d2) {
        if (d2 == null) {
            return null;
        }
        return new r(resources, d2);
    }

    public int b() {
        return this.f4188b.b();
    }

    public Class<BitmapDrawable> c() {
        return BitmapDrawable.class;
    }

    public void d() {
        D<Bitmap> d2 = this.f4188b;
        if (d2 instanceof y) {
            ((y) d2).d();
        }
    }

    public void a() {
        this.f4188b.a();
    }

    public BitmapDrawable get() {
        return new BitmapDrawable(this.f4187a, this.f4188b.get());
    }
}
