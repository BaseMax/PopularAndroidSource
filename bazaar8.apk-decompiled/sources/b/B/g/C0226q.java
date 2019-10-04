package b.b.g;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import b.b.j;
import b.i.l.i;

/* renamed from: b.b.g.q  reason: case insensitive filesystem */
/* compiled from: AppCompatPopupWindow */
public class C0226q extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f2226a = (Build.VERSION.SDK_INT < 21);

    /* renamed from: b  reason: collision with root package name */
    public boolean f2227b;

    public C0226q(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet, i2, i3);
    }

    public final void a(Context context, AttributeSet attributeSet, int i2, int i3) {
        pa a2 = pa.a(context, attributeSet, j.PopupWindow, i2, i3);
        if (a2.g(j.PopupWindow_overlapAnchor)) {
            a(a2.a(j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(a2.b(j.PopupWindow_android_popupBackground));
        a2.a();
    }

    public void showAsDropDown(View view, int i2, int i3) {
        if (f2226a && this.f2227b) {
            i3 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i3);
    }

    public void update(View view, int i2, int i3, int i4, int i5) {
        if (f2226a && this.f2227b) {
            i3 -= view.getHeight();
        }
        super.update(view, i2, i3, i4, i5);
    }

    public void showAsDropDown(View view, int i2, int i3, int i4) {
        if (f2226a && this.f2227b) {
            i3 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i3, i4);
    }

    public final void a(boolean z) {
        if (f2226a) {
            this.f2227b = z;
        } else {
            i.a((PopupWindow) this, z);
        }
    }
}
