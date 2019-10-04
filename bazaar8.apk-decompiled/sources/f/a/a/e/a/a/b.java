package f.a.a.e.a.a;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.crashlytics.android.Crashlytics;
import f.a.a.e.a.p;
import f.a.a.e.g;

/* compiled from: FadeChangeAnimation */
class b implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f14015a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f14016b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g f14017c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f14018d;

    public b(c cVar, p pVar, View view, g gVar) {
        this.f14018d = cVar;
        this.f14015a = pVar;
        this.f14016b = view;
        this.f14017c = gVar;
    }

    public void onAnimationEnd(Animation animation) {
        try {
            this.f14015a.b(this.f14016b, this.f14017c);
        } catch (Exception e2) {
            Crashlytics.logException(e2);
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.2f, 1.0f);
        alphaAnimation.setDuration((this.f14018d.f14019a * 2) / 3);
        alphaAnimation.setInterpolator(new AccelerateInterpolator(0.3f));
        this.f14016b.startAnimation(alphaAnimation);
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
