package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import b.b.j;
import b.i.k.z;

/* renamed from: b.b.g.i  reason: case insensitive filesystem */
/* compiled from: AppCompatBackgroundHelper */
public class C0218i {

    /* renamed from: a  reason: collision with root package name */
    public final View f2168a;

    /* renamed from: b  reason: collision with root package name */
    public final C0222m f2169b;

    /* renamed from: c  reason: collision with root package name */
    public int f2170c = -1;

    /* renamed from: d  reason: collision with root package name */
    public na f2171d;

    /* renamed from: e  reason: collision with root package name */
    public na f2172e;

    /* renamed from: f  reason: collision with root package name */
    public na f2173f;

    public C0218i(View view) {
        this.f2168a = view;
        this.f2169b = C0222m.b();
    }

    public void a(AttributeSet attributeSet, int i2) {
        pa a2 = pa.a(this.f2168a.getContext(), attributeSet, j.ViewBackgroundHelper, i2, 0);
        try {
            if (a2.g(j.ViewBackgroundHelper_android_background)) {
                this.f2170c = a2.g(j.ViewBackgroundHelper_android_background, -1);
                ColorStateList b2 = this.f2169b.b(this.f2168a.getContext(), this.f2170c);
                if (b2 != null) {
                    a(b2);
                }
            }
            if (a2.g(j.ViewBackgroundHelper_backgroundTint)) {
                z.a(this.f2168a, a2.a(j.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.g(j.ViewBackgroundHelper_backgroundTintMode)) {
                z.a(this.f2168a, H.a(a2.d(j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a2.a();
        }
    }

    public void b(Drawable drawable) {
        this.f2170c = -1;
        a((ColorStateList) null);
        a();
    }

    public PorterDuff.Mode c() {
        na naVar = this.f2172e;
        if (naVar != null) {
            return naVar.f2212b;
        }
        return null;
    }

    public final boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i2 <= 21) {
            return i2 == 21;
        }
        if (this.f2171d == null) {
            z = false;
        }
        return z;
    }

    public void b(ColorStateList colorStateList) {
        if (this.f2172e == null) {
            this.f2172e = new na();
        }
        na naVar = this.f2172e;
        naVar.f2211a = colorStateList;
        naVar.f2214d = true;
        a();
    }

    public ColorStateList b() {
        na naVar = this.f2172e;
        if (naVar != null) {
            return naVar.f2211a;
        }
        return null;
    }

    public void a(int i2) {
        this.f2170c = i2;
        C0222m mVar = this.f2169b;
        a(mVar != null ? mVar.b(this.f2168a.getContext(), i2) : null);
        a();
    }

    public void a(PorterDuff.Mode mode) {
        if (this.f2172e == null) {
            this.f2172e = new na();
        }
        na naVar = this.f2172e;
        naVar.f2212b = mode;
        naVar.f2213c = true;
        a();
    }

    public void a() {
        Drawable background = this.f2168a.getBackground();
        if (background != null && (!d() || !a(background))) {
            na naVar = this.f2172e;
            if (naVar != null) {
                C0222m.a(background, naVar, this.f2168a.getDrawableState());
            } else {
                na naVar2 = this.f2171d;
                if (naVar2 != null) {
                    C0222m.a(background, naVar2, this.f2168a.getDrawableState());
                }
            }
        }
    }

    public void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f2171d == null) {
                this.f2171d = new na();
            }
            na naVar = this.f2171d;
            naVar.f2211a = colorStateList;
            naVar.f2214d = true;
        } else {
            this.f2171d = null;
        }
        a();
    }

    public final boolean a(Drawable drawable) {
        if (this.f2173f == null) {
            this.f2173f = new na();
        }
        na naVar = this.f2173f;
        naVar.a();
        ColorStateList e2 = z.e(this.f2168a);
        if (e2 != null) {
            naVar.f2214d = true;
            naVar.f2211a = e2;
        }
        PorterDuff.Mode f2 = z.f(this.f2168a);
        if (f2 != null) {
            naVar.f2213c = true;
            naVar.f2212b = f2;
        }
        if (!naVar.f2214d && !naVar.f2213c) {
            return false;
        }
        C0222m.a(drawable, naVar, this.f2168a.getDrawableState());
        return true;
    }
}
