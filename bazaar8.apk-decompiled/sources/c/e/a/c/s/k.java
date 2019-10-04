package c.e.a.c.s;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class k extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11440a;

    public k(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11440a = baseTransientBottomBar;
    }

    public void onAnimationEnd(Animator animator) {
        this.f11440a.k();
    }

    public void onAnimationStart(Animator animator) {
        this.f11440a.f13391g.a(70, 180);
    }
}
