package c.e.a.c.w;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import com.google.android.material.transformation.ExpandableTransformationBehavior;

/* compiled from: ExpandableTransformationBehavior */
class b extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ExpandableTransformationBehavior f11494a;

    public b(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f11494a = expandableTransformationBehavior;
    }

    public void onAnimationEnd(Animator animator) {
        AnimatorSet unused = this.f11494a.f13470b = null;
    }
}
