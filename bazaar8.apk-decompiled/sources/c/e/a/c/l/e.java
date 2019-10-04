package c.e.a.c.l;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import b.b.g.pa;
import b.b.j;
import b.i.e.a;
import b.i.k.C0260c;
import b.i.k.z;

/* compiled from: CollapsingTextHelper */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f11376a = (Build.VERSION.SDK_INT < 18);

    /* renamed from: b  reason: collision with root package name */
    public static final Paint f11377b = null;
    public boolean A;
    public Bitmap B;
    public Paint C;
    public float D;
    public float E;
    public float F;
    public float G;
    public int[] H;
    public boolean I;
    public final TextPaint J;
    public final TextPaint K;
    public TimeInterpolator L;
    public TimeInterpolator M;
    public float N;
    public float O;
    public float P;
    public int Q;
    public float R;
    public float S;
    public float T;
    public int U;

    /* renamed from: c  reason: collision with root package name */
    public final View f11378c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11379d;

    /* renamed from: e  reason: collision with root package name */
    public float f11380e;

    /* renamed from: f  reason: collision with root package name */
    public final Rect f11381f;

    /* renamed from: g  reason: collision with root package name */
    public final Rect f11382g;

    /* renamed from: h  reason: collision with root package name */
    public final RectF f11383h;

    /* renamed from: i  reason: collision with root package name */
    public int f11384i = 16;

    /* renamed from: j  reason: collision with root package name */
    public int f11385j = 16;

    /* renamed from: k  reason: collision with root package name */
    public float f11386k = 15.0f;

    /* renamed from: l  reason: collision with root package name */
    public float f11387l = 15.0f;
    public ColorStateList m;
    public ColorStateList n;
    public float o;
    public float p;
    public float q;
    public float r;
    public float s;
    public float t;
    public Typeface u;
    public Typeface v;
    public Typeface w;
    public CharSequence x;
    public CharSequence y;
    public boolean z;

    static {
        Paint paint = f11377b;
        if (paint != null) {
            paint.setAntiAlias(true);
            f11377b.setColor(-65281);
        }
    }

    public e(View view) {
        this.f11378c = view;
        this.J = new TextPaint(129);
        this.K = new TextPaint(this.J);
        this.f11382g = new Rect();
        this.f11381f = new Rect();
        this.f11383h = new RectF();
    }

    public void a(TimeInterpolator timeInterpolator) {
        this.L = timeInterpolator;
        r();
    }

    public void b(TimeInterpolator timeInterpolator) {
        this.M = timeInterpolator;
        r();
    }

    public void c(int i2) {
        if (this.f11385j != i2) {
            this.f11385j = i2;
            r();
        }
    }

    public void d(float f2) {
        if (this.f11386k != f2) {
            this.f11386k = f2;
            r();
        }
    }

    public void e(int i2) {
        if (this.f11384i != i2) {
            this.f11384i = i2;
            r();
        }
    }

    public final void f(float f2) {
        b(f2);
        this.A = f11376a && this.F != 1.0f;
        if (this.A) {
            e();
        }
        z.F(this.f11378c);
    }

    public int g() {
        return this.f11385j;
    }

    public float h() {
        a(this.K);
        return -this.K.ascent();
    }

    public Typeface i() {
        Typeface typeface = this.u;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int j() {
        int[] iArr = this.H;
        if (iArr != null) {
            return this.n.getColorForState(iArr, 0);
        }
        return this.n.getDefaultColor();
    }

    public final int k() {
        int[] iArr = this.H;
        if (iArr != null) {
            return this.m.getColorForState(iArr, 0);
        }
        return this.m.getDefaultColor();
    }

    public int l() {
        return this.f11384i;
    }

    public Typeface m() {
        Typeface typeface = this.v;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float n() {
        return this.f11380e;
    }

    public CharSequence o() {
        return this.x;
    }

    public final boolean p() {
        ColorStateList colorStateList = this.n;
        if (colorStateList == null || !colorStateList.isStateful()) {
            ColorStateList colorStateList2 = this.m;
            if (colorStateList2 == null || !colorStateList2.isStateful()) {
                return false;
            }
        }
        return true;
    }

    public void q() {
        this.f11379d = this.f11382g.width() > 0 && this.f11382g.height() > 0 && this.f11381f.width() > 0 && this.f11381f.height() > 0;
    }

    public void r() {
        if (this.f11378c.getHeight() > 0 && this.f11378c.getWidth() > 0) {
            a();
            c();
        }
    }

    public void a(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            r();
        }
    }

    public void b(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            r();
        }
    }

    public void c(Typeface typeface) {
        this.v = typeface;
        this.u = typeface;
        r();
    }

    public void d(int i2) {
        pa a2 = pa.a(this.f11378c.getContext(), i2, j.TextAppearance);
        if (a2.g(j.TextAppearance_android_textColor)) {
            this.m = a2.a(j.TextAppearance_android_textColor);
        }
        if (a2.g(j.TextAppearance_android_textSize)) {
            this.f11386k = (float) a2.c(j.TextAppearance_android_textSize, (int) this.f11386k);
        }
        this.U = a2.d(j.TextAppearance_android_shadowColor, 0);
        this.S = a2.b(j.TextAppearance_android_shadowDx, 0.0f);
        this.T = a2.b(j.TextAppearance_android_shadowDy, 0.0f);
        this.R = a2.b(j.TextAppearance_android_shadowRadius, 0.0f);
        a2.a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.v = a(i2);
        }
        r();
    }

    public void e(float f2) {
        float a2 = a.a(f2, 0.0f, 1.0f);
        if (a2 != this.f11380e) {
            this.f11380e = a2;
            c();
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        if (!a(this.f11382g, i2, i3, i4, i5)) {
            this.f11382g.set(i2, i3, i4, i5);
            this.I = true;
            q();
        }
    }

    public void b(int i2, int i3, int i4, int i5) {
        if (!a(this.f11381f, i2, i3, i4, i5)) {
            this.f11381f.set(i2, i3, i4, i5);
            this.I = true;
            q();
        }
    }

    public final void c() {
        a(this.f11380e);
    }

    public ColorStateList f() {
        return this.n;
    }

    public final void c(float f2) {
        this.f11383h.left = a((float) this.f11381f.left, (float) this.f11382g.left, f2, this.L);
        this.f11383h.top = a(this.o, this.p, f2, this.L);
        this.f11383h.right = a((float) this.f11381f.right, (float) this.f11382g.right, f2, this.L);
        this.f11383h.bottom = a((float) this.f11381f.bottom, (float) this.f11382g.bottom, f2, this.L);
    }

    public final void e() {
        if (this.B == null && !this.f11381f.isEmpty() && !TextUtils.isEmpty(this.y)) {
            a(0.0f);
            this.D = this.J.ascent();
            this.E = this.J.descent();
            TextPaint textPaint = this.J;
            CharSequence charSequence = this.y;
            int round = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
            int round2 = Math.round(this.E - this.D);
            if (round > 0 && round2 > 0) {
                this.B = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.B);
                CharSequence charSequence2 = this.y;
                canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, ((float) round2) - this.J.descent(), this.J);
                if (this.C == null) {
                    this.C = new Paint(3);
                }
            }
        }
    }

    public void a(RectF rectF) {
        float f2;
        boolean a2 = a(this.x);
        if (!a2) {
            f2 = (float) this.f11382g.left;
        } else {
            f2 = ((float) this.f11382g.right) - b();
        }
        rectF.left = f2;
        Rect rect = this.f11382g;
        rectF.top = (float) rect.top;
        rectF.right = !a2 ? rectF.left + b() : (float) rect.right;
        rectF.bottom = ((float) this.f11382g.top) + h();
    }

    public float b() {
        if (this.x == null) {
            return 0.0f;
        }
        a(this.K);
        TextPaint textPaint = this.K;
        CharSequence charSequence = this.x;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void b(int i2) {
        pa a2 = pa.a(this.f11378c.getContext(), i2, j.TextAppearance);
        if (a2.g(j.TextAppearance_android_textColor)) {
            this.n = a2.a(j.TextAppearance_android_textColor);
        }
        if (a2.g(j.TextAppearance_android_textSize)) {
            this.f11387l = (float) a2.c(j.TextAppearance_android_textSize, (int) this.f11387l);
        }
        this.Q = a2.d(j.TextAppearance_android_shadowColor, 0);
        this.O = a2.b(j.TextAppearance_android_shadowDx, 0.0f);
        this.P = a2.b(j.TextAppearance_android_shadowDy, 0.0f);
        this.N = a2.b(j.TextAppearance_android_shadowRadius, 0.0f);
        a2.a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.u = a(i2);
        }
        r();
    }

    public final void a(TextPaint textPaint) {
        textPaint.setTextSize(this.f11387l);
        textPaint.setTypeface(this.u);
    }

    public final Typeface a(int i2) {
        TypedArray obtainStyledAttributes = this.f11378c.getContext().obtainStyledAttributes(i2, new int[]{16843692});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(Typeface typeface) {
        if (this.u != typeface) {
            this.u = typeface;
            r();
        }
    }

    public final void d() {
        Bitmap bitmap = this.B;
        if (bitmap != null) {
            bitmap.recycle();
            this.B = null;
        }
    }

    public final boolean a(int[] iArr) {
        this.H = iArr;
        if (!p()) {
            return false;
        }
        r();
        return true;
    }

    public final void a(float f2) {
        c(f2);
        this.s = a(this.q, this.r, f2, this.L);
        this.t = a(this.o, this.p, f2, this.L);
        f(a(this.f11386k, this.f11387l, f2, this.M));
        if (this.n != this.m) {
            this.J.setColor(a(k(), j(), f2));
        } else {
            this.J.setColor(j());
        }
        this.J.setShadowLayer(a(this.R, this.N, f2, (TimeInterpolator) null), a(this.S, this.O, f2, (TimeInterpolator) null), a(this.T, this.P, f2, (TimeInterpolator) null), a(this.U, this.Q, f2));
        z.F(this.f11378c);
    }

    public void b(Typeface typeface) {
        if (this.v != typeface) {
            this.v = typeface;
            r();
        }
    }

    public final void b(float f2) {
        boolean z2;
        float f3;
        boolean z3;
        if (this.x != null) {
            float width = (float) this.f11382g.width();
            float width2 = (float) this.f11381f.width();
            boolean z4 = true;
            if (a(f2, this.f11387l)) {
                float f4 = this.f11387l;
                this.F = 1.0f;
                Typeface typeface = this.w;
                Typeface typeface2 = this.u;
                if (typeface != typeface2) {
                    this.w = typeface2;
                    z3 = true;
                } else {
                    z3 = false;
                }
                f3 = f4;
                z2 = z3;
            } else {
                f3 = this.f11386k;
                Typeface typeface3 = this.w;
                Typeface typeface4 = this.v;
                if (typeface3 != typeface4) {
                    this.w = typeface4;
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (a(f2, this.f11386k)) {
                    this.F = 1.0f;
                } else {
                    this.F = f2 / this.f11386k;
                }
                float f5 = this.f11387l / this.f11386k;
                width = width2 * f5 > width ? Math.min(width / f5, width2) : width2;
            }
            if (width > 0.0f) {
                z2 = this.G != f3 || this.I || z2;
                this.G = f3;
                this.I = false;
            }
            if (this.y == null || z2) {
                this.J.setTextSize(this.G);
                this.J.setTypeface(this.w);
                TextPaint textPaint = this.J;
                if (this.F == 1.0f) {
                    z4 = false;
                }
                textPaint.setLinearText(z4);
                CharSequence ellipsize = TextUtils.ellipsize(this.x, this.J, width, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.y)) {
                    this.y = ellipsize;
                    this.z = a(this.y);
                }
            }
        }
    }

    public final void a() {
        float f2 = this.G;
        b(this.f11387l);
        CharSequence charSequence = this.y;
        float f3 = 0.0f;
        float measureText = charSequence != null ? this.J.measureText(charSequence, 0, charSequence.length()) : 0.0f;
        int a2 = C0260c.a(this.f11385j, this.z ? 1 : 0);
        int i2 = a2 & 112;
        if (i2 == 48) {
            this.p = ((float) this.f11382g.top) - this.J.ascent();
        } else if (i2 != 80) {
            this.p = ((float) this.f11382g.centerY()) + (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent());
        } else {
            this.p = (float) this.f11382g.bottom;
        }
        int i3 = a2 & 8388615;
        if (i3 == 1) {
            this.r = ((float) this.f11382g.centerX()) - (measureText / 2.0f);
        } else if (i3 != 5) {
            this.r = (float) this.f11382g.left;
        } else {
            this.r = ((float) this.f11382g.right) - measureText;
        }
        b(this.f11386k);
        CharSequence charSequence2 = this.y;
        if (charSequence2 != null) {
            f3 = this.J.measureText(charSequence2, 0, charSequence2.length());
        }
        int a3 = C0260c.a(this.f11384i, this.z ? 1 : 0);
        int i4 = a3 & 112;
        if (i4 == 48) {
            this.o = ((float) this.f11381f.top) - this.J.ascent();
        } else if (i4 != 80) {
            this.o = ((float) this.f11381f.centerY()) + (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent());
        } else {
            this.o = (float) this.f11381f.bottom;
        }
        int i5 = a3 & 8388615;
        if (i5 == 1) {
            this.q = ((float) this.f11381f.centerX()) - (f3 / 2.0f);
        } else if (i5 != 5) {
            this.q = (float) this.f11381f.left;
        } else {
            this.q = ((float) this.f11381f.right) - f3;
        }
        d();
        f(f2);
    }

    public void b(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.x)) {
            this.x = charSequence;
            this.y = null;
            d();
            r();
        }
    }

    public void a(Canvas canvas) {
        float f2;
        int save = canvas.save();
        if (this.y != null && this.f11379d) {
            float f3 = this.s;
            float f4 = this.t;
            boolean z2 = this.A && this.B != null;
            if (z2) {
                f2 = this.D * this.F;
                float f5 = this.E;
            } else {
                f2 = this.J.ascent() * this.F;
                this.J.descent();
                float f6 = this.F;
            }
            if (z2) {
                f4 += f2;
            }
            float f7 = f4;
            float f8 = this.F;
            if (f8 != 1.0f) {
                canvas.scale(f8, f8, f3, f7);
            }
            if (z2) {
                canvas.drawBitmap(this.B, f3, f7, this.C);
            } else {
                CharSequence charSequence = this.y;
                canvas.drawText(charSequence, 0, charSequence.length(), f3, f7, this.J);
            }
        }
        canvas.restoreToCount(save);
    }

    public final boolean a(CharSequence charSequence) {
        boolean z2 = true;
        if (z.m(this.f11378c) != 1) {
            z2 = false;
        }
        return (z2 ? b.i.i.e.f2743d : b.i.i.e.f2742c).isRtl(charSequence, 0, charSequence.length());
    }

    public static boolean a(float f2, float f3) {
        return Math.abs(f2 - f3) < 0.001f;
    }

    public static int a(int i2, int i3, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((((float) Color.alpha(i2)) * f3) + (((float) Color.alpha(i3)) * f2)), (int) ((((float) Color.red(i2)) * f3) + (((float) Color.red(i3)) * f2)), (int) ((((float) Color.green(i2)) * f3) + (((float) Color.green(i3)) * f2)), (int) ((((float) Color.blue(i2)) * f3) + (((float) Color.blue(i3)) * f2)));
    }

    public static float a(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return c.e.a.c.a.a.a(f2, f3, f4);
    }

    public static boolean a(Rect rect, int i2, int i3, int i4, int i5) {
        return rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5;
    }
}
