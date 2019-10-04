package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.a;
import com.google.android.material.a.g;
import com.google.android.material.a.h;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.i;
import java.util.ArrayList;
import java.util.Iterator;

class a {

    /* renamed from: a  reason: collision with root package name */
    static final TimeInterpolator f3894a = com.google.android.material.a.a.FAST_OUT_LINEAR_IN_INTERPOLATOR;
    static final int[] r = {16842919, 16842910};
    static final int[] s = {16843623, 16842908, 16842910};
    static final int[] t = {16842908, 16842910};
    static final int[] u = {16843623, 16842910};
    static final int[] v = {16842910};
    static final int[] w = new int[0];
    private h A;
    private h B;
    private final i C;
    private ArrayList<Animator.AnimatorListener> D;
    private final Rect E = new Rect();
    private final RectF F = new RectF();
    private final RectF G = new RectF();
    private final Matrix H = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    int f3895b = 0;
    Animator c;
    h d;
    h e;
    com.google.android.material.h.a f;
    float g;
    Drawable h;
    Drawable i;
    com.google.android.material.internal.a j;
    Drawable k;
    float l;
    float m;
    float n;
    int o;
    float p = 1.0f;
    ArrayList<Animator.AnimatorListener> q;
    final VisibilityAwareImageButton x;
    final com.google.android.material.h.b y;
    ViewTreeObserver.OnPreDrawListener z;

    /* renamed from: com.google.android.material.floatingactionbutton.a$a  reason: collision with other inner class name */
    class C0072a extends f {
        /* access modifiers changed from: protected */
        public final float a() {
            return 0.0f;
        }

        C0072a() {
            super(a.this, (byte) 0);
        }
    }

    class b extends f {
        b() {
            super(a.this, (byte) 0);
        }

        /* access modifiers changed from: protected */
        public final float a() {
            return a.this.l + a.this.m;
        }
    }

    class c extends f {
        c() {
            super(a.this, (byte) 0);
        }

        /* access modifiers changed from: protected */
        public final float a() {
            return a.this.l + a.this.n;
        }
    }

    interface d {
        void onHidden();

        void onShown();
    }

    class e extends f {
        e() {
            super(a.this, (byte) 0);
        }

        /* access modifiers changed from: protected */
        public final float a() {
            return a.this.l;
        }
    }

    abstract class f extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3905a;
        private float c;
        private float d;

        /* access modifiers changed from: protected */
        public abstract float a();

        private f() {
        }

