package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.GravityCompat;
import cab.snapp.snappuikit.a;

public class SnappTextButton extends LinearLayout {
    public static final int GRAVITY_BOTTOM = 32;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_CENTER_HORIZONTAL = 2;
    public static final int GRAVITY_CENTER_VERTICAL = 4;
    public static final int GRAVITY_END = 16;
    public static final int GRAVITY_START = 8;
    public static final int GRAVITY_TOP = 64;

    /* renamed from: a  reason: collision with root package name */
    private TextView f1621a;

    public SnappTextButton(Context context) {
        super(context);
        a(context, null);
    }

    public SnappTextButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SnappTextButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public SnappTextButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    public String getText() {
        return this.f1621a.getText().toString();
    }

    public void setText(String str) {
        this.f1621a.setText(str);
    }

    public void setText(int i) {
        this.f1621a.setText(i);
    }

    public void setTextColor(int i) {
        this.f1621a.setTextColor(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f1621a.setTextColor(colorStateList);
    }

    public void setTextSize(int i) {
        this.f1621a.setTextSize(0, (float) i);
    }

    public void setTextFont(Typeface typeface) {
        this.f1621a.setTypeface(typeface);
    }

    private void a(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(a.g.text_button_layout, this, true);
        this.f1621a = (TextView) findViewById(a.f.text_button_layout_textview);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.textButtonOptions, 0, 0);
            if (obtainStyledAttributes.hasValue(a.h.textButtonOptions_text)) {
                setText(obtainStyledAttributes.getString(a.h.textButtonOptions_text));
            } else {
                setText("");
            }
            if (obtainStyledAttributes.hasValue(a.h.textButtonOptions_textColor)) {
                setTextColor(obtainStyledAttributes.getColor(a.h.textButtonOptions_textColor, 0));
            }
            if (obtainStyledAttributes.hasValue(a.h.textButtonOptions_textSize)) {
                setTextSize(obtainStyledAttributes.getDimensionPixelSize(a.h.textButtonOptions_textSize, 16));
            }
            if (obtainStyledAttributes.hasValue(a.h.textButtonOptions_textFont)) {
                setTextFont(ResourcesCompat.getFont(getContext(), obtainStyledAttributes.getResourceId(a.h.textButtonOptions_textFont, a.e.iran_sans_mobile_medium)));
            }
            int i = obtainStyledAttributes.getInt(a.h.textButtonOptions_textGravity, 1);
            if (i == 1 || i % 2 != 0 || i == 6) {
                this.f1621a.setGravity(17);
            } else if (i == 2) {
                this.f1621a.setGravity(1);
            } else if (i == 4) {
                this.f1621a.setGravity(16);
            } else if (i == 8) {
                this.f1621a.setGravity(GravityCompat.START);
            } else if (i == 16) {
                this.f1621a.setGravity(GravityCompat.END);
            } else if (i == 64) {
                this.f1621a.setGravity(48);
            } else if (i == 32) {
                this.f1621a.setGravity(80);
            } else if (i == 96) {
                this.f1621a.setGravity(16);
            } else if (i == 24) {
                this.f1621a.setGravity(1);
            } else {
                int i2 = i - 4;
                if (i2 == 8) {
                    this.f1621a.setGravity(8388627);
                } else if (i2 == 16) {
                    this.f1621a.setGravity(8388629);
                } else {
                    int i3 = i - 2;
                    if (i3 == 64) {
                        this.f1621a.setGravity(49);
                    } else if (i3 == 32) {
                        this.f1621a.setGravity(81);
                    } else {
                        int i4 = i - 64;
                        if (i4 == 8) {
                            this.f1621a.setGravity(8388659);
                        } else if (i4 == 16) {
                            this.f1621a.setGravity(8388661);
                        } else {
                            int i5 = i - 32;
                            if (i5 == 8) {
                                this.f1621a.setGravity(8388691);
                            } else if (i5 == 16) {
                                this.f1621a.setGravity(8388693);
                            }
                        }
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }
}
