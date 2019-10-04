package c.c.a.n.c.d.a;

import android.view.animation.Animation;
import android.widget.TextView;

/* compiled from: DetailToolbarScrollListener.kt */
public final class e implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6359a;

    public e(f fVar) {
        this.f6359a = fVar;
    }

    public void onAnimationEnd(Animation animation) {
        TextView textView = (TextView) this.f6359a.f6360a.get();
        if (textView != null) {
            textView.setAlpha(0.0f);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
        TextView textView = (TextView) this.f6359a.f6360a.get();
        if (textView != null) {
            textView.setAlpha(1.0f);
        }
    }
}