        /* synthetic */ f(a aVar, byte b2) {
            this();
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f3905a) {
                this.c = a.this.f.getShadowSize();
                this.d = a();
                this.f3905a = true;
            }
            com.google.android.material.h.a aVar = a.this.f;
            float f = this.c;
            aVar.setShadowSize(f + ((this.d - f) * valueAnimator.getAnimatedFraction()));
        }

        public void onAnimationEnd(Animator animator) {
            a.this.f.setShadowSize(this.d);
            this.f3905a = false;
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Rect rect) {
    }

    /* access modifiers changed from: package-private */
    public void c() {
    }

    /* access modifiers changed from: package-private */
    public boolean e() {
        return true;
    }

    a(VisibilityAwareImageButton visibilityAwareImageButton, com.google.android.material.h.b bVar) {
        this.x = visibilityAwareImageButton;
        this.y = bVar;
        this.C = new i();
        this.C.addState(r, a((f) new c()));
        this.C.addState(s, a((f) new b()));
        this.C.addState(t, a((f) new b()));
        this.C.addState(u, a((f) new b()));
        this.C.addState(v, a((f) new e()));
        this.C.addState(w, a((f) new C0072a()));
        this.g = this.x.getRotation();
    }

    /* access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        Drawable[] drawableArr;
        this.h = DrawableCompat.wrap(g());
        DrawableCompat.setTintList(this.h, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.h, mode);
        }
        this.i = DrawableCompat.wrap(g());
        DrawableCompat.setTintList(this.i, com.google.android.material.g.a.convertToRippleDrawableColor(colorStateList2));
        if (i2 > 0) {
            this.j = a(i2, colorStateList);
            drawableArr = new Drawable[]{this.j, this.h, this.i};
        } else {
            this.j = null;
            drawableArr = new Drawable[]{this.h, this.i};
        }
        this.k = new LayerDrawable(drawableArr);
        Context context = this.x.getContext();
        Drawable drawable = this.k;
        float radius = this.y.getRadius();
        float f2 = this.l;
        com.google.android.material.h.a aVar = new com.google.android.material.h.a(context, drawable, radius, f2, f2 + this.n);
        this.f = aVar;
        this.f.setAddPaddingForCorners(false);
        this.y.setBackgroundDrawable(this.f);
    }

    /* access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        Drawable drawable = this.i;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, com.google.android.material.g.a.convertToRippleDrawableColor(colorStateList));
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(float f2) {
        if (this.l != f2) {
            this.l = f2;
            a(this.l, this.m, this.n);
        }
    }

    /* access modifiers changed from: package-private */
    public float getElevation() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public final void b(float f2) {
        if (this.m != f2) {
            this.m = f2;
            a(this.l, this.m, this.n);
        }
    }

    /* access modifiers changed from: package-private */
    public final void c(float f2) {
        if (this.n != f2) {
            this.n = f2;
            a(this.l, this.m, this.n);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        d(this.p);
    }

    private void d(float f2) {
        this.p = f2;
        Matrix matrix = this.H;
        a(f2, matrix);
        this.x.setImageMatrix(matrix);
    }

    private void a(float f2, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.x.getDrawable();
        if (drawable != null && this.o != 0) {
            RectF rectF = this.F;
            RectF rectF2 = this.G;
            rectF.set(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
            int i2 = this.o;
            rectF2.set(0.0f, 0.0f, (float) i2, (float) i2);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i3 = this.o;
            matrix.postScale(f2, f2, ((float) i3) / 2.0f, ((float) i3) / 2.0f);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(float f2, float f3, float f4) {
        com.google.android.material.h.a aVar = this.f;
        if (aVar != null) {
            aVar.setShadowSize(f2, this.n + f2);
            d();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int[] iArr) {
        this.C.setState(iArr);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.C.jumpToCurrentState();
    }

    public void addOnHideAnimationListener(Animator.AnimatorListener animatorListener) {
        if (this.D == null) {
            this.D = new ArrayList<>();
        }
        this.D.add(animatorListener);
    }

    public void removeOnHideAnimationListener(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.D;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(final d dVar, final boolean z2) {
        if (!j()) {
            Animator animator = this.c;
            if (animator != null) {
                animator.cancel();
            }
            if (m()) {
                h hVar = this.e;
                if (hVar == null) {
                    hVar = l();
                }
                AnimatorSet a2 = a(hVar, 0.0f, 0.0f, 0.0f);
                a2.addListener(new AnimatorListenerAdapter() {
                    private boolean d;

                    public final void onAnimationStart(Animator animator) {
                        a.this.x.internalSetVisibility(0, z2);
                        a aVar = a.this;
                        aVar.f3895b = 1;
                        aVar.c = animator;
                        this.d = false;
                    }

                    public final void onAnimationCancel(Animator animator) {
                        this.d = true;
                    }

                    public final void onAnimationEnd(Animator animator) {
                        a aVar = a.this;
                        aVar.f3895b = 0;
                        aVar.c = null;
                        if (!this.d) {
                            aVar.x.internalSetVisibility(z2 ? 8 : 4, z2);
                            d dVar = dVar;
                            if (dVar != null) {
                                dVar.onHidden();
                            }
                        }
                    }
                });
                ArrayList<Animator.AnimatorListener> arrayList = this.D;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a2.addListener(it.next());
                    }
                }
                a2.start();
                return;
            }
            this.x.internalSetVisibility(z2 ? 8 : 4, z2);
            if (dVar != null) {
                dVar.onHidden();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(final d dVar, final boolean z2) {
        if (!i()) {
            Animator animator = this.c;
            if (animator != null) {
                animator.cancel();
            }
            if (m()) {
                if (this.x.getVisibility() != 0) {
                    this.x.setAlpha(0.0f);
                    this.x.setScaleY(0.0f);
                    this.x.setScaleX(0.0f);
                    d(0.0f);
                }
                h hVar = this.d;
                if (hVar == null) {
                    hVar = k();
                }
                AnimatorSet a2 = a(hVar, 1.0f, 1.0f, 1.0f);
                a2.addListener(new AnimatorListenerAdapter() {
                    public final void onAnimationStart(Animator animator) {
                        a.this.x.internalSetVisibility(0, z2);
                        a aVar = a.this;
                        aVar.f3895b = 2;
                        aVar.c = animator;
                    }

                    public final void onAnimationEnd(Animator animator) {
                        a aVar = a.this;
                        aVar.f3895b = 0;
                        aVar.c = null;
                        d dVar = dVar;
                        if (dVar != null) {
                            dVar.onShown();
                        }
                    }
                });
                ArrayList<Animator.AnimatorListener> arrayList = this.q;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a2.addListener(it.next());
                    }
                }
                a2.start();
                return;
            }
            this.x.internalSetVisibility(0, z2);
            this.x.setAlpha(1.0f);
            this.x.setScaleY(1.0f);
            this.x.setScaleX(1.0f);
            d(1.0f);
            if (dVar != null) {
                dVar.onShown();
            }
        }
    }

    private h k() {
        if (this.A == null) {
            this.A = h.createFromResource(this.x.getContext(), a.C0069a.design_fab_show_motion_spec);
        }
        return this.A;
    }

    private h l() {
        if (this.B == null) {
            this.B = h.createFromResource(this.x.getContext(), a.C0069a.design_fab_hide_motion_spec);
        }
        return this.B;
    }

    private AnimatorSet a(h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.x, View.ALPHA, new float[]{f2});
        hVar.getTiming("opacity").apply(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.x, View.SCALE_X, new float[]{f3});
        hVar.getTiming("scale").apply(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.x, View.SCALE_Y, new float[]{f3});
        hVar.getTiming("scale").apply(ofFloat3);
        arrayList.add(ofFloat3);
        a(f4, this.H);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.x, new com.google.android.material.a.f(), new g(), new Matrix[]{new Matrix(this.H)});
        hVar.getTiming("iconScale").apply(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        Rect rect = this.E;
        a(rect);
        b(rect);
        this.y.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* access modifiers changed from: package-private */
    public void a(Rect rect) {
        this.f.getPadding(rect);
    }

    /* access modifiers changed from: package-private */
    public final com.google.android.material.internal.a a(int i2, ColorStateList colorStateList) {
        Context context = this.x.getContext();
        com.google.android.material.internal.a f2 = f();
        f2.setGradientColors(ContextCompat.getColor(context, a.c.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, a.c.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, a.c.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, a.c.design_fab_stroke_end_outer_color));
        f2.setBorderWidth((float) i2);
        f2.setBorderTint(colorStateList);
        return f2;
    }

    /* access modifiers changed from: package-private */
    public com.google.android.material.internal.a f() {
        return new com.google.android.material.internal.a();
    }

    /* access modifiers changed from: package-private */
    public final GradientDrawable g() {
        GradientDrawable h2 = h();
        h2.setShape(1);
        h2.setColor(-1);
        return h2;
    }

    /* access modifiers changed from: package-private */
    public GradientDrawable h() {
        return new GradientDrawable();
    }

    /* access modifiers changed from: package-private */
    public final boolean i() {
        return this.x.getVisibility() != 0 ? this.f3895b == 2 : this.f3895b != 1;
    }

    /* access modifiers changed from: package-private */
    public final boolean j() {
        return this.x.getVisibility() == 0 ? this.f3895b == 1 : this.f3895b != 2;
    }

    private static ValueAnimator a(f fVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f3894a);
        valueAnimator.setDuration(100);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(new float[]{0.0f, 1.0f});
        return valueAnimator;
    }

    private boolean m() {
        return ViewCompat.isLaidOut(this.x) && !this.x.isInEditMode();
    }
}
