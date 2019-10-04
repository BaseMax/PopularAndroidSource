package cab.snapp.snappdialog.widgets;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import cab.snapp.snappdialog.a;

public class SnappLoading extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1514a = true;

    /* renamed from: b  reason: collision with root package name */
    private int f1515b = 300;
    private AnimatorSet c = new AnimatorSet();
    private boolean d;
    /* access modifiers changed from: private */
    public View e;
    /* access modifiers changed from: private */
    public View f;
    /* access modifiers changed from: private */
    public View g;

    public SnappLoading(Context context) {
        super(context);
        a(context);
    }

    public SnappLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public SnappLoading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    public SnappLoading(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context);
    }

    public boolean isStartAnimation() {
        return this.f1514a;
    }

    public void setStartAnimation(boolean z) {
        this.f1514a = z;
    }

    public void setAnimationDuration(int i) {
        this.f1515b = i;
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(a.f.snapp_loading_layout, this, true);
        a();
        b();
        startAnimate();
    }

    private void a() {
        this.e = findViewById(a.e.snapp_loading_first_view);
        this.f = findViewById(a.e.snapp_loading_second_view);
        this.g = findViewById(a.e.snapp_loading_third_view);
    }

    private void b() {
        int i = a.c.shape_circle_green_blue;
        this.e.setBackgroundResource(i);
        this.f.setBackgroundResource(i);
        this.g.setBackgroundResource(i);
    }

    public void startAnimate() {
        this.c.cancel();
        this.c.removeAllListeners();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.5f, 1.0f});
        ofFloat.setDuration((long) this.f1515b);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatMode(2);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SnappLoading.this.f.setScaleY(floatValue);
                SnappLoading.this.f.setScaleX(floatValue);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{1.0f, 0.5f});
        ofFloat2.setDuration((long) this.f1515b);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.setRepeatMode(2);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SnappLoading.this.e.setScaleY(floatValue);
                SnappLoading.this.e.setScaleX(floatValue);
                SnappLoading.this.g.setScaleY(floatValue);
                SnappLoading.this.g.setScaleX(floatValue);
            }
        });
        this.c.playTogether(new Animator[]{ofFloat, ofFloat2});
        this.c.start();
        this.d = true;
    }

    public void stopAnimate() {
        this.d = false;
        AnimatorSet animatorSet = this.c;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.c.removeAllListeners();
        }
        View view = this.e;
        if (view != null) {
            view.setScaleX(1.0f);
            this.e.setScaleY(1.0f);
        }
        View view2 = this.f;
        if (view2 != null) {
            view2.setScaleX(1.0f);
            this.f.setScaleY(1.0f);
        }
        View view3 = this.g;
        if (view3 != null) {
            view3.setScaleX(1.0f);
            this.g.setScaleY(1.0f);
        }
    }

    public boolean isAnimating() {
        return this.d;
    }
}
