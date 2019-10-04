package c.e.a.c.l;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* compiled from: VisibilityAwareImageButton */
public class r extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    public int f11407a;

    public r(Context context) {
        this(context, null);
    }

    public final void a(int i2, boolean z) {
        super.setVisibility(i2);
        if (z) {
            this.f11407a = i2;
        }
    }

    public final int getUserSetVisibility() {
        return this.f11407a;
    }

    public void setVisibility(int i2) {
        a(i2, true);
    }

    public r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public r(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11407a = getVisibility();
    }
}
