package c.e.a.c.d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;

/* compiled from: BottomAppBar */
class b extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f11240a;

    public b(BottomAppBar bottomAppBar) {
        this.f11240a = bottomAppBar;
    }

    public void onAnimationEnd(Animator animator) {
        Animator unused = this.f11240a.U = null;
    }
}
