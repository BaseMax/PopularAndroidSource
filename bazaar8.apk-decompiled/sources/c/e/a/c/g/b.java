package c.e.a.c.g;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import b.i.k.z;
import c.e.a.c.k;
import c.e.a.c.l.q;
import c.e.a.c.o.a;
import com.google.android.material.button.MaterialButton;

/* compiled from: MaterialButtonHelper */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f11285a = (Build.VERSION.SDK_INT >= 21);

    /* renamed from: b  reason: collision with root package name */
    public final MaterialButton f11286b;

    /* renamed from: c  reason: collision with root package name */
    public int f11287c;

    /* renamed from: d  reason: collision with root package name */
    public int f11288d;

    /* renamed from: e  reason: collision with root package name */
    public int f11289e;

    /* renamed from: f  reason: collision with root package name */
    public int f11290f;

    /* renamed from: g  reason: collision with root package name */
    public int f11291g;

    /* renamed from: h  reason: collision with root package name */
    public int f11292h;

    /* renamed from: i  reason: collision with root package name */
    public PorterDuff.Mode f11293i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f11294j;

    /* renamed from: k  reason: collision with root package name */
    public ColorStateList f11295k;

    /* renamed from: l  reason: collision with root package name */
    public ColorStateList f11296l;
    public final Paint m = new Paint(1);
    public final Rect n = new Rect();
    public final RectF o = new RectF();
    public GradientDrawable p;
    public Drawable q;
    public GradientDrawable r;
    public Drawable s;
    public GradientDrawable t;
    public GradientDrawable u;
    public GradientDrawable v;
    public boolean w = false;

    public b(MaterialButton materialButton) {
        this.f11286b = materialButton;
    }

    public void a(TypedArray typedArray) {
        int i2 = 0;
        this.f11287c = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetLeft, 0);
        this.f11288d = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetRight, 0);
        this.f11289e = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetTop, 0);
        this.f11290f = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetBottom, 0);
        this.f11291g = typedArray.getDimensionPixelSize(k.MaterialButton_cornerRadius, 0);
        this.f11292h = typedArray.getDimensionPixelSize(k.MaterialButton_strokeWidth, 0);
        this.f11293i = q.a(typedArray.getInt(k.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f11294j = a.a(this.f11286b.getContext(), typedArray, k.MaterialButton_backgroundTint);
        this.f11295k = a.a(this.f11286b.getContext(), typedArray, k.MaterialButton_strokeColor);
        this.f11296l = a.a(this.f11286b.getContext(), typedArray, k.MaterialButton_rippleColor);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth((float) this.f11292h);
        Paint paint = this.m;
        ColorStateList colorStateList = this.f11295k;
        if (colorStateList != null) {
            i2 = colorStateList.getColorForState(this.f11286b.getDrawableState(), 0);
        }
        paint.setColor(i2);
        int q2 = z.q(this.f11286b);
        int paddingTop = this.f11286b.getPaddingTop();
        int p2 = z.p(this.f11286b);
        int paddingBottom = this.f11286b.getPaddingBottom();
        this.f11286b.setInternalBackground(f11285a ? b() : a());
        z.a(this.f11286b, q2 + this.f11287c, paddingTop + this.f11289e, p2 + this.f11288d, paddingBottom + this.f11290f);
    }

    @TargetApi(21)
    public final Drawable b() {
        this.t = new GradientDrawable();
        this.t.setCornerRadius(((float) this.f11291g) + 1.0E-5f);
        this.t.setColor(-1);
        n();
        this.u = new GradientDrawable();
        this.u.setCornerRadius(((float) this.f11291g) + 1.0E-5f);
        this.u.setColor(0);
        this.u.setStroke(this.f11292h, this.f11295k);
        InsetDrawable a2 = a((Drawable) new LayerDrawable(new Drawable[]{this.t, this.u}));
        this.v = new GradientDrawable();
        this.v.setCornerRadius(((float) this.f11291g) + 1.0E-5f);
        this.v.setColor(-1);
        return new a(c.e.a.c.p.a.a(this.f11296l), a2, this.v);
    }

    public void c(ColorStateList colorStateList) {
        if (this.f11294j != colorStateList) {
            this.f11294j = colorStateList;
            if (f11285a) {
                n();
                return;
            }
            Drawable drawable = this.q;
            if (drawable != null) {
                b.i.c.a.a.a(drawable, this.f11294j);
            }
        }
    }

    public ColorStateList d() {
        return this.f11296l;
    }

    public ColorStateList e() {
        return this.f11295k;
    }

    public int f() {
        return this.f11292h;
    }

    public ColorStateList g() {
        return this.f11294j;
    }

    public PorterDuff.Mode h() {
        return this.f11293i;
    }

    public boolean i() {
        return this.w;
    }

    public void j() {
        this.w = true;
        this.f11286b.setSupportBackgroundTintList(this.f11294j);
        this.f11286b.setSupportBackgroundTintMode(this.f11293i);
    }

    public final GradientDrawable k() {
        if (!f11285a || this.f11286b.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f11286b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }

    public final GradientDrawable l() {
        if (!f11285a || this.f11286b.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f11286b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }

    public final void m() {
        if (f11285a && this.u != null) {
            this.f11286b.setInternalBackground(b());
        } else if (!f11285a) {
            this.f11286b.invalidate();
        }
    }

    public final void n() {
        GradientDrawable gradientDrawable = this.t;
        if (gradientDrawable != null) {
            b.i.c.a.a.a((Drawable) gradientDrawable, this.f11294j);
            PorterDuff.Mode mode = this.f11293i;
            if (mode != null) {
                b.i.c.a.a.a((Drawable) this.t, mode);
            }
        }
    }

    public void c(int i2) {
        if (this.f11292h != i2) {
            this.f11292h = i2;
            this.m.setStrokeWidth((float) i2);
            m();
        }
    }

    public int c() {
        return this.f11291g;
    }

    public void b(ColorStateList colorStateList) {
        if (this.f11295k != colorStateList) {
            this.f11295k = colorStateList;
            Paint paint = this.m;
            int i2 = 0;
            if (colorStateList != null) {
                i2 = colorStateList.getColorForState(this.f11286b.getDrawableState(), 0);
            }
            paint.setColor(i2);
            m();
        }
    }

    public void b(int i2) {
        if (this.f11291g != i2) {
            this.f11291g = i2;
            if (f11285a && this.t != null && this.u != null && this.v != null) {
                if (Build.VERSION.SDK_INT == 21) {
                    float f2 = ((float) i2) + 1.0E-5f;
                    k().setCornerRadius(f2);
                    l().setCornerRadius(f2);
                }
                float f3 = ((float) i2) + 1.0E-5f;
                this.t.setCornerRadius(f3);
                this.u.setCornerRadius(f3);
                this.v.setCornerRadius(f3);
            } else if (!f11285a) {
                GradientDrawable gradientDrawable = this.p;
                if (gradientDrawable != null && this.r != null) {
                    float f4 = ((float) i2) + 1.0E-5f;
                    gradientDrawable.setCornerRadius(f4);
                    this.r.setCornerRadius(f4);
                    this.f11286b.invalidate();
                }
            }
        }
    }

    public void a(Canvas canvas) {
        if (canvas != null && this.f11295k != null && this.f11292h > 0) {
            this.n.set(this.f11286b.getBackground().getBounds());
            RectF rectF = this.o;
            Rect rect = this.n;
            int i2 = this.f11292h;
            rectF.set(((float) rect.left) + (((float) i2) / 2.0f) + ((float) this.f11287c), ((float) rect.top) + (((float) i2) / 2.0f) + ((float) this.f11289e), (((float) rect.right) - (((float) i2) / 2.0f)) - ((float) this.f11288d), (((float) rect.bottom) - (((float) i2) / 2.0f)) - ((float) this.f11290f));
            float f2 = ((float) this.f11291g) - (((float) this.f11292h) / 2.0f);
            canvas.drawRoundRect(this.o, f2, f2, this.m);
        }
    }

    public final Drawable a() {
        this.p = new GradientDrawable();
        this.p.setCornerRadius(((float) this.f11291g) + 1.0E-5f);
        this.p.setColor(-1);
        this.q = b.i.c.a.a.i(this.p);
        b.i.c.a.a.a(this.q, this.f11294j);
        PorterDuff.Mode mode = this.f11293i;
        if (mode != null) {
            b.i.c.a.a.a(this.q, mode);
        }
        this.r = new GradientDrawable();
        this.r.setCornerRadius(((float) this.f11291g) + 1.0E-5f);
        this.r.setColor(-1);
        this.s = b.i.c.a.a.i(this.r);
        b.i.c.a.a.a(this.s, this.f11296l);
        return a((Drawable) new LayerDrawable(new Drawable[]{this.q, this.s}));
    }

    public final InsetDrawable a(Drawable drawable) {
        InsetDrawable insetDrawable = new InsetDrawable(drawable, this.f11287c, this.f11289e, this.f11288d, this.f11290f);
        return insetDrawable;
    }

    public void a(PorterDuff.Mode mode) {
        if (this.f11293i != mode) {
            this.f11293i = mode;
            if (f11285a) {
                n();
                return;
            }
            Drawable drawable = this.q;
            if (drawable != null) {
                PorterDuff.Mode mode2 = this.f11293i;
                if (mode2 != null) {
                    b.i.c.a.a.a(drawable, mode2);
                }
            }
        }
    }

    public void a(int i2, int i3) {
        GradientDrawable gradientDrawable = this.v;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.f11287c, this.f11289e, i3 - this.f11288d, i2 - this.f11290f);
        }
    }

    public void a(int i2) {
        if (f11285a) {
            GradientDrawable gradientDrawable = this.t;
            if (gradientDrawable != null) {
                gradientDrawable.setColor(i2);
                return;
            }
        }
        if (!f11285a) {
            GradientDrawable gradientDrawable2 = this.p;
            if (gradientDrawable2 != null) {
                gradientDrawable2.setColor(i2);
            }
        }
    }

    public void a(ColorStateList colorStateList) {
        if (this.f11296l != colorStateList) {
            this.f11296l = colorStateList;
            if (f11285a && (this.f11286b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f11286b.getBackground()).setColor(colorStateList);
            } else if (!f11285a) {
                Drawable drawable = this.s;
                if (drawable != null) {
                    b.i.c.a.a.a(drawable, colorStateList);
                }
            }
        }
    }
}
