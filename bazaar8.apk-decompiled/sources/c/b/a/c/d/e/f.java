package c.b.a.c.d.e;

import android.content.Context;
import android.graphics.Bitmap;
import c.b.a.c.b.D;
import c.b.a.c.d.a.d;
import c.b.a.c.i;
import c.b.a.e;
import java.security.MessageDigest;

/* compiled from: GifDrawableTransformation */
public class f implements i<c> {

    /* renamed from: a  reason: collision with root package name */
    public final i<Bitmap> f4238a;

    public f(i<Bitmap> iVar) {
        c.b.a.i.i.a(iVar);
        this.f4238a = iVar;
    }

    public D<c> a(Context context, D<c> d2, int i2, int i3) {
        c cVar = d2.get();
        d dVar = new d(cVar.e(), e.b(context).d());
        D<Bitmap> a2 = this.f4238a.a(context, dVar, i2, i3);
        if (!dVar.equals(a2)) {
            dVar.a();
        }
        cVar.a(this.f4238a, a2.get());
        return d2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f4238a.equals(((f) obj).f4238a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4238a.hashCode();
    }

    public void a(MessageDigest messageDigest) {
        this.f4238a.a(messageDigest);
    }
}
