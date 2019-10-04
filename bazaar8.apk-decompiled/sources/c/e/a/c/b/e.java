package c.e.a.c.b;

import android.animation.ValueAnimator;
import com.google.android.material.appbar.CollapsingToolbarLayout;

/* compiled from: CollapsingToolbarLayout */
class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f11211a;

    public e(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f11211a = collapsingToolbarLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11211a.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
