package b.i.l;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import b.i.k.z;

/* compiled from: AutoScrollHelper */
public abstract class a implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    public static final int f2850a = ViewConfiguration.getTapTimeout();

    /* renamed from: b  reason: collision with root package name */
    public final C0036a f2851b = new C0036a();

    /* renamed from: c  reason: collision with root package name */
    public final Interpolator f2852c = new AccelerateInterpolator();

    /* renamed from: d  reason: collision with root package name */
    public final View f2853d;

    /* renamed from: e  reason: collision with root package name */
    public Runnable f2854e;

    /* renamed from: f  reason: collision with root package name */
    public float[] f2855f = {0.0f, 0.0f};

    /* renamed from: g  reason: collision with root package name */
    public float[] f2856g = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: h  reason: collision with root package name */
    public int f2857h;

    /* renamed from: i  reason: collision with root package name */
    public int f2858i;

    /* renamed from: j  reason: collision with root package name */
    public float[] f2859j = {0.0f, 0.0f};

    /* renamed from: k  reason: collision with root package name */
    public float[] f2860k = {0.0f, 0.0f};

    /* renamed from: l  reason: collision with root package name */
    public float[] f2861l = {Float.MAX_VALUE, Float.MAX_VALUE};
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;

    /* renamed from: b.i.l.a$a  reason: collision with other inner class name */
    /* compiled from: AutoScrollHelper */
    private static class C0036a {

        /* renamed from: a  reason: collision with root package name */
        public int f2862a;

        /* renamed from: b  reason: collision with root package name */
        public int f2863b;

        /* renamed from: c  reason: collision with root package name */
        public float f2864c;

        /* renamed from: d  reason: collision with root package name */
        public float f2865d;

        /* renamed from: e  reason: collision with root package name */
        public long f2866e = Long.MIN_VALUE;

        /* renamed from: f  reason: collision with root package name */
        public long f2867f = 0;

        /* renamed from: g  reason: collision with root package name */
        public int f2868g = 0;

        /* renamed from: h  reason: collision with root package name */
        public int f2869h = 0;

        /* renamed from: i  reason: collision with root package name */
        public long f2870i = -1;

        /* renamed from: j  reason: collision with root package name */
        public float f2871j;

        /* renamed from: k  reason: collision with root package name */
        public int f2872k;

        public final float a(float f2) {
            return (-4.0f * f2 * f2) + (f2 * 4.0f);
        }

        public void a(int i2) {
            this.f2863b = i2;
        }

        public void b(int i2) {
            this.f2862a = i2;
        }

        public int c() {
            return this.f2869h;
        }

        public int d() {
            float f2 = this.f2864c;
            return (int) (f2 / Math.abs(f2));
        }

        public int e() {
            float f2 = this.f2865d;
            return (int) (f2 / Math.abs(f2));
        }

        public boolean f() {
            return this.f2870i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f2870i + ((long) this.f2872k);
        }

        public void g() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2872k = a.a((int) (currentAnimationTimeMillis - this.f2866e), 0, this.f2863b);
            this.f2871j = a(currentAnimationTimeMillis);
            this.f2870i = currentAnimationTimeMillis;
        }

        public void h() {
            this.f2866e = AnimationUtils.currentAnimationTimeMillis();
            this.f2870i = -1;
            this.f2867f = this.f2866e;
            this.f2871j = 0.5f;
            this.f2868g = 0;
            this.f2869h = 0;
        }

        public final float a(long j2) {
            if (j2 < this.f2866e) {
                return 0.0f;
            }
            long j3 = this.f2870i;
            if (j3 < 0 || j2 < j3) {
                return a.a(((float) (j2 - this.f2866e)) / ((float) this.f2862a), 0.0f, 1.0f) * 0.5f;
            }
            long j4 = j2 - j3;
            float f2 = this.f2871j;
            return (1.0f - f2) + (f2 * a.a(((float) j4) / ((float) this.f2872k), 0.0f, 1.0f));
        }

        public int b() {
            return this.f2868g;
        }

        public void a() {
            if (this.f2867f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float a2 = a(a(currentAnimationTimeMillis));
                this.f2867f = currentAnimationTimeMillis;
                float f2 = ((float) (currentAnimationTimeMillis - this.f2867f)) * a2;
                this.f2868g = (int) (this.f2864c * f2);
                this.f2869h = (int) (f2 * this.f2865d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public void a(float f2, float f3) {
            this.f2864c = f2;
            this.f2865d = f3;
        }
    }

    /* compiled from: AutoScrollHelper */
    private class b implements Runnable {
        public b() {
        }

        public void run() {
            a aVar = a.this;
            if (aVar.p) {
                if (aVar.n) {
                    aVar.n = false;
                    aVar.f2851b.h();
                }
                C0036a aVar2 = a.this.f2851b;
                if (aVar2.f() || !a.this.c()) {
                    a.this.p = false;
                    return;
                }
                a aVar3 = a.this;
                if (aVar3.o) {
                    aVar3.o = false;
                    aVar3.a();
                }
                aVar2.a();
                a.this.a(aVar2.b(), aVar2.c());
                z.a(a.this.f2853d, (Runnable) this);
            }
        }
    }

    public a(View view) {
        this.f2853d = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = (float) ((int) ((1575.0f * f2) + 0.5f));
        c(f3, f3);
        float f4 = (float) ((int) ((f2 * 315.0f) + 0.5f));
        d(f4, f4);
        d(1);
        b(Float.MAX_VALUE, Float.MAX_VALUE);
        e(0.2f, 0.2f);
        f(1.0f, 1.0f);
        c(f2850a);
        f(500);
        e(500);
    }

    public static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    public static int a(int i2, int i3, int i4) {
        return i2 > i4 ? i4 : i2 < i3 ? i3 : i2;
    }

    public a a(boolean z) {
        if (this.q && !z) {
            b();
        }
        this.q = z;
        return this;
    }

    public abstract void a(int i2, int i3);

    public abstract boolean a(int i2);

    public a b(float f2, float f3) {
        float[] fArr = this.f2856g;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public abstract boolean b(int i2);

    public a c(float f2, float f3) {
        float[] fArr = this.f2861l;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a d(float f2, float f3) {
        float[] fArr = this.f2860k;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a e(float f2, float f3) {
        float[] fArr = this.f2855f;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a f(float f2, float f3) {
        float[] fArr = this.f2859j;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0013, code lost:
        if (r0 != 3) goto L_0x0058;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.q
            r1 = 0
            if (r0 != 0) goto L_0x0006
            return r1
        L_0x0006:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L_0x001a
            if (r0 == r2) goto L_0x0016
            r3 = 2
            if (r0 == r3) goto L_0x001e
            r6 = 3
            if (r0 == r6) goto L_0x0016
            goto L_0x0058
        L_0x0016:
            r5.b()
            goto L_0x0058
        L_0x001a:
            r5.o = r2
            r5.m = r1
        L_0x001e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f2853d
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a((int) r1, (float) r0, (float) r3, (float) r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f2853d
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a((int) r2, (float) r7, (float) r6, (float) r3)
            b.i.l.a$a r7 = r5.f2851b
            r7.a(r0, r6)
            boolean r6 = r5.p
            if (r6 != 0) goto L_0x0058
            boolean r6 = r5.c()
            if (r6 == 0) goto L_0x0058
            r5.d()
        L_0x0058:
            boolean r6 = r5.r
            if (r6 == 0) goto L_0x0061
            boolean r6 = r5.p
            if (r6 == 0) goto L_0x0061
            r1 = 1
        L_0x0061:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.l.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void b() {
        if (this.n) {
            this.p = false;
        } else {
            this.f2851b.g();
        }
    }

    public a c(int i2) {
        this.f2858i = i2;
        return this;
    }

    public a d(int i2) {
        this.f2857h = i2;
        return this;
    }

    public a e(int i2) {
        this.f2851b.a(i2);
        return this;
    }

    public a f(int i2) {
        this.f2851b.b(i2);
        return this;
    }

    public final float a(int i2, float f2, float f3, float f4) {
        float a2 = a(this.f2855f[i2], f3, this.f2856g[i2], f2);
        if (a2 == 0.0f) {
            return 0.0f;
        }
        float f5 = this.f2859j[i2];
        float f6 = this.f2860k[i2];
        float f7 = this.f2861l[i2];
        float f8 = f5 * f4;
        if (a2 > 0.0f) {
            return a(a2 * f8, f6, f7);
        }
        return -a((-a2) * f8, f6, f7);
    }

    public boolean c() {
        C0036a aVar = this.f2851b;
        int e2 = aVar.e();
        int d2 = aVar.d();
        return (e2 != 0 && b(e2)) || (d2 != 0 && a(d2));
    }

    public final void d() {
        if (this.f2854e == null) {
            this.f2854e = new b();
        }
        this.p = true;
        this.n = true;
        if (!this.m) {
            int i2 = this.f2858i;
            if (i2 > 0) {
                z.a(this.f2853d, this.f2854e, (long) i2);
                this.m = true;
            }
        }
        this.f2854e.run();
        this.m = true;
    }

    public final float a(float f2, float f3, float f4, float f5) {
        float f6;
        float a2 = a(f2 * f3, 0.0f, f4);
        float a3 = a(f3 - f5, a2) - a(f5, a2);
        if (a3 < 0.0f) {
            f6 = -this.f2852c.getInterpolation(-a3);
        } else if (a3 <= 0.0f) {
            return 0.0f;
        } else {
            f6 = this.f2852c.getInterpolation(a3);
        }
        return a(f6, -1.0f, 1.0f);
    }

    public final float a(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.f2857h;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                return (!this.p || this.f2857h != 1) ? 0.0f : 1.0f;
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
    }

    public void a() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f2853d.onTouchEvent(obtain);
        obtain.recycle();
    }
}
