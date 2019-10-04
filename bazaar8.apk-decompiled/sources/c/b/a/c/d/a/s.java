package c.b.a.c.d.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import c.b.a.c.b.D;
import c.b.a.c.b.a.e;
import c.b.a.c.d.c.d;
import c.b.a.c.f;
import c.b.a.c.g;

/* compiled from: ResourceBitmapDecoder */
public class s implements g<Uri, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public final d f4189a;

    /* renamed from: b  reason: collision with root package name */
    public final e f4190b;

    public s(d dVar, e eVar) {
        this.f4189a = dVar;
        this.f4190b = eVar;
    }

    public boolean a(Uri uri, f fVar) {
        return "android.resource".equals(uri.getScheme());
    }

    public D<Bitmap> a(Uri uri, int i2, int i3, f fVar) {
        D<Drawable> a2 = this.f4189a.a(uri, i2, i3, fVar);
        if (a2 == null) {
            return null;
        }
        return m.a(this.f4190b, a2.get(), i2, i3);
    }
}
