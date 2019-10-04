package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.internal.VisibilityAwareImageButton;
import java.util.ArrayList;

final class b extends a {
    private InsetDrawable A;

    static class a extends GradientDrawable {
        public final boolean isStateful() {
            return true;
        }

        a() {
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
    }

    /* access modifiers changed from: package-private */
    public final boolean e() {
        return false;
    }

    b(VisibilityAwareImageButton visibilityAwareImageButton, com.google.android.material.h.b bVar) {
        super(visibilityAwareImageButton, bVar);
    }

    /* access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        this.h = DrawableCompat.wrap(g());
        DrawableCompat.setTintList(this.h, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.h, mode);
        }
        if (i > 0) {
            this.j = a(i, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{this.j, this.h});
        } else {
            this.j = null;
            drawable = this.h;
        }
        this.i = new RippleDrawable(com.google.android.material.g.a.convertToRippleDrawableColor(colorStateList2), drawable, null);
        this.k = this.i;
        this.y.setBackgroundDrawable(this.i);
    }

    /* access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        if (this.i instanceof RippleDrawable) {
            ((RippleDrawable) this.i).setColor(com.google.android.material.g.a.convertToRippleDrawableColor(colorStateList));
        } else {
            super.a(colorStateList);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.x.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(r, a(f, f3));
            stateListAnimator.addState(s, a(f, f2));
            stateListAnimator.addState(t, a(f, f2));
            stateListAnimator.addState(u, a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.x, "elevation", new float[]{f}).setDuration(0));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.x, View.TRANSLATION_Z, new float[]{this.x.getTranslationZ()}).setDuration(100));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.x, View.TRANSLATION_Z, new float[]{0.0f}).setDuration(100));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f3894a);
            stateListAnimator.addState(v, animatorSet);
            stateListAnimator.addState(w, a(0.0f, 0.0f));
            this.x.setStateListAnimator(stateListAnimator);
        }
        if (this.y.isCompatPaddingEnabled()) {
            d();
        }
    }

    private Animator a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.x, "elevation", new float[]{f}).setDuration(0)).with(ObjectAnimator.ofFloat(this.x, View.TRANSLATION_Z, new float[]{f2}).setDuration(100));
        animatorSet.setInterpolator(f3894a);
        return animatorSet;
    }

    public final float getElevation() {
        return this.x.getElevation();
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        d();
    }

    /* access modifiers changed from: package-private */
    public final void b(Rect rect) {
        if (this.y.isCompatPaddingEnabled()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.i, rect.left, rect.top, rect.right, rect.bottom);
            this.A = insetDrawable;
            this.y.setBackgroundDrawable(this.A);
            return;
        }
        this.y.setBackgroundDrawable(this.i);
    }

    /* access modifiers changed from: package-private */
    public final void a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.x.isEnabled()) {
                this.x.setElevation(this.l);
                if (this.x.isPressed()) {
                    this.x.setTranslationZ(this.n);
                } else if (this.x.isFocused() || this.x.isHovered()) {
                    this.x.setTranslationZ(this.m);
                } else {
                    this.x.setTranslationZ(0.0f);
                }
            } else {
                this.x.setElevation(0.0f);
                this.x.setTranslationZ(0.0f);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final com.google.android.material.internal.a f() {
        return new com.google.android.material.internal.b();
    }

    /* access modifiers changed from: package-private */
    public final GradientDrawable h() {
        return new a();
    }

    /* access modifiers changed from: package-private */
    public final void a(Rect rect) {
        if (this.y.isCompatPaddingEnabled()) {
            float radius = this.y.getRadius();
            float elevation = getElevation() + this.n;
            int ceil = (int) Math.ceil((double) com.google.android.material.h.a.calculateHorizontalPadding(elevation, radius, false));
            int ceil2 = (int) Math.ceil((double) com.google.android.material.h.a.calculateVerticalPadding(elevation, radius, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
