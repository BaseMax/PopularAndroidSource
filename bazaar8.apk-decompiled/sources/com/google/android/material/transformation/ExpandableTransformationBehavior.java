package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b  reason: collision with root package name */
    public AnimatorSet f13470b;

    public ExpandableTransformationBehavior() {
    }

    public abstract AnimatorSet b(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f13470b != null;
        if (z3) {
            this.f13470b.cancel();
        }
        this.f13470b = b(view, view2, z, z3);
        this.f13470b.addListener(new b(this));
        this.f13470b.start();
        if (!z2) {
            this.f13470b.end();
        }
        return true;
    }
}
