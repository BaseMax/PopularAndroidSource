package c.b.a.c.d.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import c.b.a.c.b.D;
import c.b.a.c.f;
import c.b.a.c.g;
import c.b.a.i.i;

/* compiled from: BitmapDrawableDecoder */
public class a<DataType> implements g<DataType, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    public final g<DataType, Bitmap> f4150a;

    /* renamed from: b  reason: collision with root package name */
    public final Resources f4151b;

    public a(Resources resources, g<DataType, Bitmap> gVar) {
        i.a(resources);
        this.f4151b = resources;
        i.a(gVar);
        this.f4150a = gVar;
    }

    public boolean a(DataType datatype, f fVar) {
        return this.f4150a.a(datatype, fVar);
    }

    public D<BitmapDrawable> a(DataType datatype, int i2, int i3, f fVar) {
        return r.a(this.f4151b, this.f4150a.a(datatype, i2, i3, fVar));
    }
}
