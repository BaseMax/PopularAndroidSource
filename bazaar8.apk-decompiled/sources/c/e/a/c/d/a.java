package c.e.a.c.d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;

/* compiled from: BottomAppBar */
class a extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f11239a;

    public a(BottomAppBar bottomAppBar) {
        this.f11239a = bottomAppBar;
    }

    public void onAnimationEnd(Animator animator) {
        Animator unused = this.f11239a.T = null;
    }
}
