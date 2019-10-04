package b.i.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: ViewPropertyAnimatorCompat */
class G extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ J f2766a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f2767b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ I f2768c;

    public G(I i2, J j2, View view) {
        this.f2768c = i2;
        this.f2766a = j2;
        this.f2767b = view;
    }

    public void onAnimationCancel(Animator animator) {
        this.f2766a.a(this.f2767b);
    }

    public void onAnimationEnd(Animator animator) {
        this.f2766a.b(this.f2767b);
    }

    public void onAnimationStart(Animator animator) {
        this.f2766a.c(this.f2767b);
    }
}
