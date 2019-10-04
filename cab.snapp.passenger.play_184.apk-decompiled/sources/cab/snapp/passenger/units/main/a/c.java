package cab.snapp.passenger.units.main.a;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

public final class c extends BottomSheetBehavior.a {

    /* renamed from: a  reason: collision with root package name */
    private a f893a;

    /* renamed from: b  reason: collision with root package name */
    private float f894b;
    private View c;
    private View d;
    private View e;
    private boolean f = false;
    private float g;
    private float h;
    private float i;

    public c(float f2, float f3, float f4, float f5, View view, View view2, a aVar) {
        this.f893a = aVar;
        this.f894b = f5;
        this.c = view;
        this.e = view2;
        this.i = Math.abs((f2 - f3) - f4);
        this.g = this.i / 2.0f;
    }

    public final void onStateChanged(View view, int i2) {
        if (i2 == 3) {
            this.f893a.onExpanded();
        } else if (i2 != 4) {
            if (i2 == 5) {
                this.f893a.onHidden();
            } else if (i2 == 6) {
                this.f893a.onHalfExpanded();
            }
        } else {
            this.f893a.onCollapsed();
        }
    }

    public final void onSlide(View view, float f2) {
        float f3 = this.f894b;
        float f4 = f2 * f3;
        this.c.setScaleX((f3 + 1.0f) - f4);
        this.c.setScaleY((this.f894b + 1.0f) - f4);
        View view2 = this.d;
        if (view2 != null) {
            view2.setScaleX((this.f894b + 1.0f) - f4);
            this.d.setScaleY((this.f894b + 1.0f) - f4);
        }
        float f5 = f2 * this.g;
        View view3 = this.e;
        view3.setY(view3.getY() + (this.h - f5));
        this.h = f5;
    }

    public final boolean shouldMoveHeader() {
        return this.f;
    }

    public final void setShouldMoveHeader(boolean z) {
        this.f = z;
    }

    public final void setHeaderFrame(View view) {
        this.d = view;
    }
}
