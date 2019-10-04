package c.e.a.c.w;

import android.animation.ValueAnimator;
import android.view.View;
import com.google.android.material.transformation.FabTransformationBehavior;

/* compiled from: FabTransformationBehavior */
class d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f11499a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FabTransformationBehavior f11500b;

    public d(FabTransformationBehavior fabTransformationBehavior, View view) {
        this.f11500b = fabTransformationBehavior;
        this.f11499a = view;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11499a.invalidate();
    }
}
