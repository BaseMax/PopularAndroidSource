package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Transition */
class D extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ E f1077a;

    public D(E e2) {
        this.f1077a = e2;
    }

    public void onAnimationEnd(Animator animator) {
        this.f1077a.a();
        animator.removeListener(this);
    }
}
