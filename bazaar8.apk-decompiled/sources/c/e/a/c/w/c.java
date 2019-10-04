package c.e.a.c.w;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.transformation.FabTransformationBehavior;

/* compiled from: FabTransformationBehavior */
class c extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f11495a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f11496b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f11497c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ FabTransformationBehavior f11498d;

    public c(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
        this.f11498d = fabTransformationBehavior;
        this.f11495a = z;
        this.f11496b = view;
        this.f11497c = view2;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.f11495a) {
            this.f11496b.setVisibility(4);
            this.f11497c.setAlpha(1.0f);
            this.f11497c.setVisibility(0);
        }
    }

    public void onAnimationStart(Animator animator) {
        if (this.f11495a) {
            this.f11496b.setVisibility(0);
            this.f11497c.setAlpha(0.0f);
            this.f11497c.setVisibility(4);
        }
    }
}
