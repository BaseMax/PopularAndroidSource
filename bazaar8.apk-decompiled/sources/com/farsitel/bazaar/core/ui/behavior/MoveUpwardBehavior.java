package com.farsitel.bazaar.core.ui.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.i.k.I;
import b.i.k.z;
import com.google.android.material.snackbar.Snackbar;

@Keep
public class MoveUpwardBehavior extends CoordinatorLayout.b<View> {
    public MoveUpwardBehavior() {
    }

    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof Snackbar.SnackbarLayout;
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        z.b(view, Math.min(0.0f, z.s(view2) - ((float) view2.getHeight())));
        return true;
    }

    public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, View view, View view2) {
        I a2 = z.a(view);
        a2.b(0.0f);
        a2.c();
    }

    public MoveUpwardBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
