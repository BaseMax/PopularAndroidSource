package f.a.a.e.b.b;

import android.view.animation.Animation;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: ControllableInputInflater */
class p implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController.Placeholder f14185a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f14186b;

    public p(q qVar, ControllableInputInflater.InputController.Placeholder placeholder) {
        this.f14186b = qVar;
        this.f14185a = placeholder;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.f14185a == ControllableInputInflater.InputController.Placeholder.UP) {
            this.f14186b.f14189c.setVisibility(0);
            this.f14186b.f14188b.setVisibility(4);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
        if (this.f14185a != ControllableInputInflater.InputController.Placeholder.UP) {
            this.f14186b.f14188b.setVisibility(0);
            this.f14186b.f14189c.setVisibility(4);
        }
    }
}
