package c.b.a.c.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.b.a.c.b.D;
import c.b.a.c.b.a.e;
import c.b.a.c.i;
import java.security.MessageDigest;

/* compiled from: DrawableTransformation */
public class n implements i<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    public final i<Bitmap> f4180a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f4181b;

    public n(i<Bitmap> iVar, boolean z) {
        this.f4180a = iVar;
        this.f4181b = z;
    }

    public D<Drawable> a(Context context, D<Drawable> d2, int i2, int i3) {
        e d3 = c.b.a.e.b(context).d();
        Drawable drawable = d2.get();
        D<Bitmap> a2 = m.a(d3, drawable, i2, i3);
        if (a2 != null) {
            D<Bitmap> a3 = this.f4180a.a(context, a2, i2, i3);
            if (!a3.equals(a2)) {
                return a(context, a3);
            }
            a3.a();
            return d2;
        } else if (!this.f4181b) {
            return d2;
        } else {
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
    }

    public i<BitmapDrawable> a() {
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f4180a.equals(((n) obj).f4180a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4180a.hashCode();
    }

    public final D<Drawable> a(Context context, D<Bitmap> d2) {
        return r.a(context.getResources(), d2);
    }

    public void a(MessageDigest messageDigest) {
        this.f4180a.a(messageDigest);
    }
}
