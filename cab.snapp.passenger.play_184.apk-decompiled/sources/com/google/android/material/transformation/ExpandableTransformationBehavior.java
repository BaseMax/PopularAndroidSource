package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public AnimatorSet f4025a;

    /* access modifiers changed from: protected */
    public abstract AnimatorSet b(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public boolean a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f4025a != null;
        if (z3) {
            this.f4025a.cancel();
        }
        this.f4025a = b(view, view2, z, z3);
        this.f4025a.addListener(new AnimatorListenerAdapter() {
            public final void onAnimationEnd(Animator animator) {
                AnimatorSet unused = ExpandableTransformationBehavior.this.f4025a = null;
            }
        });
        this.f4025a.start();
        if (!z2) {
            this.f4025a.end();
        }
        return true;
    }
}
