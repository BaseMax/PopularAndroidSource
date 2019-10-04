package c.c.a.n.c.d.a;

import android.view.animation.Animation;
import android.widget.TextView;

/* compiled from: DetailToolbarScrollListener.kt */
public final class d implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6358a;

    public d(f fVar) {
        this.f6358a = fVar;
    }

    public void onAnimationEnd(Animation animation) {
        TextView textView = (TextView) this.f6358a.f6360a.get();
        if (textView != null) {
            textView.setAlpha(1.0f);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
        TextView textView = (TextView) this.f6358a.f6360a.get();
        if (textView != null) {
            textView.setAlpha(1.0f);
        }
    }
}
