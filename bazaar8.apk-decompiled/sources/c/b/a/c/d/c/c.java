package c.b.a.c.d.c;

import android.graphics.drawable.Drawable;
import c.b.a.c.b.D;

/* compiled from: NonOwnedDrawableResource */
public final class c extends b<Drawable> {
    public c(Drawable drawable) {
        super(drawable);
    }

    public static D<Drawable> a(Drawable drawable) {
        if (drawable != null) {
            return new c(drawable);
        }
        return null;
    }

    public void a() {
    }

    public int b() {
        return Math.max(1, this.f4215a.getIntrinsicWidth() * this.f4215a.getIntrinsicHeight() * 4);
    }

    public Class<Drawable> c() {
        return this.f4215a.getClass();
    }
}
