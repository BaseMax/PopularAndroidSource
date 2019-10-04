package ir.cafebazaar.inline.ui.inflaters.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;

public class AspectRatioViewPager extends ViewPager {
    public float ma = 1.0f;

    public AspectRatioViewPager(Context context) {
        super(context);
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec((int) Math.ceil((double) (((float) View.MeasureSpec.getSize(i2)) / this.ma)), 1073741824));
    }

    public void setAspectRatio(float f2) {
        this.ma = f2;
    }

    public AspectRatioViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
