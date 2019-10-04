package c.e.a.c.i;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: CircularRevealCompat */
class a extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f11318a;

    public a(f fVar) {
        this.f11318a = fVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.f11318a.b();
    }

    public void onAnimationStart(Animator animator) {
        this.f11318a.a();
    }
}
