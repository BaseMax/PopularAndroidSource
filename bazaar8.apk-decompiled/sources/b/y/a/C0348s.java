package b.y.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.z;

/* renamed from: b.y.a.s  reason: case insensitive filesystem */
/* compiled from: FastScroller */
public class C0348s extends RecyclerView.h implements RecyclerView.m {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f3528a = {16842919};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f3529b = new int[0];
    public final int[] A = new int[2];
    public final ValueAnimator B = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
    public int C = 0;
    public final Runnable D = new C0347q(this);
    public final RecyclerView.n E = new r(this);

    /* renamed from: c  reason: collision with root package name */
    public final int f3530c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3531d;

    /* renamed from: e  reason: collision with root package name */
    public final StateListDrawable f3532e;

    /* renamed from: f  reason: collision with root package name */
    public final Drawable f3533f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3534g;

    /* renamed from: h  reason: collision with root package name */
    public final int f3535h;

    /* renamed from: i  reason: collision with root package name */
    public final StateListDrawable f3536i;

    /* renamed from: j  reason: collision with root package name */
    public final Drawable f3537j;

    /* renamed from: k  reason: collision with root package name */
    public final int f3538k;

    /* renamed from: l  reason: collision with root package name */
    public final int f3539l;
    public int m;
    public int n;
    public float o;
    public int p;
    public int q;
    public float r;
    public int s = 0;
    public int t = 0;
    public RecyclerView u;
    public boolean v = false;
    public boolean w = false;
    public int x = 0;
    public int y = 0;
    public final int[] z = new int[2];

    /* renamed from: b.y.a.s$a */
    /* compiled from: FastScroller */
    private class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public boolean f3540a = false;

        public a() {
        }

