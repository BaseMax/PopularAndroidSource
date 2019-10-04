package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.i.k.z;
import b.k.b.g;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* renamed from: a  reason: collision with root package name */
    public g f13314a;

    /* renamed from: b  reason: collision with root package name */
    public a f13315b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f13316c;

    /* renamed from: d  reason: collision with root package name */
    public float f13317d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    public boolean f13318e;

    /* renamed from: f  reason: collision with root package name */
    public int f13319f = 2;

    /* renamed from: g  reason: collision with root package name */
    public float f13320g = 0.5f;

    /* renamed from: h  reason: collision with root package name */
    public float f13321h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    public float f13322i = 0.5f;

    /* renamed from: j  reason: collision with root package name */
    public final g.a f13323j = new b(this);

    public interface a {
        void a(int i2);

        void a(View view);
    }

    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final View f13324a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f13325b;

        public b(View view, boolean z) {
            this.f13324a = view;
            this.f13325b = z;
        }

        public void run() {
            g gVar = SwipeDismissBehavior.this.f13314a;
            if (gVar != null && gVar.a(true)) {
                z.a(this.f13324a, (Runnable) this);
            } else if (this.f13325b) {
                a aVar = SwipeDismissBehavior.this.f13315b;
                if (aVar != null) {
                    aVar.a(this.f13324a);
                }
            }
        }
    }

    public static float b(float f2, float f3, float f4) {
        return (f4 - f2) / (f3 - f2);
    }

    public void a(a aVar) {
        this.f13315b = aVar;
    }

    public boolean a(View view) {
        return true;
    }

    public void b(float f2) {
        this.f13321h = a(0.0f, f2, 1.0f);
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f13316c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f13316c = coordinatorLayout.a((View) v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.f13316c;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f13316c = false;
        }
        if (!z) {
            return false;
        }
        a((ViewGroup) coordinatorLayout);
        return this.f13314a.c(motionEvent);
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        g gVar = this.f13314a;
        if (gVar == null) {
            return false;
        }
        gVar.a(motionEvent);
        return true;
    }

    public void a(int i2) {
        this.f13319f = i2;
    }

    public void a(float f2) {
        this.f13322i = a(0.0f, f2, 1.0f);
    }

    public final void a(ViewGroup viewGroup) {
        g gVar;
        if (this.f13314a == null) {
            if (this.f13318e) {
                gVar = g.a(viewGroup, this.f13317d, this.f13323j);
            } else {
                gVar = g.a(viewGroup, this.f13323j);
            }
            this.f13314a = gVar;
        }
    }

    public static float a(float f2, float f3, float f4) {
        return Math.min(Math.max(f2, f3), f4);
    }

    public static int a(int i2, int i3, int i4) {
        return Math.min(Math.max(i2, i3), i4);
    }
}
