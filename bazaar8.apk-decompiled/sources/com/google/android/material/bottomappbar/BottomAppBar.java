package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import b.i.k.z;
import c.e.a.c.a.a;
import c.e.a.c.d.e;
import c.e.a.c.r.b;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.a {
    public final int P;
    public final b Q;
    public final e R;
    public Animator S;
    public Animator T;
    public Animator U;
    public int V;
    public boolean W;
    public boolean aa;
    public AnimatorListenerAdapter ba;

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: d  reason: collision with root package name */
        public final Rect f13327d = new Rect();

        public Behavior() {
        }

        public final boolean a(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.e) floatingActionButton.getLayoutParams()).f570d = 17;
            bottomAppBar.a(floatingActionButton);
            return true;
        }

        public void b(BottomAppBar bottomAppBar) {
            super.b(bottomAppBar);
            FloatingActionButton a2 = bottomAppBar.t();
            if (a2 != null) {
                a2.clearAnimation();
                a2.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(a.f11187d).setDuration(225);
            }
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i2) {
            FloatingActionButton a2 = bottomAppBar.t();
            if (a2 != null) {
                a(a2, bottomAppBar);
                a2.b(this.f13327d);
                bottomAppBar.setFabDiameter(this.f13327d.height());
            }
            if (bottomAppBar.u()) {
                coordinatorLayout.d(bottomAppBar, i2);
                return super.onLayoutChild(coordinatorLayout, bottomAppBar, i2);
            }
            BottomAppBar.c(bottomAppBar);
            throw null;
        }

        /* renamed from: a */
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i2, int i3) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i2, i3);
        }

        public void a(BottomAppBar bottomAppBar) {
            super.a(bottomAppBar);
            FloatingActionButton a2 = bottomAppBar.t();
            if (a2 != null) {
                a2.a(this.f13327d);
                a2.clearAnimation();
                a2.animate().translationY(((float) (-a2.getPaddingBottom())) + ((float) (a2.getMeasuredHeight() - this.f13327d.height()))).setInterpolator(a.f11186c).setDuration(175);
            }
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new d();

        /* renamed from: c  reason: collision with root package name */
        public int f13328c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13329d;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f13328c);
            parcel.writeInt(this.f13329d ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13328c = parcel.readInt();
            this.f13329d = parcel.readInt() != 0;
        }
    }

    public static /* synthetic */ void c(BottomAppBar bottomAppBar) {
        bottomAppBar.w();
        throw null;
    }

    private ActionMenuView getActionMenuView() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    private float getFabTranslationX() {
        return (float) d(this.V);
    }

    /* access modifiers changed from: private */
    public float getFabTranslationY() {
        return a(this.aa);
    }

    public final void e(int i2) {
        if (this.V != i2 && z.B(this)) {
            Animator animator = this.T;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            a(i2, (List<Animator>) arrayList);
            b(i2, (List<Animator>) arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.T = animatorSet;
            this.T.addListener(new a(this));
            this.T.start();
        }
    }

    public ColorStateList getBackgroundTint() {
        this.Q.a();
        throw null;
    }

    public CoordinatorLayout.b<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public float getCradleVerticalOffset() {
        this.R.a();
        throw null;
    }

    public int getFabAlignmentMode() {
        return this.V;
    }

    public float getFabCradleMargin() {
        this.R.b();
        throw null;
    }

    public float getFabCradleRoundedCornerRadius() {
        this.R.c();
        throw null;
    }

    public boolean getHideOnScroll() {
        return this.W;
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        s();
        w();
        throw null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.V = savedState.f13328c;
        this.aa = savedState.f13329d;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13328c = this.V;
        savedState.f13329d = this.aa;
        return savedState;
    }

    public final void s() {
        Animator animator = this.S;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.U;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.T;
        if (animator3 != null) {
            animator3.cancel();
        }
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        b.i.c.a.a.a((Drawable) this.Q, colorStateList);
    }

    public void setCradleVerticalOffset(float f2) {
        if (f2 != getCradleVerticalOffset()) {
            this.R.a(f2);
            throw null;
        }
    }

    public void setFabAlignmentMode(int i2) {
        e(i2);
        a(i2, this.aa);
        this.V = i2;
    }

    public void setFabCradleMargin(float f2) {
        if (f2 != getFabCradleMargin()) {
            this.R.b(f2);
            throw null;
        }
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            this.R.c(f2);
            throw null;
        }
    }

    public void setFabDiameter(int i2) {
        this.R.d();
        throw null;
    }

    public void setHideOnScroll(boolean z) {
        this.W = z;
    }

    public void setSubtitle(CharSequence charSequence) {
    }

    public void setTitle(CharSequence charSequence) {
    }

    public final FloatingActionButton t() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View next : ((CoordinatorLayout) getParent()).c((View) this)) {
            if (next instanceof FloatingActionButton) {
                return (FloatingActionButton) next;
            }
        }
        return null;
    }

    public final boolean u() {
        Animator animator = this.S;
        if (animator == null || !animator.isRunning()) {
            Animator animator2 = this.U;
            if (animator2 == null || !animator2.isRunning()) {
                Animator animator3 = this.T;
                if (animator3 == null || !animator3.isRunning()) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean v() {
        FloatingActionButton t = t();
        return t != null && t.c();
    }

    public final void w() {
        this.R.d(getFabTranslationX());
        throw null;
    }

    public final int d(int i2) {
        int i3 = 1;
        boolean z = z.m(this) == 1;
        if (i2 != 1) {
            return 0;
        }
        int measuredWidth = (getMeasuredWidth() / 2) - this.P;
        if (z) {
            i3 = -1;
        }
        return measuredWidth * i3;
    }

    public final void b(int i2, List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(t(), "translationX", new float[]{(float) d(i2)});
        ofFloat.setDuration(300);
        list.add(ofFloat);
    }

    public final void a(int i2, List<Animator> list) {
        if (this.aa) {
            float[] fArr = new float[2];
            this.R.e();
            throw null;
        }
    }

    public final void b(FloatingActionButton floatingActionButton) {
        floatingActionButton.c((Animator.AnimatorListener) this.ba);
        floatingActionButton.d(this.ba);
    }

    public final void a(int i2, boolean z) {
        if (z.B(this)) {
            Animator animator = this.U;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!v()) {
                i2 = 0;
                z = false;
            }
            a(i2, z, (List<Animator>) arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.U = animatorSet;
            this.U.addListener(new b(this));
            this.U.start();
        }
    }

    public final void a(int i2, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", new float[]{1.0f});
            if ((this.aa || (z && v())) && (this.V == 1 || i2 == 1)) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", new float[]{0.0f});
                ofFloat2.addListener(new c(this, actionMenuView, i2, z));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150);
                animatorSet.playSequentially(new Animator[]{ofFloat2, ofFloat});
                list.add(animatorSet);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        }
    }

    public final float a(boolean z) {
        FloatingActionButton t = t();
        if (t == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        t.a(rect);
        float height = (float) rect.height();
        if (height == 0.0f) {
            height = (float) t.getMeasuredHeight();
        }
        float height2 = (float) (t.getHeight() - rect.height());
        float height3 = (-getCradleVerticalOffset()) + (height / 2.0f) + ((float) (t.getHeight() - rect.bottom));
        float paddingBottom = height2 - ((float) t.getPaddingBottom());
        float f2 = (float) (-getMeasuredHeight());
        if (z) {
            paddingBottom = height3;
        }
        return f2 + paddingBottom;
    }

    public final void a(ActionMenuView actionMenuView, int i2, boolean z) {
        boolean z2 = z.m(this) == 1;
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if ((childAt.getLayoutParams() instanceof Toolbar.b) && (((Toolbar.b) childAt.getLayoutParams()).f1730a & 8388615) == 8388611) {
                i3 = Math.max(i3, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i2 != 1 || !z) ? 0.0f : (float) (i3 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft())));
    }

    public final void a(FloatingActionButton floatingActionButton) {
        b(floatingActionButton);
        floatingActionButton.a((Animator.AnimatorListener) this.ba);
        floatingActionButton.b((Animator.AnimatorListener) this.ba);
    }
}
