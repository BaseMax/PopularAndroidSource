package b.i.k;

import android.animation.ValueAnimator;
import android.view.View;

/* compiled from: ViewPropertyAnimatorCompat */
class H implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ L f2769a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f2770b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ I f2771c;

    public H(I i2, L l2, View view) {
        this.f2771c = i2;
        this.f2769a = l2;
        this.f2770b = view;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f2769a.a(this.f2770b);
    }
}
