package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.a.a;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.i.c;
import com.google.android.material.i.e;
import com.google.android.material.internal.k;
import java.util.ArrayList;
import java.util.List;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;

    /* renamed from: a  reason: collision with root package name */
    AnimatorListenerAdapter f3809a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3810b;
    /* access modifiers changed from: private */
    public final c c;
    /* access modifiers changed from: private */
    public final a d;
    /* access modifiers changed from: private */
    public Animator e;
    /* access modifiers changed from: private */
    public Animator f;
    /* access modifiers changed from: private */
    public Animator g;
    /* access modifiers changed from: private */
    public int h;
    private boolean i;
    /* access modifiers changed from: private */
    public boolean j;

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f3819a = new Rect();

        public final /* synthetic */ void slideDown(View view) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            super.slideDown(bottomAppBar);
            FloatingActionButton h = bottomAppBar.a();
            if (h != null) {
                h.getContentRect(this.f3819a);
                h.clearAnimation();
                h.animate().translationY(((float) (-h.getPaddingBottom())) + ((float) (h.getMeasuredHeight() - this.f3819a.height()))).setInterpolator(a.FAST_OUT_LINEAR_IN_INTERPOLATOR).setDuration(175);
            }
        }

        public final /* synthetic */ void slideUp(View view) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            super.slideUp(bottomAppBar);
            FloatingActionButton h = bottomAppBar.a();
            if (h != null) {
                h.clearAnimation();
                h.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(a.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setDuration(225);
            }
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            FloatingActionButton h = bottomAppBar.a();
            if (h != null) {
                ((CoordinatorLayout.LayoutParams) h.getLayoutParams()).anchorGravity = 17;
                BottomAppBar.a(bottomAppBar, h);
                h.getMeasuredContentRect(this.f3819a);
                bottomAppBar.setFabDiameter(this.f3819a.height());
            }
            if (!BottomAppBar.i(bottomAppBar)) {
                bottomAppBar.c();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i);
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f3820a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3821b;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3820a = parcel.readInt();
            this.f3821b = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3820a);
            parcel.writeInt(this.f3821b ? 1 : 0);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
    }

    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.bottomAppBarStyle);
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.j = true;
        this.f3809a = new AnimatorListenerAdapter() {
            public final void onAnimationStart(Animator animator) {
                BottomAppBar bottomAppBar = BottomAppBar.this;
                BottomAppBar.a(bottomAppBar, bottomAppBar.j);
                BottomAppBar bottomAppBar2 = BottomAppBar.this;
                bottomAppBar2.a(bottomAppBar2.h, BottomAppBar.this.j);
            }
        };
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.BottomAppBar, i2, a.j.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList colorStateList = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes, a.k.BottomAppBar_backgroundTint);
        this.h = obtainStyledAttributes.getInt(a.k.BottomAppBar_fabAlignmentMode, 0);
        this.i = obtainStyledAttributes.getBoolean(a.k.BottomAppBar_hideOnScroll, false);
        obtainStyledAttributes.recycle();
        this.f3810b = getResources().getDimensionPixelOffset(a.d.mtrl_bottomappbar_fabOffsetEndMode);
        this.d = new a((float) obtainStyledAttributes.getDimensionPixelOffset(a.k.BottomAppBar_fabCradleMargin, 0), (float) obtainStyledAttributes.getDimensionPixelOffset(a.k.BottomAppBar_fabCradleRoundedCornerRadius, 0), (float) obtainStyledAttributes.getDimensionPixelOffset(a.k.BottomAppBar_fabCradleVerticalOffset, 0));
        e eVar = new e();
        eVar.setTopEdge(this.d);
        this.c = new c(eVar);
        this.c.setShadowEnabled(true);
        this.c.setPaintStyle(Paint.Style.FILL);
        DrawableCompat.setTintList(this.c, colorStateList);
        ViewCompat.setBackground(this, this.c);
    }

    public int getFabAlignmentMode() {
        return this.h;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.c, colorStateList);
    }

    public ColorStateList getBackgroundTint() {
        return this.c.getTintList();
    }

    public float getFabCradleMargin() {
        return this.d.f3823b;
    }

    public void setFabCradleMargin(float f2) {
        if (f2 != getFabCradleMargin()) {
            this.d.f3823b = f2;
            this.c.invalidateSelf();
        }
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.d.f3822a;
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            this.d.f3822a = f2;
            this.c.invalidateSelf();
        }
    }

    public float getCradleVerticalOffset() {
        return this.d.d;
    }

    public void setCradleVerticalOffset(float f2) {
        if (f2 != getCradleVerticalOffset()) {
            this.d.d = f2;
            this.c.invalidateSelf();
        }
    }

    public boolean getHideOnScroll() {
        return this.i;
    }

    public void setHideOnScroll(boolean z) {
        this.i = z;
    }

    public void replaceMenu(int i2) {
        getMenu().clear();
        inflateMenu(i2);
    }

    /* access modifiers changed from: package-private */
    public void setFabDiameter(int i2) {
        float f2 = (float) i2;
        if (f2 != this.d.c) {
            this.d.c = f2;
            this.c.invalidateSelf();
        }
    }

    /* access modifiers changed from: private */
    public FloatingActionButton a() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View next : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if (next instanceof FloatingActionButton) {
                return (FloatingActionButton) next;
            }
        }
        return null;
    }

    private boolean b() {
        FloatingActionButton a2 = a();
        return a2 != null && a2.isOrWillBeShown();
    }

    /* access modifiers changed from: private */
    public void a(int i2, boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            Animator animator = this.g;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!b()) {
                i2 = 0;
                z = false;
            }
            a(i2, z, (List<Animator>) arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.g = animatorSet;
            this.g.addListener(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    Animator unused = BottomAppBar.this.g = null;
                }
            });
            this.g.start();
        }
    }

    private void a(final int i2, final boolean z, List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", new float[]{1.0f});
            if ((this.j || (z && b())) && (this.h == 1 || i2 == 1)) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", new float[]{0.0f});
                ofFloat2.addListener(new AnimatorListenerAdapter() {
                    public boolean cancelled;

                    public final void onAnimationCancel(Animator animator) {
                        this.cancelled = true;
                    }

                    public final void onAnimationEnd(Animator animator) {
                        if (!this.cancelled) {
                            BottomAppBar.this.a(actionMenuView, i2, z);
                        }
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150);
                animatorSet.playSequentially(new Animator[]{ofFloat2, ofFloat});
                list.add(animatorSet);
                return;
            }
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        }
    }

    private float a(boolean z) {
        FloatingActionButton a2 = a();
        if (a2 == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        a2.getContentRect(rect);
        float height = (float) rect.height();
        if (height == 0.0f) {
            height = (float) a2.getMeasuredHeight();
        }
        float height2 = (float) (a2.getHeight() - rect.height());
        float height3 = (-getCradleVerticalOffset()) + (height / 2.0f) + ((float) (a2.getHeight() - rect.bottom));
        float paddingBottom = height2 - ((float) a2.getPaddingBottom());
        float f2 = (float) (-getMeasuredHeight());
        if (z) {
            paddingBottom = height3;
        }
        return f2 + paddingBottom;
    }

    /* access modifiers changed from: private */
    public float getFabTranslationY() {
        return a(this.j);
    }

    private int a(int i2) {
        int i3 = 1;
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        if (i2 != 1) {
            return 0;
        }
        int measuredWidth = (getMeasuredWidth() / 2) - this.f3810b;
        if (z) {
            i3 = -1;
        }
        return measuredWidth * i3;
    }

    private float getFabTranslationX() {
        return (float) a(this.h);
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

    /* access modifiers changed from: private */
    public void a(ActionMenuView actionMenuView, int i2, boolean z) {
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                i3 = Math.max(i3, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i2 != 1 || !z) ? 0.0f : (float) (i3 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft())));
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        Animator animator = this.e;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.g;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.f;
        if (animator3 != null) {
            animator3.cancel();
        }
        c();
    }

    /* access modifiers changed from: private */
    public void c() {
        this.d.e = getFabTranslationX();
        FloatingActionButton a2 = a();
        this.c.setInterpolation((!this.j || !b()) ? 0.0f : 1.0f);
        if (a2 != null) {
            a2.setTranslationY(getFabTranslationY());
            a2.setTranslationX(getFabTranslationX());
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!b()) {
                a(actionMenuView, 0, false);
                return;
            }
            a(actionMenuView, this.h, this.j);
        }
    }

    public CoordinatorLayout.Behavior<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3820a = this.h;
        savedState.f3821b = this.j;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.h = savedState.f3820a;
        this.j = savedState.f3821b;
    }

    public void setFabAlignmentMode(int i2) {
        if (this.h != i2 && ViewCompat.isLaidOut(this)) {
            Animator animator = this.f;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (this.j) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{this.d.e, (float) a(i2)});
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        BottomAppBar.this.d.e = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        BottomAppBar.this.c.invalidateSelf();
                    }
                });
                ofFloat.setDuration(300);
                arrayList.add(ofFloat);
            }
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(a(), "translationX", new float[]{(float) a(i2)});
            ofFloat2.setDuration(300);
            arrayList.add(ofFloat2);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f = animatorSet;
            this.f.addListener(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    Animator unused = BottomAppBar.this.f = null;
                }
            });
            this.f.start();
        }
        a(i2, this.j);
        this.h = i2;
    }

    static /* synthetic */ void a(BottomAppBar bottomAppBar, boolean z) {
        if (ViewCompat.isLaidOut(bottomAppBar)) {
            Animator animator = bottomAppBar.e;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            boolean z2 = z && bottomAppBar.b();
            if (z2) {
                bottomAppBar.d.e = bottomAppBar.getFabTranslationX();
            }
            float[] fArr = new float[2];
            fArr[0] = bottomAppBar.c.getInterpolation();
            fArr[1] = z2 ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BottomAppBar.this.c.setInterpolation(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            ofFloat.setDuration(300);
            arrayList.add(ofFloat);
            FloatingActionButton a2 = bottomAppBar.a();
            if (a2 != null) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(a2, "translationY", new float[]{bottomAppBar.a(z)});
                ofFloat2.setDuration(300);
                arrayList.add(ofFloat2);
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            bottomAppBar.e = animatorSet;
            bottomAppBar.e.addListener(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    Animator unused = BottomAppBar.this.e = null;
                }
            });
            bottomAppBar.e.start();
        }
    }

    static /* synthetic */ void a(BottomAppBar bottomAppBar, FloatingActionButton floatingActionButton) {
        floatingActionButton.removeOnHideAnimationListener(bottomAppBar.f3809a);
        floatingActionButton.removeOnShowAnimationListener(bottomAppBar.f3809a);
        floatingActionButton.addOnHideAnimationListener(bottomAppBar.f3809a);
        floatingActionButton.addOnShowAnimationListener(bottomAppBar.f3809a);
    }

    static /* synthetic */ boolean i(BottomAppBar bottomAppBar) {
        Animator animator = bottomAppBar.e;
        if (animator == null || !animator.isRunning()) {
            Animator animator2 = bottomAppBar.g;
            if (animator2 == null || !animator2.isRunning()) {
                Animator animator3 = bottomAppBar.f;
                if (animator3 == null || !animator3.isRunning()) {
                    return false;
                }
            }
        }
        return true;
    }
}
