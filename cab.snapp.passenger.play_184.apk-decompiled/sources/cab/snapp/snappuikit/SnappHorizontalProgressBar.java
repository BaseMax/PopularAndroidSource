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

public class SnappHorizontalProgressBar extends FrameLayout {
    public static final int THEME_ACCENT = 2;
    public static final int THEME_BLUE = 4;
    public static final int THEME_ERROR = 3;
    public static final int THEME_PRIMARY = 0;
    public static final int THEME_SECONDARY = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f1595a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1596b = true;
    private int c;
    private int d;
    private int e = 100;
    private ProgressBar f;

    public SnappHorizontalProgressBar(Context context) {
        super(context);
        commonConstructor(context, null);
    }

    public SnappHorizontalProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        commonConstructor(context, attributeSet);
    }

    public SnappHorizontalProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        commonConstructor(context, attributeSet);
    }

    public SnappHorizontalProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        commonConstructor(context, attributeSet);
    }

    public boolean isIndeterminate() {
        return this.f1596b;
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
        this.f1595a = i;
    }

    public void setIndeterminate(boolean z) {
        this.f1596b = z;
        this.f.setIndeterminate(z);
    }

    public void setProgress(int i) {
        this.c = i;
        this.f.setProgress(i);
        this.f.invalidate();
    }

    public void setSecondaryProgress(int i) {
        this.d = i;
        this.f.setSecondaryProgress(i);
        this.f.invalidate();
    }

    public void setMaxProgress(int i) {
        this.e = i;
        this.f.setMax(i);
        this.f.invalidate();
    }

    public void commonConstructor(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        ColorStateList colorStateList;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.horizontalProgressBarOptions, 0, 0);
        this.f1595a = obtainStyledAttributes.getInt(a.h.horizontalProgressBarOptions_hpbTheme, 0);
        this.f1596b = obtainStyledAttributes.getBoolean(a.h.horizontalProgressBarOptions_hpbIndeterminate, true);
        this.c = obtainStyledAttributes.getInt(a.h.horizontalProgressBarOptions_hpbProgress, 0);
        this.d = obtainStyledAttributes.getInt(a.h.horizontalProgressBarOptions_hpbSecondaryProgress, 0);
        this.e = obtainStyledAttributes.getInt(a.h.horizontalProgressBarOptions_hpbMaxProgress, 100);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(a.g.horizontal_progressbar_layout, this, true);
        this.f = (ProgressBar) findViewById(a.f.horizontal_progressbar_layout_progress);
        if (this.f.getIndeterminateDrawable() != null) {
            drawable = this.f.getIndeterminateDrawable().mutate();
        } else {
            drawable = this.f.getProgressDrawable() != null ? this.f.getProgressDrawable().mutate() : null;
        }
        ColorStateList valueOf = ColorStateList.valueOf(getContext().getResources().getColor(a.b.silver));
        int i = this.f1595a;
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
        } else if (i == 3) {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.cherry));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.cherry), PorterDuff.Mode.SRC_IN);
            }
        } else if (i != 4) {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.color_primary));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.color_primary), PorterDuff.Mode.SRC_IN);
            }
        } else {
            colorStateList = ColorStateList.valueOf(getContext().getResources().getColor(a.b.blue));
            if (drawable != null) {
                drawable.setColorFilter(getContext().getResources().getColor(a.b.blue), PorterDuff.Mode.SRC_IN);
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f.setProgressTintList(colorStateList);
            this.f.setSecondaryProgressTintList(valueOf);
        } else if (isIndeterminate()) {
            this.f.setIndeterminateDrawable(drawable);
        } else {
            this.f.setProgressDrawable(drawable);
        }
        this.f.setIndeterminate(this.f1596b);
        this.f.setProgress(this.c);
        this.f.setSecondaryProgress(this.d);
        this.f.setMax(this.e);
    }
}
