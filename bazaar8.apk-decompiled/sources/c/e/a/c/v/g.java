package c.e.a.c.v;

import android.animation.ValueAnimator;
import com.google.android.material.textfield.TextInputLayout;

/* compiled from: TextInputLayout */
class g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f11489a;

    public g(TextInputLayout textInputLayout) {
        this.f11489a = textInputLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11489a.aa.e(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
