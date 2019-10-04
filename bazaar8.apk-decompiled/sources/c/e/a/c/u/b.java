package c.e.a.c.u;

import android.animation.ValueAnimator;
import com.google.android.material.tabs.TabLayout;

/* compiled from: TabLayout */
class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TabLayout f11459a;

    public b(TabLayout tabLayout) {
        this.f11459a = tabLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11459a.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
