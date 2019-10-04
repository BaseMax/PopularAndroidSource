package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import cab.snapp.snappuikit.a;

public class SnappCheckBox extends AppCompatCheckBox {
    public static final int TYPE_MEDIUM = 0;
    public static final int TYPE_SMALL = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f1552a;

    public SnappCheckBox(Context context) {
        super(context);
        a(null);
    }

    public SnappCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public SnappCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    public void setStyle(int i) {
        this.f1552a = i;
    }

    private void a(AttributeSet attributeSet) {
        b(attributeSet);
        a();
    }

    private void b(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.checkboxOptions, 0, 0);
        this.f1552a = obtainStyledAttributes.getInt(a.h.checkboxOptions_cbStyle, 0);
        obtainStyledAttributes.recycle();
    }

    private void a() {
        int i = this.f1552a;
        if (i != 0) {
            if (i == 1) {
                setButtonDrawable(a.d.selector_checkbox_rounded_green_blue_16dp);
            }
            return;
        }
        setButtonDrawable(a.d.selector_checkbox_rounded_green_blue_24dp);
    }
}
