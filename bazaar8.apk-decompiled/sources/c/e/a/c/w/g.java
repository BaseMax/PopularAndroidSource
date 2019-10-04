package c.e.a.c.w;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.transformation.FabTransformationScrimBehavior;

/* compiled from: FabTransformationScrimBehavior */
class g extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f11506a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f11507b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ FabTransformationScrimBehavior f11508c;

    public g(FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, View view) {
        this.f11508c = fabTransformationScrimBehavior;
        this.f11506a = z;
        this.f11507b = view;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.f11506a) {
            this.f11507b.setVisibility(4);
        }
    }

    public void onAnimationStart(Animator animator) {
        if (this.f11506a) {
            this.f11507b.setVisibility(0);
        }
    }
}
