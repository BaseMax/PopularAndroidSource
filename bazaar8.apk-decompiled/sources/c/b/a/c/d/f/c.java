package c.b.a.c.d.f;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.b.a.c.b.D;
import c.b.a.c.b.a.e;
import c.b.a.c.d.a.d;
import c.b.a.c.f;

/* compiled from: DrawableBytesTranscoder */
public final class c implements e<Drawable, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    public final e f4265a;

    /* renamed from: b  reason: collision with root package name */
    public final e<Bitmap, byte[]> f4266b;

    /* renamed from: c  reason: collision with root package name */
    public final e<c.b.a.c.d.e.c, byte[]> f4267c;

    public c(e eVar, e<Bitmap, byte[]> eVar2, e<c.b.a.c.d.e.c, byte[]> eVar3) {
        this.f4265a = eVar;
        this.f4266b = eVar2;
        this.f4267c = eVar3;
    }

    public static D<c.b.a.c.d.e.c> a(D<Drawable> d2) {
        return d2;
    }

    public D<byte[]> a(D<Drawable> d2, f fVar) {
        Drawable drawable = d2.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f4266b.a(d.a(((BitmapDrawable) drawable).getBitmap(), this.f4265a), fVar);
        }
        if (!(drawable instanceof c.b.a.c.d.e.c)) {
            return null;
        }
        e<c.b.a.c.d.e.c, byte[]> eVar = this.f4267c;
        a(d2);
        return eVar.a(d2, fVar);
    }
}
