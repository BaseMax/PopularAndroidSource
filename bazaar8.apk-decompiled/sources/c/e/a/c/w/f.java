package c.e.a.c.w;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import c.e.a.c.i.f;
import com.google.android.material.transformation.FabTransformationBehavior;

/* compiled from: FabTransformationBehavior */
class f extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c.e.a.c.i.f f11504a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FabTransformationBehavior f11505b;

    public f(FabTransformationBehavior fabTransformationBehavior, c.e.a.c.i.f fVar) {
        this.f11505b = fabTransformationBehavior;
        this.f11504a = fVar;
    }

    public void onAnimationEnd(Animator animator) {
        f.d revealInfo = this.f11504a.getRevealInfo();
        revealInfo.f11328c = Float.MAX_VALUE;
        this.f11504a.setRevealInfo(revealInfo);
    }
}
