package com.farsitel.bazaar.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import androidx.appcompat.widget.AppCompatImageView;

public class TouchImageView extends AppCompatImageView {
    public int A;
    public int B;
    public int C;
    public float D;
    public float E;
    public float F;
    public float G;
    public ScaleGestureDetector H;
    public GestureDetector I;
    public GestureDetector.OnDoubleTapListener J;
    public View.OnTouchListener K;
    public e L;

    /* renamed from: c  reason: collision with root package name */
    public float f12392c;

    /* renamed from: d  reason: collision with root package name */
    public Matrix f12393d;

    /* renamed from: e  reason: collision with root package name */
    public Matrix f12394e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12395f;

    /* renamed from: g  reason: collision with root package name */
    public FixedPixel f12396g;

    /* renamed from: h  reason: collision with root package name */
    public FixedPixel f12397h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f12398i;

    /* renamed from: j  reason: collision with root package name */
    public State f12399j;

    /* renamed from: k  reason: collision with root package name */
    public float f12400k;

    /* renamed from: l  reason: collision with root package name */
    public float f12401l;
    public boolean m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float[] r;
    public Context s;
    public c t;
    public int u;
    public ImageView.ScaleType v;
    public boolean w;
    public boolean x;
    public h y;
    public int z;

    public enum FixedPixel {
        CENTER,
        TOP_LEFT,
        BOTTOM_RIGHT
    }

    private enum State {
        NONE,
        DRAG,
        ZOOM,
        FLING,
        ANIMATE_ZOOM
    }

    @TargetApi(9)
    private class a {

        /* renamed from: a  reason: collision with root package name */
        public OverScroller f12404a;

        public a(Context context) {
            this.f12404a = new OverScroller(context);
        }

        public void a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f12404a.fling(i2, i3, i4, i5, i6, i7, i8, i9);
        }

        public int b() {
            return this.f12404a.getCurrX();
        }

        public int c() {
            return this.f12404a.getCurrY();
        }

        public boolean d() {
            return this.f12404a.isFinished();
        }

        public void a(boolean z) {
            this.f12404a.forceFinished(z);
        }

