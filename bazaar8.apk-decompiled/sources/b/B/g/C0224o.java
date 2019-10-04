package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import b.b.b.a.a;
import b.b.j;
import b.i.l.e;

/* renamed from: b.b.g.o  reason: case insensitive filesystem */
/* compiled from: AppCompatImageHelper */
public class C0224o {

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f2215a;

    /* renamed from: b  reason: collision with root package name */
    public na f2216b;

    /* renamed from: c  reason: collision with root package name */
    public na f2217c;

    /* renamed from: d  reason: collision with root package name */
    public na f2218d;

    public C0224o(ImageView imageView) {
        this.f2215a = imageView;
    }

    public void a(AttributeSet attributeSet, int i2) {
        pa a2 = pa.a(this.f2215a.getContext(), attributeSet, j.AppCompatImageView, i2, 0);
        try {
            Drawable drawable = this.f2215a.getDrawable();
            if (drawable == null) {
                int g2 = a2.g(j.AppCompatImageView_srcCompat, -1);
                if (g2 != -1) {
                    drawable = a.c(this.f2215a.getContext(), g2);
                    if (drawable != null) {
                        this.f2215a.setImageDrawable(drawable);
                    }
                }
            }
            if (drawable != null) {
                H.b(drawable);
            }
            if (a2.g(j.AppCompatImageView_tint)) {
                e.a(this.f2215a, a2.a(j.AppCompatImageView_tint));
            }
            if (a2.g(j.AppCompatImageView_tintMode)) {
                e.a(this.f2215a, H.a(a2.d(j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            a2.a();
        }
    }

    public ColorStateList b() {
        na naVar = this.f2217c;
        if (naVar != null) {
            return naVar.f2211a;
        }
        return null;
    }

    public PorterDuff.Mode c() {
        na naVar = this.f2217c;
        if (naVar != null) {
            return naVar.f2212b;
        }
        return null;
    }

    public boolean d() {
        return Build.VERSION.SDK_INT < 21 || !(this.f2215a.getBackground() instanceof RippleDrawable);
    }

    public final boolean e() {
        int i2 = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i2 <= 21) {
            return i2 == 21;
        }
        if (this.f2216b == null) {
            z = false;
        }
        return z;
    }

    public void a(int i2) {
        if (i2 != 0) {
            Drawable c2 = a.c(this.f2215a.getContext(), i2);
            if (c2 != null) {
                H.b(c2);
            }
            this.f2215a.setImageDrawable(c2);
        } else {
            this.f2215a.setImageDrawable(null);
        }
        a();
    }

    public void a(ColorStateList colorStateList) {
        if (this.f2217c == null) {
            this.f2217c = new na();
        }
        na naVar = this.f2217c;
        naVar.f2211a = colorStateList;
        naVar.f2214d = true;
        a();
    }

    public void a(PorterDuff.Mode mode) {
        if (this.f2217c == null) {
            this.f2217c = new na();
        }
        na naVar = this.f2217c;
        naVar.f2212b = mode;
        naVar.f2213c = true;
        a();
    }

    public void a() {
        Drawable drawable = this.f2215a.getDrawable();
        if (drawable != null) {
            H.b(drawable);
        }
        if (drawable != null && (!e() || !a(drawable))) {
            na naVar = this.f2217c;
            if (naVar != null) {
                C0222m.a(drawable, naVar, this.f2215a.getDrawableState());
            } else {
                na naVar2 = this.f2216b;
                if (naVar2 != null) {
                    C0222m.a(drawable, naVar2, this.f2215a.getDrawableState());
                }
            }
        }
    }

    public final boolean a(Drawable drawable) {
        if (this.f2218d == null) {
            this.f2218d = new na();
        }
        na naVar = this.f2218d;
        naVar.a();
        ColorStateList a2 = e.a(this.f2215a);
        if (a2 != null) {
            naVar.f2214d = true;
            naVar.f2211a = a2;
        }
        PorterDuff.Mode b2 = e.b(this.f2215a);
        if (b2 != null) {
            naVar.f2213c = true;
            naVar.f2212b = b2;
        }
        if (!naVar.f2214d && !naVar.f2213c) {
            return false;
        }
        C0222m.a(drawable, naVar, this.f2215a.getDrawableState());
        return true;
    }
}
