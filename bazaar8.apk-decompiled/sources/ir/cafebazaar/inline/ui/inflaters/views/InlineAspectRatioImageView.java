package ir.cafebazaar.inline.ui.inflaters.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;

public class InlineAspectRatioImageView extends AspectRatioImageView {

    /* renamed from: d  reason: collision with root package name */
    public int f15038d = 100;

    public InlineAspectRatioImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec((size * this.f15038d) / 100, View.MeasureSpec.getMode(i2)), i3);
        super.onMeasure(i2, i3);
    }

    public void setWidthPercent(int i2) {
        this.f15038d = i2;
        invalidate();
    }

    public InlineAspectRatioImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InlineAspectRatioImageView(Context context) {
        super(context);
    }
}
