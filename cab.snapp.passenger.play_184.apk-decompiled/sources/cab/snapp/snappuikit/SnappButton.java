package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.view.GravityCompat;
import cab.snapp.snappuikit.a;

public class SnappButton extends CardView {
    public static final int GRAVITY_CENTER = 100;
    public static final int GRAVITY_END = 102;
    public static final int GRAVITY_START = 101;
    public static final int NO_GRAVITY = 150;
    public static final int THEME_ACCENT = 2;
    public static final int THEME_ERROR = 3;
    public static final int THEME_NEUTRAL = 4;
    public static final int THEME_PRIMARY = 0;
    public static final int THEME_SECONDARY = 1;
    public static final int THEME_SECONDARY_NO_BORDER = 5;

    /* renamed from: a  reason: collision with root package name */
    private int f1550a;

    /* renamed from: b  reason: collision with root package name */
    private int f1551b;
    private String c;
    private int d;
    private boolean e;
    private TextView f;
    private FrameLayout g;
    private LinearLayout h;
    private ImageView i;
    private ImageView j;
    private boolean k;
    private Drawable l;
    private Drawable m;
    private Drawable n;
    private boolean o = false;
    private int p = 100;
    private int q = 150;

    public SnappButton(Context context) {
        super(context);
        a(context, null);
    }

    public SnappButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SnappButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    public String getText() {
        return this.c;
    }

    public int getTextColor() {
        return this.f1550a;
    }

    public float getTextAlpha() {
        return this.f.getAlpha();
    }

    public float getIconEndAlpha() {
        return this.i.getAlpha();
    }

    public float getIconStartAlpha() {
        return this.j.getAlpha();
    }

    public void setHasShadow(boolean z) {
        this.k = z;
        setUseCompatPadding(z);
    }

    public void setText(String str) {
        this.c = str;
        this.f.setText(str);
    }