        public boolean a() {
            this.f12404a.computeScrollOffset();
            return this.f12404a.computeScrollOffset();
        }
    }

    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public long f12406a;

        /* renamed from: b  reason: collision with root package name */
        public float f12407b;

        /* renamed from: c  reason: collision with root package name */
        public float f12408c;

        /* renamed from: d  reason: collision with root package name */
        public float f12409d;

        /* renamed from: e  reason: collision with root package name */
        public float f12410e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f12411f;

        /* renamed from: g  reason: collision with root package name */
        public AccelerateDecelerateInterpolator f12412g = new AccelerateDecelerateInterpolator();

        /* renamed from: h  reason: collision with root package name */
        public PointF f12413h;

        /* renamed from: i  reason: collision with root package name */
        public PointF f12414i;

        public b(float f2, float f3, float f4, boolean z) {
            TouchImageView.this.setState(State.ANIMATE_ZOOM);
            this.f12406a = System.currentTimeMillis();
            this.f12407b = TouchImageView.this.f12392c;
            this.f12408c = f2;
            this.f12411f = z;
            PointF a2 = TouchImageView.this.a(f3, f4, false);
            this.f12409d = a2.x;
            this.f12410e = a2.y;
            this.f12413h = TouchImageView.this.a(this.f12409d, this.f12410e);
            this.f12414i = new PointF((float) (TouchImageView.this.z / 2), (float) (TouchImageView.this.A / 2));
        }

        public final float a() {
            return this.f12412g.getInterpolation(Math.min(1.0f, ((float) (System.currentTimeMillis() - this.f12406a)) / 500.0f));
        }

        public final void b(float f2) {
            PointF pointF = this.f12413h;
            float f3 = pointF.x;
            PointF pointF2 = this.f12414i;
            float f4 = f3 + ((pointF2.x - f3) * f2);
            float f5 = pointF.y;
            float f6 = f5 + (f2 * (pointF2.y - f5));
            PointF a2 = TouchImageView.this.a(this.f12409d, this.f12410e);
            TouchImageView.this.f12393d.postTranslate(f4 - a2.x, f6 - a2.y);
        }

        public void run() {
            if (TouchImageView.this.getDrawable() == null) {
                TouchImageView.this.setState(State.NONE);
                return;
            }
            float a2 = a();
            TouchImageView.this.a(a(a2), this.f12409d, this.f12410e, this.f12411f);
            b(a2);
            TouchImageView.this.d();
            TouchImageView touchImageView = TouchImageView.this;
            touchImageView.setImageMatrix(touchImageView.f12393d);
            if (TouchImageView.this.L != null) {
                TouchImageView.this.L.a();
            }
            if (a2 < 1.0f) {
                TouchImageView.this.a((Runnable) this);
            } else {
                TouchImageView.this.setState(State.NONE);
            }
        }

        public final double a(float f2) {
            float f3 = this.f12407b;
            double d2 = (double) (f3 + (f2 * (this.f12408c - f3)));
            double q = (double) TouchImageView.this.f12392c;
            Double.isNaN(d2);
            Double.isNaN(q);
            return d2 / q;
        }
    }

    private class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public a f12416a;

        /* renamed from: b  reason: collision with root package name */
        public int f12417b;

        /* renamed from: c  reason: collision with root package name */
        public int f12418c;

        public c(int i2, int i3) {
            int i4;
            int i5;
            int i6;
            int i7;
            TouchImageView.this.setState(State.FLING);
            this.f12416a = new a(TouchImageView.this.s);
            TouchImageView.this.f12393d.getValues(TouchImageView.this.r);
            int i8 = (int) TouchImageView.this.r[2];
            int i9 = (int) TouchImageView.this.r[5];
            if (TouchImageView.this.getImageWidth() > ((float) TouchImageView.this.z)) {
                i5 = TouchImageView.this.z - ((int) TouchImageView.this.getImageWidth());
                i4 = 0;
            } else {
                i5 = i8;
                i4 = i5;
            }
            if (TouchImageView.this.getImageHeight() > ((float) TouchImageView.this.A)) {
                i7 = TouchImageView.this.A - ((int) TouchImageView.this.getImageHeight());
                i6 = 0;
            } else {
                i7 = i9;
                i6 = i7;
            }
            this.f12416a.a(i8, i9, i2, i3, i5, i4, i7, i6);
            this.f12417b = i8;
            this.f12418c = i9;
        }

        public void a() {
            if (this.f12416a != null) {
                TouchImageView.this.setState(State.NONE);
                this.f12416a.a(true);
            }
        }

        public void run() {
            if (TouchImageView.this.L != null) {
                TouchImageView.this.L.a();
            }
            if (this.f12416a.d()) {
                this.f12416a = null;
                return;
            }
            if (this.f12416a.a()) {
                int b2 = this.f12416a.b();
                int c2 = this.f12416a.c();
                int i2 = b2 - this.f12417b;
                int i3 = c2 - this.f12418c;
                this.f12417b = b2;
                this.f12418c = c2;
                TouchImageView.this.f12393d.postTranslate((float) i2, (float) i3);
                TouchImageView.this.e();
                TouchImageView touchImageView = TouchImageView.this;
                touchImageView.setImageMatrix(touchImageView.f12393d);
                TouchImageView.this.a((Runnable) this);
            }
        }
    }

    private class d extends GestureDetector.SimpleOnGestureListener {
        public d() {
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean z = false;
            if (!TouchImageView.this.f()) {
                return false;
            }
            if (TouchImageView.this.J != null) {
                z = TouchImageView.this.J.onDoubleTap(motionEvent);
            }
            if (TouchImageView.this.f12399j != State.NONE) {
                return z;
            }
            b bVar = new b(TouchImageView.this.f12392c == TouchImageView.this.f12401l ? TouchImageView.this.o : TouchImageView.this.f12401l, motionEvent.getX(), motionEvent.getY(), false);
            TouchImageView.this.a((Runnable) bVar);
            return true;
        }

        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (TouchImageView.this.J != null) {
                return TouchImageView.this.J.onDoubleTapEvent(motionEvent);
            }
            return false;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            if (TouchImageView.this.t != null) {
                TouchImageView.this.t.a();
            }
            TouchImageView touchImageView = TouchImageView.this;
            c unused = touchImageView.t = new c((int) f2, (int) f3);
            TouchImageView touchImageView2 = TouchImageView.this;
            touchImageView2.a((Runnable) touchImageView2.t);
            return super.onFling(motionEvent, motionEvent2, f2, f3);
        }

        public void onLongPress(MotionEvent motionEvent) {
            TouchImageView.this.performLongClick();
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (TouchImageView.this.J != null) {
                return TouchImageView.this.J.onSingleTapConfirmed(motionEvent);
            }
            return TouchImageView.this.performClick();
        }

        public /* synthetic */ d(TouchImageView touchImageView, d dVar) {
            this();
        }
    }

    public interface e {
        void a();
    }

    private class f implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        public PointF f12421a;

        public f() {
            this.f12421a = new PointF();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:16:0x005b, code lost:
            if (r1 != 6) goto L_0x00d3;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
            /*
                r7 = this;
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                android.graphics.drawable.Drawable r0 = r0.getDrawable()
                if (r0 != 0) goto L_0x0011
                com.farsitel.bazaar.widget.TouchImageView r8 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r9 = com.farsitel.bazaar.widget.TouchImageView.State.NONE
                r8.setState(r9)
                r8 = 0
                return r8
            L_0x0011:
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                android.view.ScaleGestureDetector r0 = r0.H
                r0.onTouchEvent(r9)
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                android.view.GestureDetector r0 = r0.I
                r0.onTouchEvent(r9)
                android.graphics.PointF r0 = new android.graphics.PointF
                float r1 = r9.getX()
                float r2 = r9.getY()
                r0.<init>(r1, r2)
                com.farsitel.bazaar.widget.TouchImageView r1 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r1 = r1.f12399j
                com.farsitel.bazaar.widget.TouchImageView$State r2 = com.farsitel.bazaar.widget.TouchImageView.State.NONE
                r3 = 1
                if (r1 == r2) goto L_0x004f
                com.farsitel.bazaar.widget.TouchImageView r1 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r1 = r1.f12399j
                com.farsitel.bazaar.widget.TouchImageView$State r2 = com.farsitel.bazaar.widget.TouchImageView.State.DRAG
                if (r1 == r2) goto L_0x004f
                com.farsitel.bazaar.widget.TouchImageView r1 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r1 = r1.f12399j
                com.farsitel.bazaar.widget.TouchImageView$State r2 = com.farsitel.bazaar.widget.TouchImageView.State.FLING
                if (r1 != r2) goto L_0x00d3
            L_0x004f:
                int r1 = r9.getAction()
                if (r1 == 0) goto L_0x00b6
                if (r1 == r3) goto L_0x00ae
                r2 = 2
                if (r1 == r2) goto L_0x005e
                r0 = 6
                if (r1 == r0) goto L_0x00ae
                goto L_0x00d3
            L_0x005e:
                com.farsitel.bazaar.widget.TouchImageView r1 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r1 = r1.f12399j
                com.farsitel.bazaar.widget.TouchImageView$State r2 = com.farsitel.bazaar.widget.TouchImageView.State.DRAG
                if (r1 != r2) goto L_0x00d3
                float r1 = r0.x
                android.graphics.PointF r2 = r7.f12421a
                float r4 = r2.x
                float r1 = r1 - r4
                float r4 = r0.y
                float r2 = r2.y
                float r4 = r4 - r2
                com.farsitel.bazaar.widget.TouchImageView r2 = com.farsitel.bazaar.widget.TouchImageView.this
                int r5 = r2.z
                float r5 = (float) r5
                com.farsitel.bazaar.widget.TouchImageView r6 = com.farsitel.bazaar.widget.TouchImageView.this
                float r6 = r6.getImageWidth()
                float r1 = r2.a((float) r1, (float) r5, (float) r6)
                com.farsitel.bazaar.widget.TouchImageView r2 = com.farsitel.bazaar.widget.TouchImageView.this
                int r5 = r2.A
                float r5 = (float) r5
                com.farsitel.bazaar.widget.TouchImageView r6 = com.farsitel.bazaar.widget.TouchImageView.this
                float r6 = r6.getImageHeight()
                float r2 = r2.a((float) r4, (float) r5, (float) r6)
                com.farsitel.bazaar.widget.TouchImageView r4 = com.farsitel.bazaar.widget.TouchImageView.this
                android.graphics.Matrix r4 = r4.f12393d
                r4.postTranslate(r1, r2)
                com.farsitel.bazaar.widget.TouchImageView r1 = com.farsitel.bazaar.widget.TouchImageView.this
                r1.e()
                android.graphics.PointF r1 = r7.f12421a
                float r2 = r0.x
                float r0 = r0.y
                r1.set(r2, r0)
                goto L_0x00d3
            L_0x00ae:
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r1 = com.farsitel.bazaar.widget.TouchImageView.State.NONE
                r0.setState(r1)
                goto L_0x00d3
            L_0x00b6:
                android.graphics.PointF r1 = r7.f12421a
                r1.set(r0)
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$c r0 = r0.t
                if (r0 == 0) goto L_0x00cc
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$c r0 = r0.t
                r0.a()
            L_0x00cc:
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$State r1 = com.farsitel.bazaar.widget.TouchImageView.State.DRAG
                r0.setState(r1)
            L_0x00d3:
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                android.graphics.Matrix r1 = r0.f12393d
                r0.setImageMatrix(r1)
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                android.view.View$OnTouchListener r0 = r0.K
                if (r0 == 0) goto L_0x00ed
                com.farsitel.bazaar.widget.TouchImageView r0 = com.farsitel.bazaar.widget.TouchImageView.this
                android.view.View$OnTouchListener r0 = r0.K
                r0.onTouch(r8, r9)
            L_0x00ed:
                com.farsitel.bazaar.widget.TouchImageView r8 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$e r8 = r8.L
                if (r8 == 0) goto L_0x00fe
                com.farsitel.bazaar.widget.TouchImageView r8 = com.farsitel.bazaar.widget.TouchImageView.this
                com.farsitel.bazaar.widget.TouchImageView$e r8 = r8.L
                r8.a()
            L_0x00fe:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.widget.TouchImageView.f.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }

        public /* synthetic */ f(TouchImageView touchImageView, d dVar) {
            this();
        }
    }

    private class g extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public g() {
        }

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            TouchImageView.this.a((double) scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), true);
            if (TouchImageView.this.L != null) {
                TouchImageView.this.L.a();
            }
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            TouchImageView.this.setState(State.ZOOM);
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            super.onScaleEnd(scaleGestureDetector);
            TouchImageView.this.setState(State.NONE);
            float q = TouchImageView.this.f12392c;
            boolean z = true;
            if (TouchImageView.this.f12392c > TouchImageView.this.o) {
                q = TouchImageView.this.o;
            } else if (TouchImageView.this.f12392c < TouchImageView.this.f12401l) {
                q = TouchImageView.this.f12401l;
            } else {
                z = false;
            }
            float f2 = q;
            if (z) {
                TouchImageView touchImageView = TouchImageView.this;
                b bVar = new b(f2, (float) (touchImageView.z / 2), (float) (TouchImageView.this.A / 2), true);
                TouchImageView.this.a((Runnable) bVar);
            }
        }

        public /* synthetic */ g(TouchImageView touchImageView, d dVar) {
            this();
        }
    }

    private class h {

        /* renamed from: a  reason: collision with root package name */
        public float f12424a;

        /* renamed from: b  reason: collision with root package name */
        public float f12425b;

        /* renamed from: c  reason: collision with root package name */
        public float f12426c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView.ScaleType f12427d;

        public h(float f2, float f3, float f4, ImageView.ScaleType scaleType) {
            this.f12424a = f2;
            this.f12425b = f3;
            this.f12426c = f4;
            this.f12427d = scaleType;
        }
    }

    public TouchImageView(Context context) {
        this(context, null);
    }

    /* access modifiers changed from: private */
    public float getImageHeight() {
        return this.E * this.f12392c;
    }

    /* access modifiers changed from: private */
    public float getImageWidth() {
        return this.D * this.f12392c;
    }

    /* access modifiers changed from: private */
    public void setState(State state) {
        this.f12399j = state;
    }

    public final float a(float f2, float f3, float f4) {
        if (f4 <= f3) {
            return 0.0f;
        }
        return f2;
    }

    public final float b(float f2, float f3, float f4) {
        float f5;
        float f6;
        if (f4 <= f3) {
            f5 = f3 - f4;
            f6 = 0.0f;
        } else {
            f6 = f3 - f4;
            f5 = 0.0f;
        }
        if (f2 < f6) {
            return (-f2) + f6;
        }
        if (f2 > f5) {
            return (-f2) + f5;
        }
        return 0.0f;
    }

    public boolean canScrollHorizontally(int i2) {
        this.f12393d.getValues(this.r);
        float f2 = this.r[2];
        if (getImageWidth() < ((float) this.z)) {
            return false;
        }
        if (f2 >= -1.0f && i2 < 0) {
            return false;
        }
        if (Math.abs(f2) + ((float) this.z) + 1.0f < getImageWidth() || i2 <= 0) {
            return true;
        }
        return false;
    }

    public boolean canScrollVertically(int i2) {
        this.f12393d.getValues(this.r);
        float f2 = this.r[5];
        if (getImageHeight() < ((float) this.A)) {
            return false;
        }
        if (f2 >= -1.0f && i2 < 0) {
            return false;
        }
        if (Math.abs(f2) + ((float) this.A) + 1.0f < getImageHeight() || i2 <= 0) {
            return true;
        }
        return false;
    }

    public float getCurrentZoom() {
        return this.f12392c;
    }

    public float getMaxZoom() {
        return this.o;
    }

    public float getMinZoom() {
        return this.f12401l;
    }

    public FixedPixel getOrientationChangeFixedPixel() {
        return this.f12396g;
    }

    public ImageView.ScaleType getScaleType() {
        return this.v;
    }

    public PointF getScrollPosition() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        PointF a2 = a((float) (this.z / 2), (float) (this.A / 2), true);
        a2.x /= (float) intrinsicWidth;
        a2.y /= (float) intrinsicHeight;
        return a2;
    }

    public FixedPixel getViewSizeChangeFixedPixel() {
        return this.f12397h;
    }

    public RectF getZoomedRect() {
        if (this.v != ImageView.ScaleType.FIT_XY) {
            PointF a2 = a(0.0f, 0.0f, true);
            PointF a3 = a((float) this.z, (float) this.A, true);
            float intrinsicWidth = (float) getDrawable().getIntrinsicWidth();
            float intrinsicHeight = (float) getDrawable().getIntrinsicHeight();
            return new RectF(a2.x / intrinsicWidth, a2.y / intrinsicHeight, a3.x / intrinsicWidth, a3.y / intrinsicHeight);
        }
        throw new UnsupportedOperationException("getZoomedRect() not supported with FIT_XY");
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i2 = getResources().getConfiguration().orientation;
        if (i2 != this.u) {
            this.f12398i = true;
            this.u = i2;
        }
        i();
    }

    public void onDraw(Canvas canvas) {
        this.x = true;
        this.w = true;
        h hVar = this.y;
        if (hVar != null) {
            a(hVar.f12424a, hVar.f12425b, hVar.f12426c, hVar.f12427d);
            this.y = null;
        }
        super.onDraw(canvas);
    }

    public void onMeasure(int i2, int i3) {
        Drawable drawable = getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() == 0 || drawable.getIntrinsicHeight() == 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        int a2 = a(mode, size, intrinsicWidth);
        int a3 = a(mode2, size2, intrinsicHeight);
        if (!this.f12398i) {
            i();
        }
        setMeasuredDimension((a2 - getPaddingLeft()) - getPaddingRight(), (a3 - getPaddingTop()) - getPaddingBottom());
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f12392c = bundle.getFloat("saveScale");
            this.r = bundle.getFloatArray("matrix");
            this.f12394e.setValues(this.r);
            this.G = bundle.getFloat("matchViewHeight");
            this.F = bundle.getFloat("matchViewWidth");
            this.C = bundle.getInt("viewHeight");
            this.B = bundle.getInt("viewWidth");
            this.w = bundle.getBoolean("imageRendered");
            this.f12397h = (FixedPixel) bundle.getSerializable("viewSizeChangeFixedPixel");
            this.f12396g = (FixedPixel) bundle.getSerializable("orientationChangeFixedPixel");
            if (this.u != bundle.getInt("orientation")) {
                this.f12398i = true;
            }
            super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("orientation", this.u);
        bundle.putFloat("saveScale", this.f12392c);
        bundle.putFloat("matchViewHeight", this.E);
        bundle.putFloat("matchViewWidth", this.D);
        bundle.putInt("viewWidth", this.z);
        bundle.putInt("viewHeight", this.A);
        this.f12393d.getValues(this.r);
        bundle.putFloatArray("matrix", this.r);
        bundle.putBoolean("imageRendered", this.w);
        bundle.putSerializable("viewSizeChangeFixedPixel", this.f12397h);
        bundle.putSerializable("orientationChangeFixedPixel", this.f12396g);
        return bundle;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.z = i2;
        this.A = i3;
        a();
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.w = false;
        super.setImageBitmap(bitmap);
        i();
        a();
    }

    public void setImageDrawable(Drawable drawable) {
        this.w = false;
        super.setImageDrawable(drawable);
        i();
        a();
    }

    public void setImageResource(int i2) {
        this.w = false;
        super.setImageResource(i2);
        i();
        a();
    }

    public void setImageURI(Uri uri) {
        this.w = false;
        super.setImageURI(uri);
        i();
        a();
    }

    public void setMaxZoom(float f2) {
        this.o = f2;
        this.q = this.o * 1.25f;
        this.m = false;
    }

    public void setMaxZoomRatio(float f2) {
        this.n = f2;
        this.o = this.f12401l * this.n;
        this.q = this.o * 1.25f;
        this.m = true;
    }

    public void setMinZoom(float f2) {
        this.f12400k = f2;
        if (f2 == -1.0f) {
            ImageView.ScaleType scaleType = this.v;
            if (scaleType == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.CENTER_CROP) {
                Drawable drawable = getDrawable();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (drawable != null && intrinsicWidth > 0 && intrinsicHeight > 0) {
                    float f3 = ((float) this.z) / ((float) intrinsicWidth);
                    float f4 = ((float) this.A) / ((float) intrinsicHeight);
                    if (this.v == ImageView.ScaleType.CENTER) {
                        this.f12401l = Math.min(f3, f4);
                    } else {
                        this.f12401l = Math.min(f3, f4) / Math.max(f3, f4);
                    }
                }
            } else {
                this.f12401l = 1.0f;
            }
        } else {
            this.f12401l = this.f12400k;
        }
        if (this.m) {
            setMaxZoomRatio(this.n);
        }
        this.p = this.f12401l * 0.75f;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.J = onDoubleTapListener;
    }

    public void setOnTouchImageViewListener(e eVar) {
        this.L = eVar;
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.K = onTouchListener;
    }

    public void setOrientationChangeFixedPixel(FixedPixel fixedPixel) {
        this.f12396g = fixedPixel;
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        ImageView.ScaleType scaleType2 = ImageView.ScaleType.MATRIX;
        if (scaleType == scaleType2) {
            super.setScaleType(scaleType2);
            return;
        }
        this.v = scaleType;
        if (this.x) {
            setZoom(this);
        }
    }

    public void setViewSizeChangeFixedPixel(FixedPixel fixedPixel) {
        this.f12397h = fixedPixel;
    }

    public void setZoom(float f2) {
        c(f2, 0.5f, 0.5f);
    }

    public void setZoomEnabled(boolean z2) {
        this.f12395f = z2;
    }

    public TouchImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void c(float f2, float f3, float f4) {
        a(f2, f3, f4, this.v);
    }

    public final void d() {
        e();
        this.f12393d.getValues(this.r);
        float imageWidth = getImageWidth();
        int i2 = this.z;
        if (imageWidth < ((float) i2)) {
            this.r[2] = (((float) i2) - getImageWidth()) / 2.0f;
        }
        float imageHeight = getImageHeight();
        int i3 = this.A;
        if (imageHeight < ((float) i3)) {
            this.r[5] = (((float) i3) - getImageHeight()) / 2.0f;
        }
        this.f12393d.setValues(this.r);
    }

    public final void e() {
        this.f12393d.getValues(this.r);
        float[] fArr = this.r;
        float f2 = fArr[2];
        float f3 = fArr[5];
        float b2 = b(f2, (float) this.z, getImageWidth());
        float b3 = b(f3, (float) this.A, getImageHeight());
        if (b2 != 0.0f || b3 != 0.0f) {
            this.f12393d.postTranslate(b2, b3);
        }
    }

    public boolean f() {
        return this.f12395f;
    }

    public boolean g() {
        return this.f12392c != 1.0f;
    }

    public void h() {
        this.f12392c = 1.0f;
        a();
    }

    public void i() {
        Matrix matrix = this.f12393d;
        if (matrix != null && this.A != 0 && this.z != 0) {
            matrix.getValues(this.r);
            this.f12394e.setValues(this.r);
            this.G = this.E;
            this.F = this.D;
            this.C = this.A;
            this.B = this.z;
        }
    }

    public void setZoom(TouchImageView touchImageView) {
        PointF scrollPosition = touchImageView.getScrollPosition();
        a(touchImageView.getCurrentZoom(), scrollPosition.x, scrollPosition.y, touchImageView.getScaleType());
    }

    public TouchImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        FixedPixel fixedPixel = FixedPixel.CENTER;
        this.f12396g = fixedPixel;
        this.f12397h = fixedPixel;
        this.f12398i = false;
        this.m = false;
        this.J = null;
        this.K = null;
        this.L = null;
        a(context, attributeSet, i2);
    }

    public final void a(Context context, AttributeSet attributeSet, int i2) {
        this.s = context;
        super.setClickable(true);
        this.u = getResources().getConfiguration().orientation;
        this.H = new ScaleGestureDetector(context, new g(this, null));
        this.I = new GestureDetector(context, new d(this, null));
        this.f12393d = new Matrix();
        this.f12394e = new Matrix();
        this.r = new float[9];
        this.f12392c = 1.0f;
        if (this.v == null) {
            this.v = ImageView.ScaleType.FIT_CENTER;
        }
        this.f12401l = 1.0f;
        this.o = 3.0f;
        this.p = this.f12401l * 0.75f;
        this.q = this.o * 1.25f;
        setImageMatrix(this.f12393d);
        setScaleType(ImageView.ScaleType.MATRIX);
        setState(State.NONE);
        this.x = false;
        super.setOnTouchListener(new f(this, null));
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.c.a.f.TouchImageView, i2, 0);
        if (obtainStyledAttributes != null) {
            try {
                if (!isInEditMode()) {
                    setZoomEnabled(obtainStyledAttributes.getBoolean(0, true));
                }
            } catch (Throwable th) {
                if (obtainStyledAttributes != null) {
                    obtainStyledAttributes.recycle();
                }
                throw th;
            }
        }
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(float f2, float f3, float f4, ImageView.ScaleType scaleType) {
        if (!this.x) {
            h hVar = new h(f2, f3, f4, scaleType);
            this.y = hVar;
            return;
        }
        if (this.f12400k == -1.0f) {
            setMinZoom(-1.0f);
            float f5 = this.f12392c;
            float f6 = this.f12401l;
            if (f5 < f6) {
                this.f12392c = f6;
            }
        }
        if (scaleType != this.v) {
            setScaleType(scaleType);
        }
        h();
        a((double) f2, (float) (this.z / 2), (float) (this.A / 2), true);
        this.f12393d.getValues(this.r);
        this.r[2] = -((f3 * getImageWidth()) - (((float) this.z) * 0.5f));
        this.r[5] = -((f4 * getImageHeight()) - (((float) this.A) * 0.5f));
        this.f12393d.setValues(this.r);
        e();
        setImageMatrix(this.f12393d);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        r2 = java.lang.Math.min(r2, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x006e, code lost:
        r4 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0079, code lost:
        r6 = r14.z;
        r10 = ((float) r6) - (r2 * r3);
        r11 = r14.A;
        r12 = ((float) r11) - (r4 * r5);
        r14.D = ((float) r6) - r10;
        r14.E = ((float) r11) - r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0093, code lost:
        if (g() != false) goto L_0x00c5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0097, code lost:
        if (r14.w != false) goto L_0x00c5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0099, code lost:
        r14.f12393d.setScale(r2, r4);
        r0 = c.c.a.o.d.f7138a[r14.v.ordinal()];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00a8, code lost:
        if (r0 == 5) goto L_0x00bd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ab, code lost:
        if (r0 == 6) goto L_0x00b7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00ad, code lost:
        r14.f12393d.postTranslate(r10 / 2.0f, r12 / 2.0f);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00b7, code lost:
        r14.f12393d.postTranslate(r10, r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00bd, code lost:
        r14.f12393d.postTranslate(0.0f, 0.0f);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00c2, code lost:
        r14.f12392c = 1.0f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00c9, code lost:
        if (r14.F == 0.0f) goto L_0x00d1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00cf, code lost:
        if (r14.G != 0.0f) goto L_0x00d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d1, code lost:
        i();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00d4, code lost:
        r14.f12394e.getValues(r14.r);
        r2 = r14.r;
        r4 = r14.D / r3;
        r3 = r14.f12392c;
        r2[0] = r4 * r3;
        r2[4] = (r14.E / r5) * r3;
        r4 = r2[2];
        r12 = r2[5];
        r8 = r0;
        r14.r[2] = a(r4, r3 * r14.F, getImageWidth(), r14.B, r14.z, r7, r8);
        r14.r[5] = a(r12, r14.G * r14.f12392c, getImageHeight(), r14.C, r14.A, r9, r8);
        r14.f12393d.setValues(r14.r);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x012d, code lost:
        e();
        setImageMatrix(r14.f12393d);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r14 = this;
            boolean r0 = r14.f12398i
            if (r0 == 0) goto L_0x0007
            com.farsitel.bazaar.widget.TouchImageView$FixedPixel r0 = r14.f12396g
            goto L_0x0009
        L_0x0007:
            com.farsitel.bazaar.widget.TouchImageView$FixedPixel r0 = r14.f12397h
        L_0x0009:
            r1 = 0
            r14.f12398i = r1
            android.graphics.drawable.Drawable r2 = r14.getDrawable()
            if (r2 == 0) goto L_0x0135
            int r3 = r2.getIntrinsicWidth()
            if (r3 == 0) goto L_0x0135
            int r3 = r2.getIntrinsicHeight()
            if (r3 != 0) goto L_0x0020
            goto L_0x0135
        L_0x0020:
            android.graphics.Matrix r3 = r14.f12393d
            if (r3 == 0) goto L_0x0135
            android.graphics.Matrix r3 = r14.f12394e
            if (r3 != 0) goto L_0x002a
            goto L_0x0135
        L_0x002a:
            float r3 = r14.f12400k
            r4 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 != 0) goto L_0x003f
            r14.setMinZoom(r4)
            float r3 = r14.f12392c
            float r4 = r14.f12401l
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L_0x003f
            r14.f12392c = r4
        L_0x003f:
            int r7 = r2.getIntrinsicWidth()
            int r9 = r2.getIntrinsicHeight()
            int r2 = r14.z
            float r2 = (float) r2
            float r3 = (float) r7
            float r2 = r2 / r3
            int r4 = r14.A
            float r4 = (float) r4
            float r5 = (float) r9
            float r4 = r4 / r5
            int[] r6 = c.c.a.o.d.f7138a
            android.widget.ImageView$ScaleType r8 = r14.v
            int r8 = r8.ordinal()
            r6 = r6[r8]
            r8 = 1065353216(0x3f800000, float:1.0)
            switch(r6) {
                case 1: goto L_0x0075;
                case 2: goto L_0x0070;
                case 3: goto L_0x0061;
                case 4: goto L_0x006a;
                case 5: goto L_0x006a;
                case 6: goto L_0x006a;
                case 7: goto L_0x0079;
                default: goto L_0x0060;
            }
        L_0x0060:
            goto L_0x0079
        L_0x0061:
            float r2 = java.lang.Math.min(r2, r4)
            float r2 = java.lang.Math.min(r8, r2)
            r4 = r2
        L_0x006a:
            float r2 = java.lang.Math.min(r2, r4)
        L_0x006e:
            r4 = r2
            goto L_0x0079
        L_0x0070:
            float r2 = java.lang.Math.max(r2, r4)
            goto L_0x006e
        L_0x0075:
            r2 = 1065353216(0x3f800000, float:1.0)
            r4 = 1065353216(0x3f800000, float:1.0)
        L_0x0079:
            int r6 = r14.z
            float r10 = (float) r6
            float r11 = r2 * r3
            float r10 = r10 - r11
            int r11 = r14.A
            float r12 = (float) r11
            float r13 = r4 * r5
            float r12 = r12 - r13
            float r6 = (float) r6
            float r6 = r6 - r10
            r14.D = r6
            float r6 = (float) r11
            float r6 = r6 - r12
            r14.E = r6
            boolean r6 = r14.g()
            r11 = 5
            r13 = 0
            if (r6 != 0) goto L_0x00c5
            boolean r6 = r14.w
            if (r6 != 0) goto L_0x00c5
            android.graphics.Matrix r0 = r14.f12393d
            r0.setScale(r2, r4)
            int[] r0 = c.c.a.o.d.f7138a
            android.widget.ImageView$ScaleType r1 = r14.v
            int r1 = r1.ordinal()
            r0 = r0[r1]
            if (r0 == r11) goto L_0x00bd
            r1 = 6
            if (r0 == r1) goto L_0x00b7
            android.graphics.Matrix r0 = r14.f12393d
            r1 = 1073741824(0x40000000, float:2.0)
            float r10 = r10 / r1
            float r12 = r12 / r1
            r0.postTranslate(r10, r12)
            goto L_0x00c2
        L_0x00b7:
            android.graphics.Matrix r0 = r14.f12393d
            r0.postTranslate(r10, r12)
            goto L_0x00c2
        L_0x00bd:
            android.graphics.Matrix r0 = r14.f12393d
            r0.postTranslate(r13, r13)
        L_0x00c2:
            r14.f12392c = r8
            goto L_0x012d
        L_0x00c5:
            float r2 = r14.F
            int r2 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r2 == 0) goto L_0x00d1
            float r2 = r14.G
            int r2 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r2 != 0) goto L_0x00d4
        L_0x00d1:
            r14.i()
        L_0x00d4:
            android.graphics.Matrix r2 = r14.f12394e
            float[] r4 = r14.r
            r2.getValues(r4)
            float[] r2 = r14.r
            float r4 = r14.D
            float r4 = r4 / r3
            float r3 = r14.f12392c
            float r4 = r4 * r3
            r2[r1] = r4
            r1 = 4
            float r4 = r14.E
            float r4 = r4 / r5
            float r4 = r4 * r3
            r2[r1] = r4
            r10 = 2
            r4 = r2[r10]
            r12 = r2[r11]
            float r1 = r14.F
            float r3 = r3 * r1
            float r5 = r14.getImageWidth()
            float[] r13 = r14.r
            int r6 = r14.B
            int r8 = r14.z
            r1 = r14
            r2 = r4
            r4 = r5
            r5 = r6
            r6 = r8
            r8 = r0
            float r1 = r1.a(r2, r3, r4, r5, r6, r7, r8)
            r13[r10] = r1
            float r1 = r14.G
            float r2 = r14.f12392c
            float r3 = r1 * r2
            float r4 = r14.getImageHeight()
            float[] r10 = r14.r
            int r5 = r14.C
            int r6 = r14.A
            r1 = r14
            r2 = r12
            r7 = r9
            float r0 = r1.a(r2, r3, r4, r5, r6, r7, r8)
            r10[r11] = r0
            android.graphics.Matrix r0 = r14.f12393d
            float[] r1 = r14.r
            r0.setValues(r1)
        L_0x012d:
            r14.e()
            android.graphics.Matrix r0 = r14.f12393d
            r14.setImageMatrix(r0)
        L_0x0135:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.widget.TouchImageView.a():void");
    }

    public final int a(int i2, int i3, int i4) {
        if (i2 != Integer.MIN_VALUE) {
            return i2 != 0 ? i3 : i4;
        }
        return Math.min(i4, i3);
    }

    public final float a(float f2, float f3, float f4, int i2, int i3, int i4, FixedPixel fixedPixel) {
        float f5 = (float) i3;
        float f6 = 0.5f;
        if (f4 < f5) {
            return (f5 - (((float) i4) * this.r[0])) * 0.5f;
        }
        if (f2 > 0.0f) {
            return -((f4 - f5) * 0.5f);
        }
        if (fixedPixel == FixedPixel.BOTTOM_RIGHT) {
            f6 = 1.0f;
        } else if (fixedPixel == FixedPixel.TOP_LEFT) {
            f6 = 0.0f;
        }
        return -(((((-f2) + (((float) i2) * f6)) / f3) * f4) - (f5 * f6));
    }

    public final void a(double d2, float f2, float f3, boolean z2) {
        float f4;
        float f5;
        if (z2) {
            f4 = this.p;
            f5 = this.q;
        } else {
            f4 = this.f12401l;
            f5 = this.o;
        }
        float f6 = this.f12392c;
        double d3 = (double) f6;
        Double.isNaN(d3);
        this.f12392c = (float) (d3 * d2);
        float f7 = this.f12392c;
        if (f7 > f5) {
            this.f12392c = f5;
            d2 = (double) (f5 / f6);
        } else if (f7 < f4) {
            this.f12392c = f4;
            d2 = (double) (f4 / f6);
        }
        float f8 = (float) d2;
        this.f12393d.postScale(f8, f8, f2, f3);
        d();
    }

    public final PointF a(float f2, float f3, boolean z2) {
        this.f12393d.getValues(this.r);
        float intrinsicWidth = (float) getDrawable().getIntrinsicWidth();
        float intrinsicHeight = (float) getDrawable().getIntrinsicHeight();
        float[] fArr = this.r;
        float f4 = fArr[2];
        float f5 = fArr[5];
        float imageWidth = ((f2 - f4) * intrinsicWidth) / getImageWidth();
        float imageHeight = ((f3 - f5) * intrinsicHeight) / getImageHeight();
        if (z2) {
            imageWidth = Math.min(Math.max(imageWidth, 0.0f), intrinsicWidth);
            imageHeight = Math.min(Math.max(imageHeight, 0.0f), intrinsicHeight);
        }
        return new PointF(imageWidth, imageHeight);
    }

    public final PointF a(float f2, float f3) {
        this.f12393d.getValues(this.r);
        return new PointF(this.r[2] + (getImageWidth() * (f2 / ((float) getDrawable().getIntrinsicWidth()))), this.r[5] + (getImageHeight() * (f3 / ((float) getDrawable().getIntrinsicHeight()))));
    }

    @TargetApi(16)
    public final void a(Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            postOnAnimation(runnable);
        } else {
            postDelayed(runnable, 16);
        }
    }
}
