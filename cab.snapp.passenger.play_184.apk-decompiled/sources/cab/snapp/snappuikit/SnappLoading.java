package cab.snapp.snappuikit;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import cab.snapp.snappuikit.a;
import java.util.Iterator;

public class SnappLoading extends FrameLayout {
    public static final int SIZE_LARGE = 103;
    public static final int SIZE_MEDIUM = 102;
    public static final int SIZE_SMALL = 101;
    public static final int SIZE_TINY = 100;
    public static final int THEME_ACCENT = 2;
    public static final int THEME_BLUE = 4;
    public static final int THEME_ERROR = 3;
    public static final int THEME_PRIMARY = 0;
    public static final int THEME_SECONDARY = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f1600a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f1601b = 101;
    private boolean c = true;
    private int d = 300;
    private AnimatorSet e = new AnimatorSet();
    private boolean f;
    /* access modifiers changed from: private */
    public View g;
    /* access modifiers changed from: private */
    public View h;
    /* access modifiers changed from: private */
    public View i;

    public SnappLoading(Context context) {
        super(context);
        a(context, null);
    }

    public SnappLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SnappLoading(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    public SnappLoading(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet);
    }

    public boolean isStartAnimation() {
        return this.c;
    }

    public void setLoadingTheme(int i2) {
        this.f1600a = i2;
    }

    public void setLoadingSize(int i2) {
        this.f1601b = i2;
    }

    public void setStartAnimation(boolean z) {
        this.c = z;
    }

    public void setAnimationDuration(int i2) {
        this.d = i2;
    }

    private void a(Context context, AttributeSet attributeSet) {
        int i2;
        a(attributeSet);
        switch (this.f1601b) {
            case 100:
                i2 = a.g.snapp_loading_layout_tiny;
                break;
            case 101:
                i2 = a.g.snapp_loading_layout_small;
                break;
            case 102:
                i2 = a.g.snapp_loading_layout_medium;
                break;
            case 103:
                i2 = a.g.snapp_loading_layout_large;
                break;
            default:
                i2 = 0;
                break;
        }
        LayoutInflater.from(context).inflate(i2, this, true);
        a();
        b();
        if (this.c && getVisibility() == 0) {
            startAnimate();
        }
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.snappLoadingOptions, 0, 0);
        this.f1600a = obtainStyledAttributes.getInt(a.h.snappLoadingOptions_snappLoadingTheme, 0);
        this.f1601b = obtainStyledAttributes.getInt(a.h.snappLoadingOptions_snappLoadingSize, 101);
        this.c = obtainStyledAttributes.getBoolean(a.h.snappLoadingOptions_snappLoadingStartAnimation, true);
        this.d = obtainStyledAttributes.getInt(a.h.snappLoadingOptions_snappLoadingAnimationDuration, 300);
        obtainStyledAttributes.recycle();
    }

    private void a() {
        this.g = findViewById(a.f.snapp_loading_first_view);
        this.h = findViewById(a.f.snapp_loading_second_view);
        this.i = findViewById(a.f.snapp_loading_third_view);
    }

    private void b() {
        int i2;
        int i3 = this.f1600a;
        if (i3 == 0) {
            i2 = a.d.shape_circle_dark;
        } else if (i3 == 1) {
            i2 = a.d.shape_circle_pure_white;
        } else if (i3 == 2) {
            i2 = a.d.shape_circle_green_blue;
        } else if (i3 != 3) {
            i2 = i3 != 4 ? 0 : a.d.shape_circle_blue;
        } else {
            i2 = a.d.shape_circle_cherry;
        }
        this.g.setBackgroundResource(i2);
        this.h.setBackgroundResource(i2);
        this.i.setBackgroundResource(i2);
    }

    public void startAnimate() {
        this.e.cancel();
        this.e.removeAllListeners();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.5f, 1.0f});
        ofFloat.setDuration((long) this.d);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatMode(2);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SnappLoading.this.h.setScaleY(floatValue);
                SnappLoading.this.h.setScaleX(floatValue);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{1.0f, 0.5f});
        ofFloat2.setDuration((long) this.d);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.setRepeatMode(2);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SnappLoading.this.g.setScaleY(floatValue);
                SnappLoading.this.g.setScaleX(floatValue);
                SnappLoading.this.i.setScaleY(floatValue);
                SnappLoading.this.i.setScaleX(floatValue);
            }
        });
        this.e.playTogether(new Animator[]{ofFloat, ofFloat2});
        this.e.start();
        this.f = true;
        this.c = true;
    }

    public void stopAnimate() {
        this.f = false;
        this.c = false;
        this.e.cancel();
        this.e.removeAllListeners();
        if (this.e.getChildAnimations() != null && !this.e.getChildAnimations().isEmpty()) {
            Iterator<Animator> it = this.e.getChildAnimations().iterator();
            while (it.hasNext()) {
                Animator next = it.next();
                if (next != null) {
                    next.removeAllListeners();
                    next.cancel();
                }
            }
        }
        this.g.setScaleX(1.0f);
        this.g.setScaleY(1.0f);
        this.h.setScaleX(1.0f);
        this.h.setScaleY(1.0f);
        this.i.setScaleX(1.0f);
        this.i.setScaleY(1.0f);
    }

    public boolean isAnimating() {
        return this.f;
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (i2 == 0) {
            if (this.c) {
                startAnimate();
            }
        } else if (this.c) {
            stopAnimate();
            this.c = true;
        } else {
            stopAnimate();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        if (this.c) {
            stopAnimate();
            this.c = true;
        } else {
            stopAnimate();
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.c && getVisibility() == 0) {
            startAnimate();
        }
    }
}
