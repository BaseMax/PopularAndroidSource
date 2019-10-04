package c.e.a.c.u;

import android.animation.ValueAnimator;
import c.e.a.c.a.a;
import com.google.android.material.tabs.TabLayout;

/* compiled from: TabLayout */
class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11460a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f11461b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f11462c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f11463d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TabLayout.e f11464e;

    public c(TabLayout.e eVar, int i2, int i3, int i4, int i5) {
        this.f11464e = eVar;
        this.f11460a = i2;
        this.f11461b = i3;
        this.f11462c = i4;
        this.f11463d = i5;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        this.f11464e.b(a.a(this.f11460a, this.f11461b, animatedFraction), a.a(this.f11462c, this.f11463d, animatedFraction));
    }
}
