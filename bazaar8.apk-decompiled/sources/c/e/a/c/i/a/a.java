package c.e.a.c.i.a;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.cardview.widget.CardView;
import c.e.a.c.i.d;
import c.e.a.c.i.f;

/* compiled from: CircularRevealCardView */
public class a extends CardView implements f {

    /* renamed from: j  reason: collision with root package name */
    public final d f11319j;

    public void a() {
        this.f11319j.a();
        throw null;
    }

    public void b() {
        this.f11319j.b();
        throw null;
    }

    public void draw(Canvas canvas) {
        d dVar = this.f11319j;
        if (dVar == null) {
            super.draw(canvas);
        } else {
            dVar.a(canvas);
            throw null;
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        this.f11319j.c();
        throw null;
    }

    public int getCircularRevealScrimColor() {
        this.f11319j.d();
        throw null;
    }

    public f.d getRevealInfo() {
        this.f11319j.e();
        throw null;
    }

    public boolean isOpaque() {
        d dVar = this.f11319j;
        if (dVar == null) {
            return super.isOpaque();
        }
        dVar.f();
        throw null;
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f11319j.a(drawable);
        throw null;
    }

    public void setCircularRevealScrimColor(int i2) {
        this.f11319j.a(i2);
        throw null;
    }

    public void setRevealInfo(f.d dVar) {
        this.f11319j.a(dVar);
        throw null;
    }
}
