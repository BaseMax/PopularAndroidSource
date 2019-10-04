package c.c.a.d.h.b;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;

/* compiled from: Sprite */
public abstract class w extends Drawable implements ValueAnimator.AnimatorUpdateListener, Animatable, Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    public static final Rect f4831a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public static final Property<w, Integer> f4832b = new n("rotateX");

    /* renamed from: c  reason: collision with root package name */
    public static final Property<w, Integer> f4833c = new o("rotate");

    /* renamed from: d  reason: collision with root package name */
    public static final Property<w, Integer> f4834d = new p("rotateY");

    /* renamed from: e  reason: collision with root package name */
    public static final Property<w, Integer> f4835e = new q("translateX");

    /* renamed from: f  reason: collision with root package name */
    public static final Property<w, Integer> f4836f = new r("translateY");

    /* renamed from: g  reason: collision with root package name */
    public static final Property<w, Float> f4837g = new s("translateXPercentage");

    /* renamed from: h  reason: collision with root package name */
    public static final Property<w, Float> f4838h = new t("translateYPercentage");

    /* renamed from: i  reason: collision with root package name */
    public static final Property<w, Float> f4839i = new u("scaleX");

    /* renamed from: j  reason: collision with root package name */
    public static final Property<w, Float> f4840j = new v("scaleY");

    /* renamed from: k  reason: collision with root package name */
    public static final Property<w, Float> f4841k = new l("scale");

    /* renamed from: l  reason: collision with root package name */
    public static final Property<w, Integer> f4842l = new m("alpha");
    public int A = 255;
    public Rect B = f4831a;
    public Camera C = new Camera();
    public Matrix D = new Matrix();
    public float m = 1.0f;
    public float n = 1.0f;
    public float o = 1.0f;
    public float p;
    public float q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public float x;
    public float y;
    public ValueAnimator z;

    public abstract int a();

    public void a(float f2) {
        this.p = f2;
    }

    public abstract void a(Canvas canvas);

    public void b(float f2) {
        this.q = f2;
    }

    public abstract void b(int i2);

    public void c(int i2) {
        this.w = i2;
    }

    public void d(float f2) {
        this.n = f2;
    }

    public void draw(Canvas canvas) {
        int k2 = k();
        if (k2 == 0) {
            k2 = (int) (((float) getBounds().width()) * l());
        }
        int m2 = m();
        if (m2 == 0) {
            m2 = (int) (((float) getBounds().height()) * n());
        }
        canvas.translate((float) k2, (float) m2);
        canvas.scale(i(), j(), c(), d());
        canvas.rotate((float) e(), c(), d());
        if (!(f() == 0 && g() == 0)) {
            this.C.save();
            this.C.rotateX((float) f());
            this.C.rotateY((float) g());
            this.C.getMatrix(this.D);
            this.D.preTranslate(-c(), -d());
            this.D.postTranslate(c(), d());
            this.C.restore();
            canvas.concat(this.D);
        }
        a(canvas);
    }

    public int e() {
        return this.w;
    }

    public void f(float f2) {
        this.x = f2;
    }

    public void g(float f2) {
        this.y = f2;
    }

    public int getAlpha() {
        return this.A;
    }

    public int getOpacity() {
        return -3;
    }

    public float h() {
        return this.m;
    }

    public float i() {
        return this.n;
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isRunning() {
        return a.a(this.z);
    }

    public float j() {
        return this.o;
    }

    public int k() {
        return this.u;
    }

    public float l() {
        return this.x;
    }

    public int m() {
        return this.v;
    }

    public float n() {
        return this.y;
    }

    public ValueAnimator o() {
        if (this.z == null) {
            this.z = p();
        }
        ValueAnimator valueAnimator = this.z;
        if (valueAnimator != null) {
            valueAnimator.addUpdateListener(this);
            this.z.setStartDelay((long) this.r);
        }
        return this.z;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    public abstract ValueAnimator p();

    public void q() {
        this.m = 1.0f;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.x = 0.0f;
        this.y = 0.0f;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
    }

    public void setAlpha(int i2) {
        this.A = i2;
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void start() {
        if (!a.b(this.z)) {
            this.z = o();
            ValueAnimator valueAnimator = this.z;
            if (valueAnimator != null) {
                a.a((Animator) valueAnimator);
                invalidateSelf();
            }
        }
    }

    public void stop() {
        if (a.b(this.z)) {
            this.z.removeAllUpdateListeners();
            this.z.end();
            q();
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
    }

    public w a(int i2) {
        this.r = i2;
        return this;
    }

    public void b(Rect rect) {
        a(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void c(float f2) {
        this.m = f2;
        d(f2);
        e(f2);
    }

    public void d(int i2) {
        this.s = i2;
    }

    public void e(float f2) {
        this.o = f2;
    }

    public void f(int i2) {
        this.u = i2;
    }

    public void g(int i2) {
        this.v = i2;
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.B = new Rect(i2, i3, i4, i5);
        a((float) b().centerX());
        b((float) b().centerY());
    }

    public Rect b() {
        return this.B;
    }

    public float d() {
        return this.q;
    }

    public void e(int i2) {
        this.t = i2;
    }

    public int f() {
        return this.s;
    }

    public int g() {
        return this.t;
    }

    public float c() {
        return this.p;
    }

    public Rect a(Rect rect) {
        int min = Math.min(rect.width(), rect.height());
        int centerX = rect.centerX();
        int centerY = rect.centerY();
        int i2 = min / 2;
        return new Rect(centerX - i2, centerY - i2, centerX + i2, centerY + i2);
    }
}
