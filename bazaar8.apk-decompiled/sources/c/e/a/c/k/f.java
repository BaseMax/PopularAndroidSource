package c.e.a.c.k;

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
import c.e.a.c.l.c;
import c.e.a.c.l.d;
import c.e.a.c.l.r;
import c.e.a.c.q.b;
import java.util.ArrayList;

/* compiled from: FloatingActionButtonImplLollipop */
public class f extends e {
    public InsetDrawable I;

    /* compiled from: FloatingActionButtonImplLollipop */
    static class a extends GradientDrawable {
        public boolean isStateful() {
            return true;
        }
    }

    public f(r rVar, b bVar) {
        super(rVar, bVar);
    }

    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        Drawable drawable;
        this.q = b.i.c.a.a.i(a());
        b.i.c.a.a.a(this.q, colorStateList);
        if (mode != null) {
            b.i.c.a.a.a(this.q, mode);
        }
        if (i2 > 0) {
            this.s = a(i2, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{this.s, this.q});
        } else {
            this.s = null;
            drawable = this.q;
        }
        this.r = new RippleDrawable(c.e.a.c.p.a.a(colorStateList2), drawable, null);
        Drawable drawable2 = this.r;
        this.t = drawable2;
        this.C.a(drawable2);
    }

    public void b(ColorStateList colorStateList) {
        Drawable drawable = this.r;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(c.e.a.c.p.a.a(colorStateList));
        } else {
            super.b(colorStateList);
        }
    }

    public float f() {
        return this.B.getElevation();
    }

    public void m() {
    }

    public c n() {
        return new d();
    }

    public GradientDrawable o() {
        return new a();
    }

    public void q() {
        x();
    }

    public boolean t() {
        return false;
    }

    public void b(Rect rect) {
        if (this.C.a()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.r, rect.left, rect.top, rect.right, rect.bottom);
            this.I = insetDrawable;
            this.C.a(this.I);
            return;
        }
        this.C.a(this.r);
    }

    public void a(float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT == 21) {
            this.B.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(e.f11343b, a(f2, f4));
            stateListAnimator.addState(e.f11344c, a(f2, f3));
            stateListAnimator.addState(e.f11345d, a(f2, f3));
            stateListAnimator.addState(e.f11346e, a(f2, f3));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.B, "elevation", new float[]{f2}).setDuration(0));
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 22 && i2 <= 24) {
                r rVar = this.B;
                arrayList.add(ObjectAnimator.ofFloat(rVar, View.TRANSLATION_Z, new float[]{rVar.getTranslationZ()}).setDuration(100));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.B, View.TRANSLATION_Z, new float[]{0.0f}).setDuration(100));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(e.f11342a);
            stateListAnimator.addState(e.f11347f, animatorSet);
            stateListAnimator.addState(e.f11348g, a(0.0f, 0.0f));
            this.B.setStateListAnimator(stateListAnimator);
        }
        if (this.C.a()) {
            x();
        }
    }

    public final Animator a(float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.B, "elevation", new float[]{f2}).setDuration(0)).with(ObjectAnimator.ofFloat(this.B, View.TRANSLATION_Z, new float[]{f3}).setDuration(100));
        animatorSet.setInterpolator(e.f11342a);
        return animatorSet;
    }

    public void a(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.B.isEnabled()) {
            this.B.setElevation(this.u);
            if (this.B.isPressed()) {
                this.B.setTranslationZ(this.w);
            } else if (this.B.isFocused() || this.B.isHovered()) {
                this.B.setTranslationZ(this.v);
            } else {
                this.B.setTranslationZ(0.0f);
            }
        } else {
            this.B.setElevation(0.0f);
            this.B.setTranslationZ(0.0f);
        }
    }

    public void a(Rect rect) {
        if (this.C.a()) {
            float b2 = this.C.b();
            float f2 = f() + this.w;
            int ceil = (int) Math.ceil((double) c.e.a.c.q.a.a(f2, b2, false));
            int ceil2 = (int) Math.ceil((double) c.e.a.c.q.a.b(f2, b2, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
