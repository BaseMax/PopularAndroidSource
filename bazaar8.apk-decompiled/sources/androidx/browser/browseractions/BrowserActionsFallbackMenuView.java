package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import b.d.C0241a;

public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    public final int f476a = getResources().getDimensionPixelOffset(C0241a.browser_actions_context_menu_min_padding);

    /* renamed from: b  reason: collision with root package name */
    public final int f477b = getResources().getDimensionPixelOffset(C0241a.browser_actions_context_menu_max_width);

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f476a * 2), this.f477b), 1073741824), i3);
    }
}
