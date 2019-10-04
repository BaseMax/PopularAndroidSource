package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.i.k.C0258a;
import b.i.k.a.c;
import b.i.k.z;
import c.e.a.c.h;
import c.e.a.c.k;
import c.e.a.c.l.p;
import c.e.a.c.s.n;
import c.e.a.c.s.q;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.util.List;

public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f13385a = new Handler(Looper.getMainLooper(), new c());

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f13386b;

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f13387c = {c.e.a.c.b.snackbarStyle};

    /* renamed from: d  reason: collision with root package name */
    public final ViewGroup f13388d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f13389e;

    /* renamed from: f  reason: collision with root package name */
    public final e f13390f;

    /* renamed from: g  reason: collision with root package name */
    public final n f13391g;

    /* renamed from: h  reason: collision with root package name */
    public int f13392h;

    /* renamed from: i  reason: collision with root package name */
    public List<a<B>> f13393i;

    /* renamed from: j  reason: collision with root package name */
    public Behavior f13394j;

    /* renamed from: k  reason: collision with root package name */
    public final AccessibilityManager f13395k;

    /* renamed from: l  reason: collision with root package name */
    public final q.a f13396l = new f(this);

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: k  reason: collision with root package name */
        public final b f13397k = new b(this);

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f13397k.a(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        public final void a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f13397k.a(baseTransientBottomBar);
        }

        public boolean a(View view) {
            return this.f13397k.a(view);
        }
    }

    public static abstract class a<B> {
        public void a(B b2) {
        }

        public void a(B b2, int i2) {
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public q.a f13398a;

        public b(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.b(0.1f);
            swipeDismissBehavior.a(0.6f);
            swipeDismissBehavior.a(0);
        }

        public void a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f13398a = baseTransientBottomBar.f13396l;
        }

        public boolean a(View view) {
            return view instanceof e;
        }

        public void a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    q.a().g(this.f13398a);
                }
            } else if (coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                q.a().f(this.f13398a);
            }
        }
    }

    protected interface c {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    protected interface d {
        void a(View view, int i2, int i3, int i4, int i5);
    }

    protected static class e extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        public final AccessibilityManager f13399a;

        /* renamed from: b  reason: collision with root package name */
        public final c.a f13400b;

        /* renamed from: c  reason: collision with root package name */
        public d f13401c;

        /* renamed from: d  reason: collision with root package name */
        public c f13402d;

        public e(Context context) {
            this(context, null);
        }

        /* access modifiers changed from: private */
        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            c cVar = this.f13402d;
            if (cVar != null) {
                cVar.onViewAttachedToWindow(this);
            }
            z.G(this);
        }

        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            c cVar = this.f13402d;
            if (cVar != null) {
                cVar.onViewDetachedFromWindow(this);
            }
            b.i.k.a.c.b(this.f13399a, this.f13400b);
        }

        public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            d dVar = this.f13401c;
            if (dVar != null) {
                dVar.a(this, i2, i3, i4, i5);
            }
        }

        public void setOnAttachStateChangeListener(c cVar) {
            this.f13402d = cVar;
        }

        public void setOnLayoutChangeListener(d dVar) {
            this.f13401c = dVar;
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(k.SnackbarLayout_elevation)) {
                z.a((View) this, (float) obtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            this.f13399a = (AccessibilityManager) context.getSystemService("accessibility");
            this.f13400b = new m(this);
            b.i.k.a.c.a(this.f13399a, this.f13400b);
            setClickableOrFocusableBasedOnAccessibility(this.f13399a.isTouchExplorationEnabled());
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        f13386b = i2 >= 16 && i2 <= 19;
    }

    public BaseTransientBottomBar(ViewGroup viewGroup, View view, n nVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        } else if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        } else if (nVar != null) {
            this.f13388d = viewGroup;
            this.f13391g = nVar;
            this.f13389e = viewGroup.getContext();
            p.a(this.f13389e);
            this.f13390f = (e) LayoutInflater.from(this.f13389e).inflate(g(), this.f13388d, false);
            this.f13390f.addView(view);
            z.f(this.f13390f, 1);
            z.g(this.f13390f, 1);
            z.a((View) this.f13390f, true);
            z.a((View) this.f13390f, (b.i.k.q) new d(this));
            z.a((View) this.f13390f, (C0258a) new e(this));
            this.f13395k = (AccessibilityManager) this.f13389e.getSystemService("accessibility");
        } else {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
    }

    public void b(int i2) {
        q.a().a(this.f13396l, i2);
    }

    public void c() {
        b(3);
    }

    public Context d() {
        return this.f13389e;
    }

    public B e(int i2) {
        this.f13392h = i2;
        return this;
    }

    public SwipeDismissBehavior<? extends View> f() {
        return new Behavior();
    }

    public int g() {
        return i() ? h.mtrl_layout_snackbar : h.design_layout_snackbar;
    }

    public final int h() {
        int height = this.f13390f.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f13390f.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    public boolean i() {
        TypedArray obtainStyledAttributes = this.f13389e.obtainStyledAttributes(f13387c);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            return true;
        }
        return false;
    }

    public boolean j() {
        return q.a().a(this.f13396l);
    }

    public void k() {
        q.a().e(this.f13396l);
        List<a<B>> list = this.f13393i;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f13393i.get(size).a(this);
            }
        }
    }

    public boolean l() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.f13395k.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            return false;
        }
        return true;
    }

    public void m() {
        q.a().a(e(), this.f13396l);
    }

    public final void n() {
        if (this.f13390f.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f13390f.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.e) {
                CoordinatorLayout.e eVar = (CoordinatorLayout.e) layoutParams;
                SwipeDismissBehavior swipeDismissBehavior = this.f13394j;
                if (swipeDismissBehavior == null) {
                    swipeDismissBehavior = f();
                }
                if (swipeDismissBehavior instanceof Behavior) {
                    ((Behavior) swipeDismissBehavior).a((BaseTransientBottomBar<?>) this);
                }
                swipeDismissBehavior.a((SwipeDismissBehavior.a) new g(this));
                eVar.a((CoordinatorLayout.b) swipeDismissBehavior);
                eVar.f573g = 80;
            }
            this.f13388d.addView(this.f13390f);
        }
        this.f13390f.setOnAttachStateChangeListener(new i(this));
        if (!z.B(this.f13390f)) {
            this.f13390f.setOnLayoutChangeListener(new j(this));
        } else if (l()) {
            b();
        } else {
            k();
        }
    }

    public void b() {
        int h2 = h();
        if (f13386b) {
            z.e(this.f13390f, h2);
        } else {
            this.f13390f.setTranslationY((float) h2);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(new int[]{h2, 0});
        valueAnimator.setInterpolator(c.e.a.c.a.a.f11185b);
        valueAnimator.setDuration(250);
        valueAnimator.addListener(new k(this));
        valueAnimator.addUpdateListener(new l(this, h2));
        valueAnimator.start();
    }

    public final void c(int i2) {
        if (!l() || this.f13390f.getVisibility() != 0) {
            d(i2);
        } else {
            a(i2);
        }
    }

    public void d(int i2) {
        q.a().d(this.f13396l);
        List<a<B>> list = this.f13393i;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f13393i.get(size).a(this, i2);
            }
        }
        ViewParent parent = this.f13390f.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f13390f);
        }
    }

    public int e() {
        return this.f13392h;
    }

    public final void a(int i2) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(new int[]{0, h()});
        valueAnimator.setInterpolator(c.e.a.c.a.a.f11185b);
        valueAnimator.setDuration(250);
        valueAnimator.addListener(new a(this, i2));
        valueAnimator.addUpdateListener(new b(this));
        valueAnimator.start();
    }
}
