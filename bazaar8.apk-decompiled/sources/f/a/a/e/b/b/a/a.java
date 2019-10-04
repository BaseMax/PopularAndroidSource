package f.a.a.e.b.b.a;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: MaxHeightFrameLayout */
public class a extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final int f14132a = 240;

    /* renamed from: b  reason: collision with root package name */
    public int f14133b = 240;

    public a(Context context) {
        super(context);
    }

    public int getMaxHeight() {
        return this.f14133b;
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(this.f14133b, Integer.MIN_VALUE));
    }

    public void setMaxHeight(int i2) {
        this.f14133b = i2;
    }
}
