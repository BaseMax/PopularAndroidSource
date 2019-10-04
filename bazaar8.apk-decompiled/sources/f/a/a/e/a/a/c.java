package f.a.a.e.a.a;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import f.a.a.e.a.p;
import f.a.a.e.g;

/* compiled from: FadeChangeAnimation */
public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    public long f14019a = 700;

    public boolean a() {
        return true;
    }

    public void b(p pVar, View view, g gVar) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.2f);
        alphaAnimation.setDuration(this.f14019a / 3);
        alphaAnimation.setInterpolator(new DecelerateInterpolator(0.2f));
        alphaAnimation.setAnimationListener(new b(this, pVar, view, gVar));
        view.startAnimation(alphaAnimation);
    }
}
