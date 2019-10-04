package c.e.a.c.k;

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
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import b.i.k.z;
import c.e.a.c.a.g;
import c.e.a.c.a.h;
import c.e.a.c.l.m;
import c.e.a.c.l.r;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: FloatingActionButtonImpl */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final TimeInterpolator f11342a = c.e.a.c.a.a.f11186c;

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f11343b = {16842919, 16842910};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f11344c = {16843623, 16842908, 16842910};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f11345d = {16842908, 16842910};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f11346e = {16843623, 16842910};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f11347f = {16842910};

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f11348g = new int[0];
    public ArrayList<Animator.AnimatorListener> A;
    public final r B;
    public final c.e.a.c.q.b C;
    public final Rect D = new Rect();
    public final RectF E = new RectF();
    public final RectF F = new RectF();
    public final Matrix G = new Matrix();
    public ViewTreeObserver.OnPreDrawListener H;

    /* renamed from: h  reason: collision with root package name */
    public int f11349h = 0;

    /* renamed from: i  reason: collision with root package name */
    public Animator f11350i;

    /* renamed from: j  reason: collision with root package name */
    public h f11351j;

    /* renamed from: k  reason: collision with root package name */
    public h f11352k;

    /* renamed from: l  reason: collision with root package name */
    public h f11353l;
    public h m;
    public final m n;
    public c.e.a.c.q.a o;
    public float p;
    public Drawable q;
    public Drawable r;
    public c.e.a.c.l.c s;
    public Drawable t;
    public float u;
    public float v;
    public float w;
    public int x;
    public float y = 1.0f;
    public ArrayList<Animator.AnimatorListener> z;

    /* compiled from: FloatingActionButtonImpl */
    private class a extends f {
        public a() {
            super(e.this, null);
        }

        public float a() {
            return 0.0f;
        }
    }

    /* compiled from: FloatingActionButtonImpl */
    private class b extends f {
        public b() {
            super(e.this, null);
        }

        public float a() {
            e eVar = e.this;
            return eVar.u + eVar.v;
        }
    }

    /* compiled from: FloatingActionButtonImpl */
    private class c extends f {
        public c() {
            super(e.this, null);
        }

        public float a() {
            e eVar = e.this;
            return eVar.u + eVar.w;
        }
    }

    /* compiled from: FloatingActionButtonImpl */
    interface d {
        void a();

        void b();
    }

    /* renamed from: c.e.a.c.k.e$e  reason: collision with other inner class name */
    /* compiled from: FloatingActionButtonImpl */
    private class C0133e extends f {
        public C0133e() {
            super(e.this, null);
        }

        public float a() {
            return e.this.u;
        }
    }

    /* compiled from: FloatingActionButtonImpl */
    private abstract class f extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        public boolean f11358a;

        /* renamed from: b  reason: collision with root package name */
        public float f11359b;

        /* renamed from: c  reason: collision with root package name */
        public float f11360c;

        public f() {
        }

        public abstract float a();

        public void onAnimationEnd(Animator animator) {
            e.this.o.b(this.f11360c);
            this.f11358a = false;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f11358a) {
                this.f11359b = e.this.o.c();
                this.f11360c = a();
                this.f11358a = true;
            }
            c.e.a.c.q.a aVar = e.this.o;
            float f2 = this.f11359b;
            aVar.b(f2 + ((this.f11360c - f2) * valueAnimator.getAnimatedFraction()));
        }

        public /* synthetic */ f(e eVar, b bVar) {
            this();
        }
    }

    public e(r rVar, c.e.a.c.q.b bVar) {
        this.B = rVar;
        this.C = bVar;
        this.n = new m();
        this.n.a(f11343b, a((f) new c()));
        this.n.a(f11344c, a((f) new b()));
        this.n.a(f11345d, a((f) new b()));
        this.n.a(f11346e, a((f) new b()));
        this.n.a(f11347f, a((f) new C0133e()));
        this.n.a(f11348g, a((f) new a()));
        this.p = this.B.getRotation();
    }

    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        Drawable[] drawableArr;
        this.q = b.i.c.a.a.i(a());
        b.i.c.a.a.a(this.q, colorStateList);
        if (mode != null) {
            b.i.c.a.a.a(this.q, mode);
        }
        this.r = b.i.c.a.a.i(a());
        b.i.c.a.a.a(this.r, c.e.a.c.p.a.a(colorStateList2));
        if (i2 > 0) {
            this.s = a(i2, colorStateList);
            drawableArr = new Drawable[]{this.s, this.q, this.r};
        } else {
            this.s = null;
            drawableArr = new Drawable[]{this.q, this.r};
        }
        this.t = new LayerDrawable(drawableArr);
        Context context = this.B.getContext();
        Drawable drawable = this.t;
        float b2 = this.C.b();
        float f2 = this.u;
        c.e.a.c.q.a aVar = new c.e.a.c.q.a(context, drawable, b2, f2, f2 + this.w);
        this.o = aVar;
        this.o.a(false);
        this.C.a(this.o);
    }

    public void b(ColorStateList colorStateList) {
        Drawable drawable = this.r;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, c.e.a.c.p.a.a(colorStateList));
        }
    }

    public void b(Rect rect) {
    }

    public final void c(float f2) {
        this.y = f2;
        Matrix matrix = this.G;
        a(f2, matrix);
        this.B.setImageMatrix(matrix);
    }

    public final void d(float f2) {
        if (this.w != f2) {
            this.w = f2;
            a(this.u, this.v, this.w);
        }
    }

    public final h e() {
        if (this.f11353l == null) {
            this.f11353l = h.a(this.B.getContext(), c.e.a.c.a.design_fab_show_motion_spec);
        }
        return this.f11353l;
    }

    public float f() {
        return this.u;
    }

    public final h g() {
        return this.f11352k;
    }

    public float h() {
        return this.v;
    }

    public float i() {
        return this.w;
    }

    public final h j() {
        return this.f11351j;
    }

    public boolean k() {
        boolean z2 = false;
        if (this.B.getVisibility() == 0) {
            if (this.f11349h == 1) {
                z2 = true;
            }
            return z2;
        }
        if (this.f11349h != 2) {
            z2 = true;
        }
        return z2;
    }

    public boolean l() {
        boolean z2 = false;
        if (this.B.getVisibility() != 0) {
            if (this.f11349h == 2) {
                z2 = true;
            }
            return z2;
        }
        if (this.f11349h != 1) {
            z2 = true;
        }
        return z2;
    }

    public void m() {
        this.n.b();
    }

    public c.e.a.c.l.c n() {
        return new c.e.a.c.l.c();
    }

    public GradientDrawable o() {
        return new GradientDrawable();
    }

    public void p() {
        if (t()) {
            b();
            this.B.getViewTreeObserver().addOnPreDrawListener(this.H);
        }
    }

    public void q() {
    }

    public void r() {
        if (this.H != null) {
            this.B.getViewTreeObserver().removeOnPreDrawListener(this.H);
            this.H = null;
        }
    }

    public void s() {
        float rotation = this.B.getRotation();
        if (this.p != rotation) {
            this.p = rotation;
            v();
        }
    }

    public boolean t() {
        return true;
    }

    public final boolean u() {
        return z.B(this.B) && !this.B.isInEditMode();
    }

    public final void v() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.p % 90.0f != 0.0f) {
                if (this.B.getLayerType() != 1) {
                    this.B.setLayerType(1, null);
                }
            } else if (this.B.getLayerType() != 0) {
                this.B.setLayerType(0, null);
            }
        }
        c.e.a.c.q.a aVar = this.o;
        if (aVar != null) {
            aVar.a(-this.p);
        }
        c.e.a.c.l.c cVar = this.s;
        if (cVar != null) {
            cVar.b(-this.p);
        }
    }

    public final void w() {
        c(this.y);
    }

    public final void x() {
        Rect rect = this.D;
        a(rect);
        b(rect);
        this.C.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void b(float f2) {
        if (this.v != f2) {
            this.v = f2;
            a(this.u, this.v, this.w);
        }
    }

    public void d(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.z;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    public void c(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.A;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    public final h d() {
        if (this.m == null) {
            this.m = h.a(this.B.getContext(), c.e.a.c.a.design_fab_hide_motion_spec);
        }
        return this.m;
    }

    public final void b(h hVar) {
        this.f11351j = hVar;
    }

    public final Drawable c() {
        return this.t;
    }

    public void b(Animator.AnimatorListener animatorListener) {
        if (this.z == null) {
            this.z = new ArrayList<>();
        }
        this.z.add(animatorListener);
    }

    public void b(d dVar, boolean z2) {
        if (!l()) {
            Animator animator = this.f11350i;
            if (animator != null) {
                animator.cancel();
            }
            if (u()) {
                if (this.B.getVisibility() != 0) {
                    this.B.setAlpha(0.0f);
                    this.B.setScaleY(0.0f);
                    this.B.setScaleX(0.0f);
                    c(0.0f);
                }
                h hVar = this.f11351j;
                if (hVar == null) {
                    hVar = e();
                }
                AnimatorSet a2 = a(hVar, 1.0f, 1.0f, 1.0f);
                a2.addListener(new c(this, z2, dVar));
                ArrayList<Animator.AnimatorListener> arrayList = this.z;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a2.addListener(it.next());
                    }
                }
                a2.start();
            } else {
                this.B.a(0, z2);
                this.B.setAlpha(1.0f);
                this.B.setScaleY(1.0f);
                this.B.setScaleX(1.0f);
                c(1.0f);
                if (dVar != null) {
                    dVar.a();
                }
            }
        }
    }

    public void a(ColorStateList colorStateList) {
        Drawable drawable = this.q;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, colorStateList);
        }
        c.e.a.c.l.c cVar = this.s;
        if (cVar != null) {
            cVar.a(colorStateList);
        }
    }

    public void a(PorterDuff.Mode mode) {
        Drawable drawable = this.q;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, mode);
        }
    }

    public final void a(float f2) {
        if (this.u != f2) {
            this.u = f2;
            a(this.u, this.v, this.w);
        }
    }

    public final void a(int i2) {
        if (this.x != i2) {
            this.x = i2;
            w();
        }
    }

    public final void a(float f2, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.B.getDrawable();
        if (drawable != null && this.x != 0) {
            RectF rectF = this.E;
            RectF rectF2 = this.F;
            rectF.set(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
            int i2 = this.x;
            rectF2.set(0.0f, 0.0f, (float) i2, (float) i2);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i3 = this.x;
            matrix.postScale(f2, f2, ((float) i3) / 2.0f, ((float) i3) / 2.0f);
        }
    }

    public final void b() {
        if (this.H == null) {
            this.H = new d(this);
        }
    }

    public final void a(h hVar) {
        this.f11352k = hVar;
    }

    public void a(float f2, float f3, float f4) {
        c.e.a.c.q.a aVar = this.o;
        if (aVar != null) {
            aVar.a(f2, this.w + f2);
            x();
        }
    }

    public void a(int[] iArr) {
        this.n.a(iArr);
    }

    public void a(Animator.AnimatorListener animatorListener) {
        if (this.A == null) {
            this.A = new ArrayList<>();
        }
        this.A.add(animatorListener);
    }

    public void a(d dVar, boolean z2) {
        if (!k()) {
            Animator animator = this.f11350i;
            if (animator != null) {
                animator.cancel();
            }
            if (u()) {
                h hVar = this.f11352k;
                if (hVar == null) {
                    hVar = d();
                }
                AnimatorSet a2 = a(hVar, 0.0f, 0.0f, 0.0f);
                a2.addListener(new b(this, z2, dVar));
                ArrayList<Animator.AnimatorListener> arrayList = this.A;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a2.addListener(it.next());
                    }
                }
                a2.start();
            } else {
                this.B.a(z2 ? 8 : 4, z2);
                if (dVar != null) {
                    dVar.b();
                }
            }
        }
    }

    public final AnimatorSet a(h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.B, View.ALPHA, new float[]{f2});
        hVar.a("opacity").a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.B, View.SCALE_X, new float[]{f3});
        hVar.a("scale").a((Animator) ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.B, View.SCALE_Y, new float[]{f3});
        hVar.a("scale").a((Animator) ofFloat3);
        arrayList.add(ofFloat3);
        a(f4, this.G);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.B, new c.e.a.c.a.f(), new g(), new Matrix[]{new Matrix(this.G)});
        hVar.a("iconScale").a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        c.e.a.c.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public void a(Rect rect) {
        this.o.getPadding(rect);
    }

    public c.e.a.c.l.c a(int i2, ColorStateList colorStateList) {
        Context context = this.B.getContext();
        c.e.a.c.l.c n2 = n();
        n2.a(b.i.b.a.a(context, c.e.a.c.c.design_fab_stroke_top_outer_color), b.i.b.a.a(context, c.e.a.c.c.design_fab_stroke_top_inner_color), b.i.b.a.a(context, c.e.a.c.c.design_fab_stroke_end_inner_color), b.i.b.a.a(context, c.e.a.c.c.design_fab_stroke_end_outer_color));
        n2.a((float) i2);
        n2.a(colorStateList);
        return n2;
    }

    public GradientDrawable a() {
        GradientDrawable o2 = o();
        o2.setShape(1);
        o2.setColor(-1);
        return o2;
    }

    public final ValueAnimator a(f fVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f11342a);
        valueAnimator.setDuration(100);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(new float[]{0.0f, 1.0f});
        return valueAnimator;
    }
}
