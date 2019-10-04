package c.e.a.c.b;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;

/* compiled from: AppBarLayout */
class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f11207a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f11208b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f11209c;

    public b(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f11209c = baseBehavior;
        this.f11207a = coordinatorLayout;
        this.f11208b = appBarLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11209c.b(this.f11207a, this.f11208b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
