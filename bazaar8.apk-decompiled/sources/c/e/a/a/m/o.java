package c.e.a.a.m;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.RelativeSizeSpan;
import c.e.a.a.k.a;
import c.e.a.a.k.b;
import c.e.a.a.o.I;
import c.e.a.a.o.p;

/* compiled from: SubtitlePainter */
public final class o {
    public float A;
    public int B;
    public int C;
    public int D;
    public int E;
    public StaticLayout F;
    public int G;
    public int H;
    public int I;
    public Rect J;

    /* renamed from: a  reason: collision with root package name */
    public final float f9431a;

    /* renamed from: b  reason: collision with root package name */
    public final float f9432b;

    /* renamed from: c  reason: collision with root package name */
    public final float f9433c;

    /* renamed from: d  reason: collision with root package name */
    public final float f9434d;

    /* renamed from: e  reason: collision with root package name */
    public final float f9435e;

    /* renamed from: f  reason: collision with root package name */
    public final TextPaint f9436f = new TextPaint();

    /* renamed from: g  reason: collision with root package name */
    public final Paint f9437g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f9438h;

    /* renamed from: i  reason: collision with root package name */
    public Layout.Alignment f9439i;

    /* renamed from: j  reason: collision with root package name */
    public Bitmap f9440j;

    /* renamed from: k  reason: collision with root package name */
    public float f9441k;

    /* renamed from: l  reason: collision with root package name */
    public int f9442l;
    public int m;
    public float n;
    public int o;
    public float p;
    public float q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public float y;
    public float z;

    public o(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f9435e = (float) obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f9434d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = (float) Math.round((((float) context.getResources().getDisplayMetrics().densityDpi) * 2.0f) / 160.0f);
        this.f9431a = round;
        this.f9432b = round;
        this.f9433c = round;
        this.f9436f.setAntiAlias(true);
        this.f9436f.setSubpixelText(true);
        this.f9437g = new Paint();
        this.f9437g.setAntiAlias(true);
        this.f9437g.setStyle(Paint.Style.FILL);
    }

    public void a(b bVar, boolean z2, boolean z3, a aVar, float f2, float f3, float f4, Canvas canvas, int i2, int i3, int i4, int i5) {
        b bVar2 = bVar;
        boolean z4 = z2;
        boolean z5 = z3;
        a aVar2 = aVar;
        float f5 = f2;
        float f6 = f3;
        float f7 = f4;
        Canvas canvas2 = canvas;
        int i6 = i2;
        int i7 = i3;
        int i8 = i4;
        int i9 = i5;
        boolean z6 = bVar2.f9116c == null;
        int i10 = -16777216;
        if (z6) {
            if (!TextUtils.isEmpty(bVar2.f9114a)) {
                i10 = (!bVar2.f9124k || !z4) ? aVar2.f9061d : bVar2.f9125l;
            } else {
                return;
            }
        }
        if (a(this.f9438h, bVar2.f9114a) && I.a((Object) this.f9439i, (Object) bVar2.f9115b) && this.f9440j == bVar2.f9116c && this.f9441k == bVar2.f9117d && this.f9442l == bVar2.f9118e && I.a((Object) Integer.valueOf(this.m), (Object) Integer.valueOf(bVar2.f9119f)) && this.n == bVar2.f9120g && I.a((Object) Integer.valueOf(this.o), (Object) Integer.valueOf(bVar2.f9121h)) && this.p == bVar2.f9122i && this.q == bVar2.f9123j && this.r == z4 && this.s == z5 && this.t == aVar2.f9059b && this.u == aVar2.f9060c && this.v == i10 && this.x == aVar2.f9062e && this.w == aVar2.f9063f && I.a((Object) this.f9436f.getTypeface(), (Object) aVar2.f9064g) && this.y == f5 && this.z == f6 && this.A == f7 && this.B == i6 && this.C == i7 && this.D == i8 && this.E == i9) {
            a(canvas, z6);
            return;
        }
        Canvas canvas3 = canvas;
        this.f9438h = bVar2.f9114a;
        this.f9439i = bVar2.f9115b;
        this.f9440j = bVar2.f9116c;
        this.f9441k = bVar2.f9117d;
        this.f9442l = bVar2.f9118e;
        this.m = bVar2.f9119f;
        this.n = bVar2.f9120g;
        this.o = bVar2.f9121h;
        this.p = bVar2.f9122i;
        this.q = bVar2.f9123j;
        this.r = z4;
        this.s = z5;
        this.t = aVar2.f9059b;
        this.u = aVar2.f9060c;
        this.v = i10;
        this.x = aVar2.f9062e;
        this.w = aVar2.f9063f;
        this.f9436f.setTypeface(aVar2.f9064g);
        this.y = f5;
        this.z = f6;
        this.A = f7;
        this.B = i6;
        this.C = i7;
        this.D = i8;
        this.E = i9;
        if (z6) {
            b();
        } else {
            a();
        }
        a(canvas3, z6);
    }

