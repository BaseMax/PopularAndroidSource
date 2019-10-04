package c.e.a.c.l;

import android.animation.ValueAnimator;
import android.widget.TextView;

/* compiled from: TextScale */
class n implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TextView f11403a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o f11404b;

    public n(o oVar, TextView textView) {
        this.f11404b = oVar;
        this.f11403a = textView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f11403a.setScaleX(floatValue);
        this.f11403a.setScaleY(floatValue);
    }
}
