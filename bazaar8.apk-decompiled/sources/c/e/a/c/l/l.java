package c.e.a.c.l;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: StateListAnimator */
class l extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m f11396a;

    public l(m mVar) {
        this.f11396a = mVar;
    }

    public void onAnimationEnd(Animator animator) {
        m mVar = this.f11396a;
        if (mVar.f11399c == animator) {
            mVar.f11399c = null;
        }
    }
}
