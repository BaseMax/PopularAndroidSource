package b.e.a;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.cardview.widget.CardView;

/* compiled from: CardView */
class a implements g {

    /* renamed from: a  reason: collision with root package name */
    public Drawable f2300a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ CardView f2301b;

    public a(CardView cardView) {
        this.f2301b = cardView;
    }

    public void a(Drawable drawable) {
        this.f2300a = drawable;
        this.f2301b.setBackgroundDrawable(drawable);
    }

    public boolean b() {
        return this.f2301b.getUseCompatPadding();
    }

    public Drawable c() {
        return this.f2300a;
    }

    public View d() {
        return this.f2301b;
    }

    public boolean a() {
        return this.f2301b.getPreventCornerOverlap();
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f2301b.f485h.set(i2, i3, i4, i5);
        CardView cardView = this.f2301b;
        Rect rect = cardView.f484g;
        a.super.setPadding(i2 + rect.left, i3 + rect.top, i4 + rect.right, i5 + rect.bottom);
    }

    public void a(int i2, int i3) {
        CardView cardView = this.f2301b;
        if (i2 > cardView.f482e) {
            a.super.setMinimumWidth(i2);
        }
        CardView cardView2 = this.f2301b;
        if (i3 > cardView2.f483f) {
            a.super.setMinimumHeight(i3);
        }
    }
}
