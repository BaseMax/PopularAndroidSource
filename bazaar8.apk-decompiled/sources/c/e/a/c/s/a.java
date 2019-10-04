package c.e.a.c.s;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class a extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11429a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11430b;

    public a(BaseTransientBottomBar baseTransientBottomBar, int i2) {
        this.f11430b = baseTransientBottomBar;
        this.f11429a = i2;
    }

    public void onAnimationEnd(Animator animator) {
        this.f11430b.d(this.f11429a);
    }

    public void onAnimationStart(Animator animator) {
        this.f11430b.f13391g.b(0, 180);
    }
}