    public final void b() {
        SpannableStringBuilder spannableStringBuilder;
        int i2;
        int i3;
        int i4;
        int round;
        int i5;
        SpannableStringBuilder spannableStringBuilder2;
        int i6 = this.D - this.B;
        int i7 = this.E - this.C;
        this.f9436f.setTextSize(this.y);
        int i8 = (int) ((this.y * 0.125f) + 0.5f);
        int i9 = i8 * 2;
        int i10 = i6 - i9;
        float f2 = this.p;
        if (f2 != Float.MIN_VALUE) {
            i10 = (int) (((float) i10) * f2);
        }
        if (i10 <= 0) {
            p.d("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        CharSequence charSequence = this.f9438h;
        if (!this.r) {
            charSequence = charSequence.toString();
        } else {
            if (!this.s) {
                spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
                int length = spannableStringBuilder2.length();
                AbsoluteSizeSpan[] absoluteSizeSpanArr = (AbsoluteSizeSpan[]) spannableStringBuilder2.getSpans(0, length, AbsoluteSizeSpan.class);
                RelativeSizeSpan[] relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder2.getSpans(0, length, RelativeSizeSpan.class);
                for (AbsoluteSizeSpan removeSpan : absoluteSizeSpanArr) {
                    spannableStringBuilder2.removeSpan(removeSpan);
                }
                for (RelativeSizeSpan removeSpan2 : relativeSizeSpanArr) {
                    spannableStringBuilder2.removeSpan(removeSpan2);
                }
            } else if (this.z > 0.0f) {
                spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
                spannableStringBuilder2.setSpan(new AbsoluteSizeSpan((int) this.z), 0, spannableStringBuilder2.length(), 16711680);
            }
            charSequence = spannableStringBuilder2;
        }
        if (Color.alpha(this.u) > 0) {
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(charSequence);
            spannableStringBuilder3.setSpan(new BackgroundColorSpan(this.u), 0, spannableStringBuilder3.length(), 16711680);
            spannableStringBuilder = spannableStringBuilder3;
        } else {
            spannableStringBuilder = charSequence;
        }
        Layout.Alignment alignment = this.f9439i;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        StaticLayout staticLayout = r8;
        int i11 = i8;
        StaticLayout staticLayout2 = new StaticLayout(spannableStringBuilder, this.f9436f, i10, alignment2, this.f9434d, this.f9435e, true);
        this.F = staticLayout;
        int height = this.F.getHeight();
        int lineCount = this.F.getLineCount();
        int i12 = 0;
        for (int i13 = 0; i13 < lineCount; i13++) {
            i12 = Math.max((int) Math.ceil((double) this.F.getLineWidth(i13)), i12);
        }
        if (this.p == Float.MIN_VALUE || i12 >= i10) {
            i10 = i12;
        }
        int i14 = i10 + i9;
        float f3 = this.n;
        if (f3 != Float.MIN_VALUE) {
            int round2 = Math.round(((float) i6) * f3) + this.B;
            int i15 = this.o;
            if (i15 == 2) {
                round2 -= i14;
            } else if (i15 == 1) {
                round2 = ((round2 * 2) - i14) / 2;
            }
            i3 = Math.max(round2, this.B);
            i2 = Math.min(i14 + i3, this.D);
        } else {
            i3 = ((i6 - i14) / 2) + this.B;
            i2 = i3 + i14;
        }
        int i16 = i2 - i3;
        if (i16 <= 0) {
            p.d("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f4 = this.f9441k;
        if (f4 != Float.MIN_VALUE) {
            if (this.f9442l == 0) {
                round = Math.round(((float) i7) * f4);
                i5 = this.C;
            } else {
                int lineBottom = this.F.getLineBottom(0) - this.F.getLineTop(0);
                float f5 = this.f9441k;
                if (f5 >= 0.0f) {
                    round = Math.round(f5 * ((float) lineBottom));
                    i5 = this.C;
                } else {
                    round = Math.round((f5 + 1.0f) * ((float) lineBottom));
                    i5 = this.E;
                }
            }
            i4 = round + i5;
            int i17 = this.m;
            if (i17 == 2) {
                i4 -= height;
            } else if (i17 == 1) {
                i4 = ((i4 * 2) - height) / 2;
            }
            int i18 = i4 + height;
            int i19 = this.E;
            if (i18 > i19) {
                i4 = i19 - height;
            } else {
                int i20 = this.C;
                if (i4 < i20) {
                    i4 = i20;
                }
            }
        } else {
            i4 = (this.E - height) - ((int) (((float) i7) * this.A));
        }
        StaticLayout staticLayout3 = new StaticLayout(spannableStringBuilder, this.f9436f, i16, alignment2, this.f9434d, this.f9435e, true);
        this.F = staticLayout3;
        this.G = i3;
        this.H = i4;
        this.I = i11;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x005e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r7 = this;
            int r0 = r7.D
            int r1 = r7.B
            int r0 = r0 - r1
            int r2 = r7.E
            int r3 = r7.C
            int r2 = r2 - r3
            float r1 = (float) r1
            float r0 = (float) r0
            float r4 = r7.n
            float r4 = r4 * r0
            float r1 = r1 + r4
            float r3 = (float) r3
            float r2 = (float) r2
            float r4 = r7.f9441k
            float r4 = r4 * r2
            float r3 = r3 + r4
            float r4 = r7.p
            float r0 = r0 * r4
            int r0 = java.lang.Math.round(r0)
            float r4 = r7.q
            r5 = 1
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 == 0) goto L_0x002e
            float r2 = r2 * r4
            int r2 = java.lang.Math.round(r2)
            goto L_0x0044
        L_0x002e:
            float r2 = (float) r0
            android.graphics.Bitmap r4 = r7.f9440j
            int r4 = r4.getHeight()
            float r4 = (float) r4
            android.graphics.Bitmap r5 = r7.f9440j
            int r5 = r5.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            float r2 = r2 * r4
            int r2 = java.lang.Math.round(r2)
        L_0x0044:
            int r4 = r7.m
            r5 = 1
            r6 = 2
            if (r4 != r6) goto L_0x004d
            float r4 = (float) r0
        L_0x004b:
            float r1 = r1 - r4
            goto L_0x0053
        L_0x004d:
            if (r4 != r5) goto L_0x0053
            int r4 = r0 / 2
            float r4 = (float) r4
            goto L_0x004b
        L_0x0053:
            int r1 = java.lang.Math.round(r1)
            int r4 = r7.o
            if (r4 != r6) goto L_0x005e
            float r4 = (float) r2
        L_0x005c:
            float r3 = r3 - r4
            goto L_0x0064
        L_0x005e:
            if (r4 != r5) goto L_0x0064
            int r4 = r2 / 2
            float r4 = (float) r4
            goto L_0x005c
        L_0x0064:
            int r3 = java.lang.Math.round(r3)
            android.graphics.Rect r4 = new android.graphics.Rect
            int r0 = r0 + r1
            int r2 = r2 + r3
            r4.<init>(r1, r3, r0, r2)
            r7.J = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.m.o.a():void");
    }

    public final void a(Canvas canvas, boolean z2) {
        if (z2) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    public final void a(Canvas canvas) {
        canvas.drawBitmap(this.f9440j, null, this.J, null);
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    public final void b(Canvas canvas) {
        int i2;
        StaticLayout staticLayout = this.F;
        if (staticLayout != null) {
            int save = canvas.save();
            canvas.translate((float) this.G, (float) this.H);
            if (Color.alpha(this.v) > 0) {
                this.f9437g.setColor(this.v);
                canvas.drawRect((float) (-this.I), 0.0f, (float) (staticLayout.getWidth() + this.I), (float) staticLayout.getHeight(), this.f9437g);
            }
            int i3 = this.x;
            boolean z2 = true;
            if (i3 == 1) {
                this.f9436f.setStrokeJoin(Paint.Join.ROUND);
                this.f9436f.setStrokeWidth(this.f9431a);
                this.f9436f.setColor(this.w);
                this.f9436f.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (i3 == 2) {
                TextPaint textPaint = this.f9436f;
                float f2 = this.f9432b;
                float f3 = this.f9433c;
                textPaint.setShadowLayer(f2, f3, f3, this.w);
            } else if (i3 == 3 || i3 == 4) {
                if (this.x != 3) {
                    z2 = false;
                }
                int i4 = -1;
                if (z2) {
                    i2 = -1;
                } else {
                    i2 = this.w;
                }
                if (z2) {
                    i4 = this.w;
                }
                float f4 = this.f9432b / 2.0f;
                this.f9436f.setColor(this.t);
                this.f9436f.setStyle(Paint.Style.FILL);
                float f5 = -f4;
                this.f9436f.setShadowLayer(this.f9432b, f5, f5, i2);
                staticLayout.draw(canvas);
                this.f9436f.setShadowLayer(this.f9432b, f4, f4, i4);
            }
            this.f9436f.setColor(this.t);
            this.f9436f.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            this.f9436f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
        }
    }
}
