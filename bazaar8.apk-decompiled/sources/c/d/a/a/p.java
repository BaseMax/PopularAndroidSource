package c.d.a.a;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;

/* compiled from: PhotoViewAttacher */
public class p implements View.OnTouchListener, View.OnLayoutChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static float f7204a = 3.0f;

    /* renamed from: b  reason: collision with root package name */
    public static float f7205b = 1.75f;

    /* renamed from: c  reason: collision with root package name */
    public static float f7206c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    public static int f7207d = 200;

    /* renamed from: e  reason: collision with root package name */
    public static int f7208e = 1;
    public h A;
    public i B;
    public j C;
    public b D;
    public int E = 2;
    public int F = 2;
    public float G;
    public boolean H = true;
    public ImageView.ScaleType I = ImageView.ScaleType.FIT_CENTER;
    public d J = new l(this);

    /* renamed from: f  reason: collision with root package name */
    public Interpolator f7209f = new AccelerateDecelerateInterpolator();

    /* renamed from: g  reason: collision with root package name */
    public int f7210g = f7207d;

    /* renamed from: h  reason: collision with root package name */
    public float f7211h = f7206c;

    /* renamed from: i  reason: collision with root package name */
    public float f7212i = f7205b;

    /* renamed from: j  reason: collision with root package name */
    public float f7213j = f7204a;

    /* renamed from: k  reason: collision with root package name */
    public boolean f7214k = true;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7215l = false;
    public ImageView m;
    public GestureDetector n;
    public c o;
    public final Matrix p = new Matrix();
    public final Matrix q = new Matrix();
    public final Matrix r = new Matrix();
    public final RectF s = new RectF();
    public final float[] t = new float[9];
    public e u;
    public g v;
    public f w;
    public k x;
    public View.OnClickListener y;
    public View.OnLongClickListener z;

    /* compiled from: PhotoViewAttacher */
    private class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final float f7216a;

        /* renamed from: b  reason: collision with root package name */
        public final float f7217b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7218c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        public final float f7219d;

        /* renamed from: e  reason: collision with root package name */
        public final float f7220e;

        public a(float f2, float f3, float f4, float f5) {
            this.f7216a = f4;
            this.f7217b = f5;
            this.f7219d = f2;
            this.f7220e = f3;
        }

        public final float a() {
            return p.this.f7209f.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f7218c)) * 1.0f) / ((float) p.this.f7210g)));
        }

        public void run() {
            float a2 = a();
            float f2 = this.f7219d;
            p.this.J.a((f2 + ((this.f7220e - f2) * a2)) / p.this.l(), this.f7216a, this.f7217b);
            if (a2 < 1.0f) {
                a.a(p.this.m, this);
            }
        }
    }

    /* compiled from: PhotoViewAttacher */
    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final OverScroller f7222a;

        /* renamed from: b  reason: collision with root package name */
        public int f7223b;

        /* renamed from: c  reason: collision with root package name */
        public int f7224c;

        public b(Context context) {
            this.f7222a = new OverScroller(context);
        }

        public void a() {
            this.f7222a.forceFinished(true);
        }

        public void run() {
            if (!this.f7222a.isFinished() && this.f7222a.computeScrollOffset()) {
                int currX = this.f7222a.getCurrX();
                int currY = this.f7222a.getCurrY();
                p.this.r.postTranslate((float) (this.f7223b - currX), (float) (this.f7224c - currY));
                p.this.d();
                this.f7223b = currX;
                this.f7224c = currY;
                a.a(p.this.m, this);
            }
        }

        public void a(int i2, int i3, int i4, int i5) {
            int i6;
            int i7;
            int i8;
            int i9;
            RectF f2 = p.this.f();
            if (f2 != null) {
                int round = Math.round(-f2.left);
                float f3 = (float) i2;
                if (f3 < f2.width()) {
                    i6 = Math.round(f2.width() - f3);
                    i7 = 0;
                } else {
                    i7 = round;
                    i6 = i7;
                }
                int round2 = Math.round(-f2.top);
                float f4 = (float) i3;
                if (f4 < f2.height()) {
                    i8 = Math.round(f2.height() - f4);
                    i9 = 0;
                } else {
                    i9 = round2;
                    i8 = i9;
                }
                this.f7223b = round;
                this.f7224c = round2;
                if (!(round == i6 && round2 == i8)) {
                    this.f7222a.fling(round, round2, i4, i5, i7, i6, i9, i8, 0, 0);
                }
            }
        }
    }

    public p(ImageView imageView) {
        this.m = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (!imageView.isInEditMode()) {
            this.G = 0.0f;
            this.o = new c(imageView.getContext(), this.J);
            this.n = new GestureDetector(imageView.getContext(), new m(this));
            this.n.setOnDoubleTapListener(new n(this));
        }
    }

    public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i2 != i6 || i3 != i7 || i4 != i8 || i5 != i9) {
            a(this.m.getDrawable());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            boolean r0 = r10.H
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x00be
            r0 = r11
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            boolean r0 = c.d.a.a.r.a((android.widget.ImageView) r0)
            if (r0 == 0) goto L_0x00be
            int r0 = r12.getAction()
            if (r0 == 0) goto L_0x006e
            if (r0 == r2) goto L_0x001b
            r3 = 3
            if (r0 == r3) goto L_0x001b
            goto L_0x007a
        L_0x001b:
            float r0 = r10.l()
            float r3 = r10.f7211h
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L_0x0044
            android.graphics.RectF r0 = r10.f()
            if (r0 == 0) goto L_0x007a
            c.d.a.a.p$a r9 = new c.d.a.a.p$a
            float r5 = r10.l()
            float r6 = r10.f7211h
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
            goto L_0x006c
        L_0x0044:
            float r0 = r10.l()
            float r3 = r10.f7213j
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L_0x007a
            android.graphics.RectF r0 = r10.f()
            if (r0 == 0) goto L_0x007a
            c.d.a.a.p$a r9 = new c.d.a.a.p$a
            float r5 = r10.l()
            float r6 = r10.f7213j
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
        L_0x006c:
            r11 = 1
            goto L_0x007b
        L_0x006e:
            android.view.ViewParent r11 = r11.getParent()
            if (r11 == 0) goto L_0x0077
            r11.requestDisallowInterceptTouchEvent(r2)
        L_0x0077:
            r10.c()
        L_0x007a:
            r11 = 0
        L_0x007b:
            c.d.a.a.c r0 = r10.o
            if (r0 == 0) goto L_0x00b2
            boolean r11 = r0.b()
            c.d.a.a.c r0 = r10.o
            boolean r0 = r0.a()
            c.d.a.a.c r3 = r10.o
            boolean r3 = r3.c(r12)
            if (r11 != 0) goto L_0x009b
            c.d.a.a.c r11 = r10.o
            boolean r11 = r11.b()
            if (r11 != 0) goto L_0x009b
            r11 = 1
            goto L_0x009c
        L_0x009b:
            r11 = 0
        L_0x009c:
            if (r0 != 0) goto L_0x00a8
            c.d.a.a.c r0 = r10.o
            boolean r0 = r0.a()
            if (r0 != 0) goto L_0x00a8
            r0 = 1
            goto L_0x00a9
        L_0x00a8:
            r0 = 0
        L_0x00a9:
            if (r11 == 0) goto L_0x00ae
            if (r0 == 0) goto L_0x00ae
            r1 = 1
        L_0x00ae:
            r10.f7215l = r1
            r1 = r3
            goto L_0x00b3
        L_0x00b2:
            r1 = r11
        L_0x00b3:
            android.view.GestureDetector r11 = r10.n
            if (r11 == 0) goto L_0x00be
            boolean r11 = r11.onTouchEvent(r12)
            if (r11 == 0) goto L_0x00be
            r1 = 1
        L_0x00be:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.d.a.a.p.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void c(float f2) {
        r.a(f2, this.f7212i, this.f7213j);
        this.f7211h = f2;
    }

    public void d(float f2) {
        this.r.postRotate(f2 % 360.0f);
        d();
    }

    public void e(float f2) {
        this.r.setRotate(f2 % 360.0f);
        d();
    }

    public RectF f() {
        e();
        return a(g());
    }

    public final Matrix g() {
        this.q.set(this.p);
        this.q.postConcat(this.r);
        return this.q;
    }

    public Matrix h() {
        return this.q;
    }

    public float i() {
        return this.f7213j;
    }

    public float j() {
        return this.f7212i;
    }

    public float k() {
        return this.f7211h;
    }

    public float l() {
        return (float) Math.sqrt((double) (((float) Math.pow((double) a(this.r, 0), 2.0d)) + ((float) Math.pow((double) a(this.r, 3), 2.0d))));
    }

    public ImageView.ScaleType m() {
        return this.I;
    }

    public final void n() {
        this.r.reset();
        d(this.G);
        c(g());
        e();
    }

    public void o() {
        if (this.H) {
            a(this.m.getDrawable());
        } else {
            n();
        }
    }

    public boolean b(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        } else if (this.m.getDrawable() == null) {
            return false;
        } else {
            this.r.set(matrix);
            d();
            return true;
        }
    }

    public final void c(Matrix matrix) {
        this.m.setImageMatrix(matrix);
        if (this.u != null) {
            RectF a2 = a(matrix);
            if (a2 != null) {
                this.u.a(a2);
            }
        }
    }

    public final void d() {
        if (e()) {
            c(g());
        }
    }

    public final boolean e() {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        RectF a2 = a(g());
        if (a2 == null) {
            return false;
        }
        float height = a2.height();
        float width = a2.width();
        float a3 = (float) a(this.m);
        float f8 = 0.0f;
        if (height <= a3) {
            int i2 = o.f7203a[this.I.ordinal()];
            if (i2 != 2) {
                if (i2 != 3) {
                    f6 = (a3 - height) / 2.0f;
                    f7 = a2.top;
                } else {
                    f6 = a3 - height;
                    f7 = a2.top;
                }
                f5 = f6 - f7;
            } else {
                f5 = -a2.top;
            }
            this.F = 2;
            f2 = f5;
        } else {
            float f9 = a2.top;
            if (f9 > 0.0f) {
                this.F = 0;
                f2 = -f9;
            } else {
                float f10 = a2.bottom;
                if (f10 < a3) {
                    this.F = 1;
                    f2 = a3 - f10;
                } else {
                    this.F = -1;
                    f2 = 0.0f;
                }
            }
        }
        float b2 = (float) b(this.m);
        if (width <= b2) {
            int i3 = o.f7203a[this.I.ordinal()];
            if (i3 != 2) {
                if (i3 != 3) {
                    f3 = (b2 - width) / 2.0f;
                    f4 = a2.left;
                } else {
                    f3 = b2 - width;
                    f4 = a2.left;
                }
                f8 = f3 - f4;
            } else {
                f8 = -a2.left;
            }
            this.E = 2;
        } else {
            float f11 = a2.left;
            if (f11 > 0.0f) {
                this.E = 0;
                f8 = -f11;
            } else {
                float f12 = a2.right;
                if (f12 < b2) {
                    f8 = b2 - f12;
                    this.E = 1;
                } else {
                    this.E = -1;
                }
            }
        }
        this.r.postTranslate(f8, f2);
        return true;
    }

    public void f(float f2) {
        a(f2, false);
    }

    public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.n.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void a(h hVar) {
        this.A = hVar;
    }

    public void a(i iVar) {
        this.B = iVar;
    }

    public void a(boolean z2) {
        this.f7214k = z2;
    }

    public void b(float f2) {
        r.a(this.f7211h, f2, this.f7213j);
        this.f7212i = f2;
    }

    public final void c() {
        b bVar = this.D;
        if (bVar != null) {
            bVar.a();
            this.D = null;
        }
    }

    public void a(float f2) {
        r.a(this.f7211h, this.f7212i, f2);
        this.f7213j = f2;
    }

    public void b(boolean z2) {
        this.H = z2;
        o();
    }

    public void a(View.OnLongClickListener onLongClickListener) {
        this.z = onLongClickListener;
    }

    public void a(View.OnClickListener onClickListener) {
        this.y = onClickListener;
    }

    public final int b(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    public void a(e eVar) {
        this.u = eVar;
    }

    public void a(g gVar) {
        this.v = gVar;
    }

    public void a(f fVar) {
        this.w = fVar;
    }

    public void a(k kVar) {
        this.x = kVar;
    }

    public void a(j jVar) {
        this.C = jVar;
    }

    public void a(float f2, boolean z2) {
        a(f2, (float) (this.m.getRight() / 2), (float) (this.m.getBottom() / 2), z2);
    }

    public void a(float f2, float f3, float f4, boolean z2) {
        if (f2 < this.f7211h || f2 > this.f7213j) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        } else if (z2) {
            ImageView imageView = this.m;
            a aVar = new a(l(), f2, f3, f4);
            imageView.post(aVar);
        } else {
            this.r.setScale(f2, f2, f3, f4);
            d();
        }
    }

    public void a(ImageView.ScaleType scaleType) {
        if (r.a(scaleType) && scaleType != this.I) {
            this.I = scaleType;
            o();
        }
    }

    public void a(int i2) {
        this.f7210g = i2;
    }

    public final float a(Matrix matrix, int i2) {
        matrix.getValues(this.t);
        return this.t[i2];
    }

    public final RectF a(Matrix matrix) {
        Drawable drawable = this.m.getDrawable();
        if (drawable == null) {
            return null;
        }
        this.s.set(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
        matrix.mapRect(this.s);
        return this.s;
    }

    public final void a(Drawable drawable) {
        if (drawable != null) {
            float b2 = (float) b(this.m);
            float a2 = (float) a(this.m);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.p.reset();
            float f2 = (float) intrinsicWidth;
            float f3 = b2 / f2;
            float f4 = (float) intrinsicHeight;
            float f5 = a2 / f4;
            ImageView.ScaleType scaleType = this.I;
            if (scaleType == ImageView.ScaleType.CENTER) {
                this.p.postTranslate((b2 - f2) / 2.0f, (a2 - f4) / 2.0f);
            } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                float max = Math.max(f3, f5);
                this.p.postScale(max, max);
                this.p.postTranslate((b2 - (f2 * max)) / 2.0f, (a2 - (f4 * max)) / 2.0f);
            } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
                float min = Math.min(1.0f, Math.min(f3, f5));
                this.p.postScale(min, min);
                this.p.postTranslate((b2 - (f2 * min)) / 2.0f, (a2 - (f4 * min)) / 2.0f);
            } else {
                RectF rectF = new RectF(0.0f, 0.0f, f2, f4);
                RectF rectF2 = new RectF(0.0f, 0.0f, b2, a2);
                if (((int) this.G) % 180 != 0) {
                    rectF = new RectF(0.0f, 0.0f, f4, f2);
                }
                int i2 = o.f7203a[this.I.ordinal()];
                if (i2 == 1) {
                    this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                } else if (i2 == 2) {
                    this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                } else if (i2 == 3) {
                    this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                } else if (i2 == 4) {
                    this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                }
            }
            n();
        }
    }

    public final int a(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }
}
