package cab.snapp.snappdialog.custom_views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import cab.snapp.snappdialog.a;

public class PersianNumberPicker extends NumberPicker {
    public PersianNumberPicker(Context context) {
        super(context);
    }

    public PersianNumberPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PersianNumberPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public PersianNumberPicker(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void addView(View view) {
        super.addView(view);
        a(view);
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        a(view);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        a(view);
    }

    private void a(View view) {
        if (getContext() != null && (view instanceof TextView)) {
            ((TextView) view).setTypeface(ResourcesCompat.getFont(getContext(), a.d.iran_sans_mobile_medium));
        }
    }
}
