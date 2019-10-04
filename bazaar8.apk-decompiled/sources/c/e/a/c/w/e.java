package c.e.a.c.w;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import c.e.a.c.i.f;
import com.google.android.material.transformation.FabTransformationBehavior;

/* compiled from: FabTransformationBehavior */
class e extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f11501a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Drawable f11502b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ FabTransformationBehavior f11503c;

    public e(FabTransformationBehavior fabTransformationBehavior, f fVar, Drawable drawable) {
        this.f11503c = fabTransformationBehavior;
        this.f11501a = fVar;
        this.f11502b = drawable;
    }

    public void onAnimationEnd(Animator animator) {
        this.f11501a.setCircularRevealOverlayDrawable(null);
    }

    public void onAnimationStart(Animator animator) {
        this.f11501a.setCircularRevealOverlayDrawable(this.f11502b);
    }
}