    public void setUiTheme(int i2) {
        StateListDrawable stateListDrawable;
        this.d = i2;
        if (i2 == 0) {
            int i3 = this.f1550a;
            if (i3 == 0) {
                i3 = getResources().getColor(a.b.pure_white);
            }
            this.f1550a = i3;
            if (this.e) {
                stateListDrawable = a(a.d.shape_button_rounded_dark, a.d.shape_button_rounded_dark_focused, a.d.shape_button_rounded_dark_pressed, a.d.shape_button_rounded_white_three);
            } else {
                stateListDrawable = a(a.d.shape_button_dark, a.d.shape_button_dark_focused, a.d.shape_button_dark_pressed, a.d.shape_button_white_three);
            }
        } else if (i2 == 1) {
            if (this.f1550a != 0) {
                this.o = true;
            }
            if (this.e) {
                int i4 = a.d.shape_button_rounded_pure_white;
                int i5 = a.d.shape_button_rounded_dark;
                stateListDrawable = a(i4, i5, i5, a.d.shape_button_rounded_white_three);
            } else {
                int i6 = a.d.shape_button_pure_white;
                int i7 = a.d.shape_button_dark;
                stateListDrawable = a(i6, i7, i7, a.d.shape_button_white_three);
            }
        } else if (i2 == 2) {
            int i8 = this.f1550a;
            if (i8 == 0) {
                i8 = getResources().getColor(a.b.pure_white);
            }
            this.f1550a = i8;
            if (this.e) {
                stateListDrawable = a(a.d.shape_button_rounded_green_blue, a.d.shape_button_rounded_green_blue_focused, a.d.shape_button_rounded_green_blue_pressed, a.d.shape_button_rounded_white_three);
            } else {
                stateListDrawable = a(a.d.shape_button_green_blue, a.d.shape_button_green_blue_focused, a.d.shape_button_green_blue_pressed, a.d.shape_button_white_three);
            }
        } else if (i2 == 3) {
            int i9 = this.f1550a;
            if (i9 == 0) {
                i9 = getResources().getColor(a.b.pure_white);
            }
            this.f1550a = i9;
            if (this.e) {
                stateListDrawable = a(a.d.shape_button_rounded_cherry, a.d.shape_button_rounded_cherry_focused, a.d.shape_button_rounded_cherry_pressed, a.d.shape_button_rounded_white_three);
            } else {
                stateListDrawable = a(a.d.shape_button_cherry, a.d.shape_button_cherry_focused, a.d.shape_button_cherry_pressed, a.d.shape_button_white_three);
            }
        } else if (i2 == 4) {
            int i10 = this.f1550a;
            if (i10 == 0) {
                i10 = getResources().getColor(a.b.color_primary);
            }
            this.f1550a = i10;
            if (this.e) {
                stateListDrawable = a(a.d.shape_button_rounded_very_light_pink, a.d.shape_button_rounded_very_light_pink_focused, a.d.shape_button_rounded_very_light_pink_pressed, a.d.shape_button_rounded_white_three);
            } else {
                stateListDrawable = a(a.d.shape_button_very_light_pink, a.d.shape_button_very_light_pink_focused, a.d.shape_button_very_light_pink_pressed, a.d.shape_button_white_three);
            }
        } else if (i2 != 5) {
            stateListDrawable = null;
        } else {
            if (this.f1550a != 0) {
                this.o = true;
            }
            if (this.e) {
                int i11 = a.d.shape_button_rounded_no_border_pure_white;
                int i12 = a.d.shape_button_rounded_dark;
                stateListDrawable = a(i11, i12, i12, a.d.shape_button_rounded_white_three);
            } else {
                int i13 = a.d.shape_button_no_border_pure_white;
                int i14 = a.d.shape_button_dark;
                stateListDrawable = a(i13, i14, i14, a.d.shape_button_white_three);
            }
        }
        this.g.setBackground(stateListDrawable);
        if (this.e) {
            setBackgroundResource(a.d.shape_cardview_rounded);
        } else {
            setBackground(this.l);
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.g.setEnabled(z);
        int i2 = this.d;
        if (!(i2 == 1 || i2 == 5)) {
            if (z) {
                this.f1550a = 0;
            } else {
                this.f1550a = getResources().getColor(a.b.color_primary);
            }
        }
        b();
    }

    public void setTextColor(int i2) {
        this.f1550a = i2;
        int i3 = this.d;
        if ((i3 == 1 || i3 == 5) && !this.o) {
            this.f.setTextColor(getResources().getColorStateList(a.b.selector_text_primary_to_pure_white));
        } else {
            this.f.setTextColor(i2);
        }
    }

    public void setTextAlpha(float f2) {
        this.f.setAlpha(f2);
    }

    public void setIconEndAlpha(float f2) {
        this.i.setAlpha(f2);
    }

    public void setIconEnd(Drawable drawable) {
        this.m = drawable;
        if (drawable == null) {
            this.i.setVisibility(8);
            this.i.setImageDrawable(null);
            return;
        }
        this.i.setVisibility(0);
        this.i.setImageDrawable(drawable);
    }

    public void setTextSize(int i2) {
        this.f1551b = i2;
        this.f.setTextSize(0, (float) i2);
    }

    public void setRounded(boolean z) {
        this.e = z;
        setUiTheme(this.d);
    }

    public void setIconStartAlpha(float f2) {
        this.j.setAlpha(f2);
    }

    public void setIconStart(Drawable drawable) {
        this.n = drawable;
        if (drawable == null) {
            this.j.setVisibility(8);
            this.j.setImageDrawable(null);
            return;
        }
        this.j.setVisibility(0);
        this.j.setImageDrawable(drawable);
    }

    public void setGravity(int i2) {
        this.q = i2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.h.getLayoutParams();
        switch (i2) {
            case 100:
                layoutParams.gravity = 17;
                layoutParams.width = -2;
                this.h.setLayoutParams(layoutParams);
                return;
            case 101:
                layoutParams.gravity = GravityCompat.START;
                layoutParams.width = -2;
                this.h.setLayoutParams(layoutParams);
                return;
            case 102:
                layoutParams.gravity = GravityCompat.END;
                layoutParams.width = -2;
                this.h.setLayoutParams(layoutParams);
                return;
            default:
                layoutParams.gravity = 17;
                layoutParams.width = -1;
                this.h.setLayoutParams(layoutParams);
                return;
        }
    }

    public void setTextGravity(int i2) {
        this.p = i2;
        if (i2 == 101) {
            this.f.setGravity(8388627);
        } else if (i2 != 102) {
            this.f.setGravity(17);
        } else {
            this.f.setGravity(8388629);
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(a.g.button_layout, this, true);
        this.l = getBackground();
        a(attributeSet);
        a();
        b();
        if (Build.VERSION.SDK_INT < 21) {
            setPreventCornerOverlap(false);
        }
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.buttonOptions, 0, 0);
        if (obtainStyledAttributes.hasValue(a.h.buttonOptions_btnText)) {
            this.c = obtainStyledAttributes.getString(a.h.buttonOptions_btnText);
        } else {
            this.c = "Button";
        }
        this.f1550a = obtainStyledAttributes.getColor(a.h.buttonOptions_btnTextColor, 0);
        this.f1551b = (int) obtainStyledAttributes.getDimension(a.h.buttonOptions_btnTextSize, 10.0f);
        this.d = obtainStyledAttributes.getInt(a.h.buttonOptions_uiTheme, 0);
        this.e = obtainStyledAttributes.getBoolean(a.h.buttonOptions_btnIsRounded, false);
        this.k = obtainStyledAttributes.getBoolean(a.h.buttonOptions_btnHasShadow, true);
        this.m = obtainStyledAttributes.getDrawable(a.h.buttonOptions_btnIconEnd);
        this.n = obtainStyledAttributes.getDrawable(a.h.buttonOptions_btnIconStart);
        this.p = obtainStyledAttributes.getInt(a.h.buttonOptions_btnTextGravity, 100);
        this.q = obtainStyledAttributes.getInt(a.h.buttonOptions_btnGravity, 150);
        obtainStyledAttributes.recycle();
    }

    private void a() {
        this.f = (TextView) findViewById(a.f.button_layout_textview);
        this.g = (FrameLayout) findViewById(a.f.button_layout_frame);
        this.h = (LinearLayout) findViewById(a.f.button_layout_inner_frame);
        this.i = (ImageView) findViewById(a.f.button_layout_imageView_end);
        this.j = (ImageView) findViewById(a.f.button_layout_imageView_start);
    }

    private void b() {
        setRadius(0.0f);
        setFocusable(true);
        setClickable(true);
        setText(this.c);
        setTextSize(this.f1551b);
        setHasShadow(this.k);
        setUiTheme(this.d);
        setTextColor(this.f1550a);
        setIconEnd(this.m);
        setIconStart(this.n);
        setGravity(this.q);
        setTextGravity(this.p);
    }

    private StateListDrawable a(int i2, int i3, int i4, int i5) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, getResources().getDrawable(i5));
        stateListDrawable.addState(new int[]{16842919}, getResources().getDrawable(i4));
        stateListDrawable.addState(new int[]{16842908}, getResources().getDrawable(i3));
        stateListDrawable.addState(new int[0], getResources().getDrawable(i2));
        return stateListDrawable;
    }
}
