package c.e.a.c.b;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.i.e.a;
import b.i.k.C0260c;
import b.i.k.M;
import b.i.k.z;
import java.util.List;

/* compiled from: HeaderScrollingViewBehavior */
public abstract class g extends h<View> {

    /* renamed from: d  reason: collision with root package name */
    public final Rect f11222d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    public final Rect f11223e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    public int f11224f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f11225g;

    public g() {
    }

    public static int b(int i2) {
        if (i2 == 0) {
            return 8388659;
        }
        return i2;
    }

    public abstract View a(List<View> list);

    public void a(CoordinatorLayout coordinatorLayout, View view, int i2) {
        View a2 = a(coordinatorLayout.b(view));
        if (a2 != null) {
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) view.getLayoutParams();
            Rect rect = this.f11222d;
            rect.set(coordinatorLayout.getPaddingLeft() + eVar.leftMargin, a2.getBottom() + eVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - eVar.rightMargin, ((coordinatorLayout.getHeight() + a2.getBottom()) - coordinatorLayout.getPaddingBottom()) - eVar.bottomMargin);
            M lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && z.j(coordinatorLayout) && !z.j(view)) {
                rect.left += lastWindowInsets.c();
                rect.right -= lastWindowInsets.d();
            }
            Rect rect2 = this.f11223e;
            C0260c.a(b(eVar.f569c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
            int a3 = a(a2);
            view.layout(rect2.left, rect2.top - a3, rect2.right, rect2.bottom - a3);
            this.f11224f = rect2.top - a2.getBottom();
            return;
        }
        super.a(coordinatorLayout, view, i2);
        this.f11224f = 0;
    }

    public abstract float b(View view);

    public final int b() {
        return this.f11225g;
    }

    public int c(View view) {
        return view.getMeasuredHeight();
    }

    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int i5) {
        int i6 = view.getLayoutParams().height;
        if (i6 == -1 || i6 == -2) {
            View a2 = a(coordinatorLayout.b(view));
            if (a2 != null) {
                if (!z.j(a2) || z.j(view)) {
                    View view2 = view;
                } else {
                    View view3 = view;
                    z.a(view, true);
                    if (z.j(view)) {
                        view.requestLayout();
                        return true;
                    }
                }
                int size = View.MeasureSpec.getSize(i4);
                if (size == 0) {
                    size = coordinatorLayout.getHeight();
                }
                coordinatorLayout.a(view, i2, i3, View.MeasureSpec.makeMeasureSpec((size - a2.getMeasuredHeight()) + c(a2), i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i5);
                return true;
            }
        }
        return false;
    }

    public final int c() {
        return this.f11224f;
    }

    public final void c(int i2) {
        this.f11225g = i2;
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final int a(View view) {
        if (this.f11225g == 0) {
            return 0;
        }
        float b2 = b(view);
        int i2 = this.f11225g;
        return a.a((int) (b2 * ((float) i2)), 0, i2);
    }
}
