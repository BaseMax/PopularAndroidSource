package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import cab.snapp.snappuikit.a;

public class SnappCircleProgressBar extends FrameLayout {
    public static final int SIZE_LARGE = 103;
    public static final int SIZE_MEDIUM = 102;
    public static final int SIZE_SMALL = 101;
    public static final int SIZE_TINY = 100;
    public static final int THEME_ACCENT = 2;
    public static final int THEME_ERROR = 3;
    public static final int THEME_PRIMARY = 0;
    public static final int THEME_SECONDARY = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f1553a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1554b = true;
    private int c;
    private int d;
    private int e = 100;
    private int f = 101;
    private ProgressBar g;

    public SnappCircleProgressBar(Context context) {
        super(context);
        a(context, null);
    }

    public SnappCircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SnappCircleProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public SnappCircleProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    public boolean isIndeterminate() {
        return this.f1554b;
    }

    public int getProgress() {
        return this.c;
    }

    public int getSecondaryProgress() {
        return this.d;
    }

    public int getMaxProgress() {
        return this.e;
    }

    public void setProgressTheme(int i) {
        this.f1553a = i;
    }

    public void setIndeterminate(boolean z) {
        this.f1554b = z;
        this.g.setIndeterminate(z);
    }

    public void setProgress(int i) {
        this.c = i;
        this.g.setProgress(i);
        this.g.invalidate();
    }

    public void setSecondaryProgress(int i) {
        this.d = i;
        this.g.setSecondaryProgress(i);
        this.g.invalidate();
    }

    public void setMaxProgress(int i) {
        this.e = i;
        this.g.setMax(i);
        this.g.invalidate();
    }

    public void setProgressSize(int i) {
        this.f = i;
    }

    private void a(Context context, AttributeSet attributeSet) {
        int i;
        a(attributeSet);
        switch (this.f) {
            case 100:
                i = a.g.circle_progressbar_layout_tiny;
                break;
            case 101:
                i = a.g.circle_progressbar_layout_small;
                break;
            case 102:
                i = a.g.circle_progressbar_layout_medium;
                break;
            case 103:
                i = a.g.circle_progressbar_layout_large;
                break;
            default:
                i = 0;
                break;
        }
        LayoutInflater.from(context).inflate(i, this, true);
        a();
        b();
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.circleProgressBarOptions, 0, 0);
        this.f1553a = obtainStyledAttributes.getInt(a.h.circleProgressBarOptions_cpbTheme, 0);
        this.f1554b = obtainStyledAttributes.getBoolean(a.h.circleProgressBarOptions_cpbIndeterminate, true);
        this.c = obtainStyledAttributes.getInt(a.h.circleProgressBarOptions_cpbProgress, 0);
        this.d = obtainStyledAttributes.getInt(a.h.circleProgressBarOptions_cpbSecondaryProgress, 0);
        this.e = obtainStyledAttributes.getInt(a.h.circleProgressBarOptions_cpbMaxProgress, 100);
        this.f = obtainStyledAttributes.getInt(a.h.circleProgressBarOptions_cpbSize, 101);
        obtainStyledAttributes.recycle();
    }

    private void a() {
        this.g = (ProgressBar) findViewById(a.f.circle_progressbar_layout_progress);
    }

    private void b() {
        Drawable drawable;
        ColorStateList colorStateList;
        if (this.g.getIndeterminateDrawable() != null) {
            drawable = this.g.getIndeterminateDrawable().mutate();
        } else {
            drawable = this.g.getProgressDrawable() != null ? this.g.getProgressDrawable().mutate() : null;
        }
        ColorStateList valueOf = ColorStateList.valueOf(getContext().getResources().getColor(a.b.silver));
        int i = this.f1553a;
        if (i == 1) {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.pure_white));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.pure_white), PorterDuff.Mode.SRC_IN);
            }
        } else if (i == 2) {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.color_accent));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.color_accent), PorterDuff.Mode.SRC_IN);
            }
        } else if (i != 3) {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.color_primary));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.color_primary), PorterDuff.Mode.SRC_IN);
            }
        } else {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.cherry));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.cherry), PorterDuff.Mode.SRC_IN);
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.g.setProgressTintList(colorStateList);
            this.g.setSecondaryProgressTintList(valueOf);
        } else if (isIndeterminate()) {
            this.g.setIndeterminateDrawable(drawable);
        } else {
            this.g.setProgressDrawable(drawable);
        }
        this.g.setIndeterminate(this.f1554b);
        this.g.setProgress(this.c);
        this.g.setSecondaryProgress(this.d);
        this.g.setMax(this.e);
    }
}
