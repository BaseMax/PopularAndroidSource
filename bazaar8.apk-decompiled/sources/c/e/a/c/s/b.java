package c.e.a.c.s;

import android.animation.ValueAnimator;
import b.i.k.z;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public int f11431a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11432b;

    public b(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11432b = baseTransientBottomBar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (BaseTransientBottomBar.f13386b) {
            z.e(this.f11432b.f13390f, intValue - this.f11431a);
        } else {
            this.f11432b.f13390f.setTranslationY((float) intValue);
        }
        this.f11431a = intValue;
    }
}