        public void onAnimationCancel(Animator animator) {
            this.f3540a = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (this.f3540a) {
                this.f3540a = false;
                return;
            }
            if (((Float) C0348s.this.B.getAnimatedValue()).floatValue() == 0.0f) {
                C0348s sVar = C0348s.this;
                sVar.C = 0;
                sVar.c(0);
            } else {
                C0348s sVar2 = C0348s.this;
                sVar2.C = 2;
                sVar2.f();
            }
        }
    }

    /* renamed from: b.y.a.s$b */
    /* compiled from: FastScroller */
    private class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0348s.this.f3532e.setAlpha(floatValue);
            C0348s.this.f3533f.setAlpha(floatValue);
            C0348s.this.f();
        }
    }

    public C0348s(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        this.f3532e = stateListDrawable;
        this.f3533f = drawable;
        this.f3536i = stateListDrawable2;
        this.f3537j = drawable2;
        this.f3534g = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f3535h = Math.max(i2, drawable.getIntrinsicWidth());
        this.f3538k = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f3539l = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f3530c = i3;
        this.f3531d = i4;
        this.f3532e.setAlpha(255);
        this.f3533f.setAlpha(255);
        this.B.addListener(new a());
        this.B.addUpdateListener(new b());
        a(recyclerView);
    }

    public void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.u;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                b();
            }
            this.u = recyclerView;
            if (this.u != null) {
                g();
            }
        }
    }

    public void a(boolean z2) {
    }

    public final void b() {
        this.u.b((RecyclerView.h) this);
        this.u.b((RecyclerView.m) this);
        this.u.b(this.E);
        a();
    }

    public void c(int i2) {
        if (i2 == 2 && this.x != 2) {
            this.f3532e.setState(f3528a);
            a();
        }
        if (i2 == 0) {
            f();
        } else {
            h();
        }
        if (this.x == 2 && i2 != 2) {
            this.f3532e.setState(f3529b);
            b(1200);
        } else if (i2 == 1) {
            b(1500);
        }
        this.x = i2;
    }

    public final int[] d() {
        int[] iArr = this.z;
        int i2 = this.f3531d;
        iArr[0] = i2;
        iArr[1] = this.t - i2;
        return iArr;
    }

    public final boolean e() {
        return z.m(this.u) == 1;
    }

    public void f() {
        this.u.invalidate();
    }

    public final void g() {
        this.u.a((RecyclerView.h) this);
        this.u.a((RecyclerView.m) this);
        this.u.a(this.E);
    }

    public void h() {
        int i2 = this.C;
        if (i2 != 0) {
            if (i2 == 3) {
                this.B.cancel();
            } else {
                return;
            }
        }
        this.C = 1;
        ValueAnimator valueAnimator = this.B;
        valueAnimator.setFloatValues(new float[]{((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f});
        this.B.setDuration(500);
        this.B.setStartDelay(0);
        this.B.start();
    }

    public final void b(int i2) {
        a();
        this.u.postDelayed(this.D, (long) i2);
    }

    public void a(int i2) {
        int i3 = this.C;
        if (i3 == 1) {
            this.B.cancel();
        } else if (i3 != 2) {
            return;
        }
        this.C = 3;
        ValueAnimator valueAnimator = this.B;
        valueAnimator.setFloatValues(new float[]{((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f});
        this.B.setDuration((long) i2);
        this.B.start();
    }

    public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
        if (this.s == this.u.getWidth() && this.t == this.u.getHeight()) {
            if (this.C != 0) {
                if (this.v) {
                    b(canvas);
                }
                if (this.w) {
                    a(canvas);
                }
            }
            return;
        }
        this.s = this.u.getWidth();
        this.t = this.u.getHeight();
        c(0);
    }

    public final int[] c() {
        int[] iArr = this.A;
        int i2 = this.f3531d;
        iArr[0] = i2;
        iArr[1] = this.s - i2;
        return iArr;
    }

    public final void a() {
        this.u.removeCallbacks(this.D);
    }

    public final void a(Canvas canvas) {
        int i2 = this.t;
        int i3 = this.f3538k;
        int i4 = i2 - i3;
        int i5 = this.q;
        int i6 = this.p;
        int i7 = i5 - (i6 / 2);
        this.f3536i.setBounds(0, 0, i6, i3);
        this.f3537j.setBounds(0, 0, this.s, this.f3539l);
        canvas.translate(0.0f, (float) i4);
        this.f3537j.draw(canvas);
        canvas.translate((float) i7, 0.0f);
        this.f3536i.draw(canvas);
        canvas.translate((float) (-i7), (float) (-i4));
    }

    public final void b(Canvas canvas) {
        int i2 = this.s;
        int i3 = this.f3534g;
        int i4 = i2 - i3;
        int i5 = this.n;
        int i6 = this.m;
        int i7 = i5 - (i6 / 2);
        this.f3532e.setBounds(0, 0, i3, i6);
        this.f3533f.setBounds(0, 0, this.f3535h, this.t);
        if (e()) {
            this.f3533f.draw(canvas);
            canvas.translate((float) this.f3534g, (float) i7);
            canvas.scale(-1.0f, 1.0f);
            this.f3532e.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate((float) (-this.f3534g), (float) (-i7));
            return;
        }
        canvas.translate((float) i4, 0.0f);
        this.f3533f.draw(canvas);
        canvas.translate(0.0f, (float) i7);
        this.f3532e.draw(canvas);
        canvas.translate((float) (-i4), (float) (-i7));
    }

    public void a(int i2, int i3) {
        int computeVerticalScrollRange = this.u.computeVerticalScrollRange();
        int i4 = this.t;
        this.v = computeVerticalScrollRange - i4 > 0 && i4 >= this.f3530c;
        int computeHorizontalScrollRange = this.u.computeHorizontalScrollRange();
        int i5 = this.s;
        this.w = computeHorizontalScrollRange - i5 > 0 && i5 >= this.f3530c;
        if (this.v || this.w) {
            if (this.v) {
                float f2 = (float) i4;
                this.n = (int) ((f2 * (((float) i3) + (f2 / 2.0f))) / ((float) computeVerticalScrollRange));
                this.m = Math.min(i4, (i4 * i4) / computeVerticalScrollRange);
            }
            if (this.w) {
                float f3 = (float) i5;
                this.q = (int) ((f3 * (((float) i2) + (f3 / 2.0f))) / ((float) computeHorizontalScrollRange));
                this.p = Math.min(i5, (i5 * i5) / computeHorizontalScrollRange);
            }
            int i6 = this.x;
            if (i6 == 0 || i6 == 1) {
                c(1);
            }
            return;
        }
        if (this.x != 0) {
            c(0);
        }
    }

    public boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i2 = this.x;
        if (i2 == 1) {
            boolean b2 = b(motionEvent.getX(), motionEvent.getY());
            boolean a2 = a(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!b2 && !a2) {
                return false;
            }
            if (a2) {
                this.y = 1;
                this.r = (float) ((int) motionEvent.getX());
            } else if (b2) {
                this.y = 2;
                this.o = (float) ((int) motionEvent.getY());
            }
            c(2);
        } else if (i2 != 2) {
            return false;
        }
        return true;
    }

    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.x != 0) {
            if (motionEvent.getAction() == 0) {
                boolean b2 = b(motionEvent.getX(), motionEvent.getY());
                boolean a2 = a(motionEvent.getX(), motionEvent.getY());
                if (b2 || a2) {
                    if (a2) {
                        this.y = 1;
                        this.r = (float) ((int) motionEvent.getX());
                    } else if (b2) {
                        this.y = 2;
                        this.o = (float) ((int) motionEvent.getY());
                    }
                    c(2);
                }
            } else if (motionEvent.getAction() == 1 && this.x == 2) {
                this.o = 0.0f;
                this.r = 0.0f;
                c(1);
                this.y = 0;
            } else if (motionEvent.getAction() == 2 && this.x == 2) {
                h();
                if (this.y == 1) {
                    a(motionEvent.getX());
                }
                if (this.y == 2) {
                    b(motionEvent.getY());
                }
            }
        }
    }

    public final void b(float f2) {
        int[] d2 = d();
        float max = Math.max((float) d2[0], Math.min((float) d2[1], f2));
        if (Math.abs(((float) this.n) - max) >= 2.0f) {
            int a2 = a(this.o, max, d2, this.u.computeVerticalScrollRange(), this.u.computeVerticalScrollOffset(), this.t);
            if (a2 != 0) {
                this.u.scrollBy(0, a2);
            }
            this.o = max;
        }
    }

    public boolean b(float f2, float f3) {
        if (!e() ? f2 >= ((float) (this.s - this.f3534g)) : f2 <= ((float) (this.f3534g / 2))) {
            int i2 = this.n;
            int i3 = this.m;
            if (f3 >= ((float) (i2 - (i3 / 2))) && f3 <= ((float) (i2 + (i3 / 2)))) {
                return true;
            }
        }
        return false;
    }

    public final void a(float f2) {
        int[] c2 = c();
        float max = Math.max((float) c2[0], Math.min((float) c2[1], f2));
        if (Math.abs(((float) this.q) - max) >= 2.0f) {
            int a2 = a(this.r, max, c2, this.u.computeHorizontalScrollRange(), this.u.computeHorizontalScrollOffset(), this.s);
            if (a2 != 0) {
                this.u.scrollBy(a2, 0);
            }
            this.r = max;
        }
    }

    public final int a(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f3 - f2) / ((float) i5)) * ((float) i6));
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    public boolean a(float f2, float f3) {
        if (f3 >= ((float) (this.t - this.f3538k))) {
            int i2 = this.q;
            int i3 = this.p;
            if (f2 >= ((float) (i2 - (i3 / 2))) && f2 <= ((float) (i2 + (i3 / 2)))) {
                return true;
            }
        }
        return false;
    }
}
