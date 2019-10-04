package c.e.a.c.i;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import c.e.a.c.i.f;

/* compiled from: CircularRevealFrameLayout */
public class c extends FrameLayout implements f {

    /* renamed from: a  reason: collision with root package name */
    public final d f11320a;

    public void a() {
        this.f11320a.a();
        throw null;
    }

    public void b() {
        this.f11320a.b();
        throw null;
    }

    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
        d dVar = this.f11320a;
        if (dVar == null) {
            super.draw(canvas);
        } else {
            dVar.a(canvas);
            throw null;
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        this.f11320a.c();
        throw null;
    }

    public int getCircularRevealScrimColor() {
        this.f11320a.d();
        throw null;
    }

    public f.d getRevealInfo() {
        this.f11320a.e();
        throw null;
    }

    public boolean isOpaque() {
        d dVar = this.f11320a;
        if (dVar == null) {
            return super.isOpaque();
        }
        dVar.f();
        throw null;
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f11320a.a(drawable);
        throw null;
    }

    public void setCircularRevealScrimColor(int i2) {
        this.f11320a.a(i2);
        throw null;
    }

    public void setRevealInfo(f.d dVar) {
        this.f11320a.a(dVar);
        throw null;
    }
}
