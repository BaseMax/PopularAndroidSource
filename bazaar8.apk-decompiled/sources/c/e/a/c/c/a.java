package c.e.a.c.c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewPropertyAnimator;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;

/* compiled from: HideBottomViewOnScrollBehavior */
class a extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ HideBottomViewOnScrollBehavior f11235a;

    public a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f11235a = hideBottomViewOnScrollBehavior;
    }

    public void onAnimationEnd(Animator animator) {
        ViewPropertyAnimator unused = this.f11235a.f13313c = null;
    }
}
