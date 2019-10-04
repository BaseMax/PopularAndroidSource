package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import cab.snapp.snappuikit.a;

public class SnappRadioButton extends AppCompatRadioButton {
    public static final int THEME_ACCENT = 100;
    public static final int THEME_BLUE = 101;
    public static final int TYPE_MEDIUM = 0;
    public static final int TYPE_SMALL = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f1617a;

    /* renamed from: b  reason: collision with root package name */
    private int f1618b;

    public SnappRadioButton(Context context) {
        super(context);
        a(null);
    }

    public SnappRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public SnappRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    public void setStyle(int i) {
        this.f1618b = i;
    }

    public void setTheme(int i) {
        this.f1617a = i;
    }

    private void a(AttributeSet attributeSet) {
        b(attributeSet);
        a();
    }

    private void b(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.radioButtonOptions, 0, 0);
        this.f1618b = obtainStyledAttributes.getInt(a.h.radioButtonOptions_rbStyle, 0);
        this.f1617a = obtainStyledAttributes.getInt(a.h.radioButtonOptions_rbTheme, 100);
        obtainStyledAttributes.recycle();
    }

    private void a() {
        int i = this.f1618b;
        if (i == 0) {
            int i2 = this.f1617a;
            if (i2 == 100) {
                setButtonDrawable(a.d.selector_radio_button_rounded_green_blue_24dp);
            } else if (i2 == 101) {
                setButtonDrawable(a.d.selector_radio_button_rounded_blue_24dp);
            }
        } else if (i == 1) {
            int i3 = this.f1617a;
            if (i3 == 100) {
                setButtonDrawable(a.d.selector_radio_button_rounded_green_blue_16dp);
            } else if (i3 == 101) {
                setButtonDrawable(a.d.selector_radio_button_rounded_blue_16dp);
            }
        }
    }
}
