package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import b.b.j;
import b.i.b.a.h;
import b.i.l.b;
import java.lang.ref.WeakReference;

/* compiled from: AppCompatTextHelper */
public class C {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f2017a;

    /* renamed from: b  reason: collision with root package name */
    public na f2018b;

    /* renamed from: c  reason: collision with root package name */
    public na f2019c;

    /* renamed from: d  reason: collision with root package name */
    public na f2020d;

    /* renamed from: e  reason: collision with root package name */
    public na f2021e;

    /* renamed from: f  reason: collision with root package name */
    public na f2022f;

    /* renamed from: g  reason: collision with root package name */
    public na f2023g;

    /* renamed from: h  reason: collision with root package name */
    public na f2024h;

    /* renamed from: i  reason: collision with root package name */
    public final D f2025i;

    /* renamed from: j  reason: collision with root package name */
    public int f2026j = 0;

    /* renamed from: k  reason: collision with root package name */
    public int f2027k = -1;

    /* renamed from: l  reason: collision with root package name */
    public Typeface f2028l;
    public boolean m;

    /* compiled from: AppCompatTextHelper */
    private static class a extends h.a {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<C> f2029a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2030b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2031c;

        /* renamed from: b.b.g.C$a$a  reason: collision with other inner class name */
        /* compiled from: AppCompatTextHelper */
        private class C0023a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final WeakReference<C> f2032a;

            /* renamed from: b  reason: collision with root package name */
            public final Typeface f2033b;

            public C0023a(WeakReference<C> weakReference, Typeface typeface) {
                this.f2032a = weakReference;
                this.f2033b = typeface;
            }

            public void run() {
                C c2 = (C) this.f2032a.get();
                if (c2 != null) {
                    c2.a(this.f2033b);
                }
            }
        }

        public a(C c2, int i2, int i3) {
            this.f2029a = new WeakReference<>(c2);
            this.f2030b = i2;
            this.f2031c = i3;
        }

        public void a(int i2) {
        }

        public void a(Typeface typeface) {
            C c2 = (C) this.f2029a.get();
            if (c2 != null) {
                if (Build.VERSION.SDK_INT >= 28) {
                    int i2 = this.f2030b;
                    if (i2 != -1) {
                        typeface = Typeface.create(typeface, i2, (this.f2031c & 2) != 0);
                    }
                }
                c2.a((Runnable) new C0023a(this.f2029a, typeface));
            }
        }
    }

    public C(TextView textView) {
        this.f2017a = textView;
        this.f2025i = new D(this.f2017a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x0110  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0117  */
    @android.annotation.SuppressLint({"NewApi"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.util.AttributeSet r19, int r20) {
        /*
            r18 = this;
            r7 = r18
            r0 = r19
            r1 = r20
            android.widget.TextView r2 = r7.f2017a
            android.content.Context r2 = r2.getContext()
            b.b.g.m r3 = b.b.g.C0222m.b()
            int[] r4 = b.b.j.AppCompatTextHelper
            r5 = 0
            b.b.g.pa r4 = b.b.g.pa.a(r2, r0, r4, r1, r5)
            int r6 = b.b.j.AppCompatTextHelper_android_textAppearance
            r8 = -1
            int r6 = r4.g(r6, r8)
            int r9 = b.b.j.AppCompatTextHelper_android_drawableLeft
            boolean r9 = r4.g(r9)
            if (r9 == 0) goto L_0x0032
            int r9 = b.b.j.AppCompatTextHelper_android_drawableLeft
            int r9 = r4.g(r9, r5)
            b.b.g.na r9 = a(r2, r3, r9)
            r7.f2018b = r9
        L_0x0032:
            int r9 = b.b.j.AppCompatTextHelper_android_drawableTop
            boolean r9 = r4.g(r9)
            if (r9 == 0) goto L_0x0046
            int r9 = b.b.j.AppCompatTextHelper_android_drawableTop
            int r9 = r4.g(r9, r5)
            b.b.g.na r9 = a(r2, r3, r9)
            r7.f2019c = r9
        L_0x0046:
            int r9 = b.b.j.AppCompatTextHelper_android_drawableRight
            boolean r9 = r4.g(r9)
            if (r9 == 0) goto L_0x005a
            int r9 = b.b.j.AppCompatTextHelper_android_drawableRight
            int r9 = r4.g(r9, r5)
            b.b.g.na r9 = a(r2, r3, r9)
            r7.f2020d = r9
        L_0x005a:
            int r9 = b.b.j.AppCompatTextHelper_android_drawableBottom
            boolean r9 = r4.g(r9)
            if (r9 == 0) goto L_0x006e
            int r9 = b.b.j.AppCompatTextHelper_android_drawableBottom
            int r9 = r4.g(r9, r5)
            b.b.g.na r9 = a(r2, r3, r9)
            r7.f2021e = r9
        L_0x006e:
            int r9 = android.os.Build.VERSION.SDK_INT
            r10 = 17
            if (r9 < r10) goto L_0x009c
            int r9 = b.b.j.AppCompatTextHelper_android_drawableStart
            boolean r9 = r4.g(r9)
            if (r9 == 0) goto L_0x0088
            int r9 = b.b.j.AppCompatTextHelper_android_drawableStart
            int r9 = r4.g(r9, r5)
            b.b.g.na r9 = a(r2, r3, r9)
            r7.f2022f = r9
        L_0x0088:
            int r9 = b.b.j.AppCompatTextHelper_android_drawableEnd
            boolean r9 = r4.g(r9)
            if (r9 == 0) goto L_0x009c
            int r9 = b.b.j.AppCompatTextHelper_android_drawableEnd
            int r9 = r4.g(r9, r5)
            b.b.g.na r9 = a(r2, r3, r9)
            r7.f2023g = r9
        L_0x009c:
            r4.a()
            android.widget.TextView r4 = r7.f2017a
            android.text.method.TransformationMethod r4 = r4.getTransformationMethod()
            boolean r4 = r4 instanceof android.text.method.PasswordTransformationMethod
            r9 = 26
            r11 = 23
            if (r6 == r8) goto L_0x0130
            int[] r13 = b.b.j.TextAppearance
            b.b.g.pa r6 = b.b.g.pa.a((android.content.Context) r2, (int) r6, (int[]) r13)
            if (r4 != 0) goto L_0x00c6
            int r13 = b.b.j.TextAppearance_textAllCaps
            boolean r13 = r6.g(r13)
            if (r13 == 0) goto L_0x00c6
            int r13 = b.b.j.TextAppearance_textAllCaps
            boolean r13 = r6.a((int) r13, (boolean) r5)
            r14 = r13
            r13 = 1
            goto L_0x00c8
        L_0x00c6:
            r13 = 0
            r14 = 0
        L_0x00c8:
            r7.a((android.content.Context) r2, (b.b.g.pa) r6)
            int r15 = android.os.Build.VERSION.SDK_INT
            if (r15 >= r11) goto L_0x0105
            int r15 = b.b.j.TextAppearance_android_textColor
            boolean r15 = r6.g(r15)
            if (r15 == 0) goto L_0x00de
            int r15 = b.b.j.TextAppearance_android_textColor
            android.content.res.ColorStateList r15 = r6.a(r15)
            goto L_0x00df
        L_0x00de:
            r15 = 0
        L_0x00df:
            int r10 = b.b.j.TextAppearance_android_textColorHint
            boolean r10 = r6.g(r10)
            if (r10 == 0) goto L_0x00ee
            int r10 = b.b.j.TextAppearance_android_textColorHint
            android.content.res.ColorStateList r10 = r6.a(r10)
            goto L_0x00ef
        L_0x00ee:
            r10 = 0
        L_0x00ef:
            int r12 = b.b.j.TextAppearance_android_textColorLink
            boolean r12 = r6.g(r12)
            if (r12 == 0) goto L_0x0103
            int r12 = b.b.j.TextAppearance_android_textColorLink
            android.content.res.ColorStateList r12 = r6.a(r12)
            r17 = r15
            r15 = r12
            r12 = r17
            goto L_0x0108
        L_0x0103:
            r12 = r15
            goto L_0x0107
        L_0x0105:
            r10 = 0
            r12 = 0
        L_0x0107:
            r15 = 0
        L_0x0108:
            int r8 = b.b.j.TextAppearance_textLocale
            boolean r8 = r6.g(r8)
            if (r8 == 0) goto L_0x0117
            int r8 = b.b.j.TextAppearance_textLocale
            java.lang.String r8 = r6.d(r8)
            goto L_0x0118
        L_0x0117:
            r8 = 0
        L_0x0118:
            int r11 = android.os.Build.VERSION.SDK_INT
            if (r11 < r9) goto L_0x012b
            int r11 = b.b.j.TextAppearance_fontVariationSettings
            boolean r11 = r6.g(r11)
            if (r11 == 0) goto L_0x012b
            int r11 = b.b.j.TextAppearance_fontVariationSettings
            java.lang.String r11 = r6.d(r11)
            goto L_0x012c
        L_0x012b:
            r11 = 0
        L_0x012c:
            r6.a()
            goto L_0x0137
        L_0x0130:
            r8 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x0137:
            int[] r6 = b.b.j.TextAppearance
            b.b.g.pa r6 = b.b.g.pa.a(r2, r0, r6, r1, r5)
            if (r4 != 0) goto L_0x014e
            int r9 = b.b.j.TextAppearance_textAllCaps
            boolean r9 = r6.g(r9)
            if (r9 == 0) goto L_0x014e
            int r9 = b.b.j.TextAppearance_textAllCaps
            boolean r14 = r6.a((int) r9, (boolean) r5)
            r13 = 1
        L_0x014e:
            int r9 = android.os.Build.VERSION.SDK_INT
            r5 = 23
            if (r9 >= r5) goto L_0x017e
            int r5 = b.b.j.TextAppearance_android_textColor
            boolean r5 = r6.g(r5)
            if (r5 == 0) goto L_0x0162
            int r5 = b.b.j.TextAppearance_android_textColor
            android.content.res.ColorStateList r12 = r6.a(r5)
        L_0x0162:
            int r5 = b.b.j.TextAppearance_android_textColorHint
            boolean r5 = r6.g(r5)
            if (r5 == 0) goto L_0x0170
            int r5 = b.b.j.TextAppearance_android_textColorHint
            android.content.res.ColorStateList r10 = r6.a(r5)
        L_0x0170:
            int r5 = b.b.j.TextAppearance_android_textColorLink
            boolean r5 = r6.g(r5)
            if (r5 == 0) goto L_0x017e
            int r5 = b.b.j.TextAppearance_android_textColorLink
            android.content.res.ColorStateList r15 = r6.a(r5)
        L_0x017e:
            int r5 = b.b.j.TextAppearance_textLocale
            boolean r5 = r6.g(r5)
            if (r5 == 0) goto L_0x018c
            int r5 = b.b.j.TextAppearance_textLocale
            java.lang.String r8 = r6.d(r5)
        L_0x018c:
            int r5 = android.os.Build.VERSION.SDK_INT
            r9 = 26
            if (r5 < r9) goto L_0x01a0
            int r5 = b.b.j.TextAppearance_fontVariationSettings
            boolean r5 = r6.g(r5)
            if (r5 == 0) goto L_0x01a0
            int r5 = b.b.j.TextAppearance_fontVariationSettings
            java.lang.String r11 = r6.d(r5)
        L_0x01a0:
            int r5 = android.os.Build.VERSION.SDK_INT
            r9 = 28
            if (r5 < r9) goto L_0x01c1
            int r5 = b.b.j.TextAppearance_android_textSize
            boolean r5 = r6.g(r5)
            if (r5 == 0) goto L_0x01c1
            int r5 = b.b.j.TextAppearance_android_textSize
            r9 = -1
            int r5 = r6.c(r5, r9)
            if (r5 != 0) goto L_0x01c1
            android.widget.TextView r5 = r7.f2017a
            r9 = 0
            r16 = r3
            r3 = 0
            r5.setTextSize(r3, r9)
            goto L_0x01c3
        L_0x01c1:
            r16 = r3
        L_0x01c3:
            r7.a((android.content.Context) r2, (b.b.g.pa) r6)
            r6.a()
            if (r12 == 0) goto L_0x01d0
            android.widget.TextView r3 = r7.f2017a
            r3.setTextColor(r12)
        L_0x01d0:
            if (r10 == 0) goto L_0x01d7
            android.widget.TextView r3 = r7.f2017a
            r3.setHintTextColor(r10)
        L_0x01d7:
            if (r15 == 0) goto L_0x01de
            android.widget.TextView r3 = r7.f2017a
            r3.setLinkTextColor(r15)
        L_0x01de:
            if (r4 != 0) goto L_0x01e5
            if (r13 == 0) goto L_0x01e5
            r7.a((boolean) r14)
        L_0x01e5:
            android.graphics.Typeface r3 = r7.f2028l
            if (r3 == 0) goto L_0x01fb
            int r4 = r7.f2027k
            r5 = -1
            if (r4 != r5) goto L_0x01f6
            android.widget.TextView r4 = r7.f2017a
            int r5 = r7.f2026j
            r4.setTypeface(r3, r5)
            goto L_0x01fb
        L_0x01f6:
            android.widget.TextView r4 = r7.f2017a
            r4.setTypeface(r3)
        L_0x01fb:
            if (r11 == 0) goto L_0x0202
            android.widget.TextView r3 = r7.f2017a
            r3.setFontVariationSettings(r11)
        L_0x0202:
            if (r8 == 0) goto L_0x022c
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 24
            if (r3 < r4) goto L_0x0214
            android.widget.TextView r3 = r7.f2017a
            android.os.LocaleList r4 = android.os.LocaleList.forLanguageTags(r8)
            r3.setTextLocales(r4)
            goto L_0x022c
        L_0x0214:
            r4 = 21
            if (r3 < r4) goto L_0x022c
            r3 = 44
            int r3 = r8.indexOf(r3)
            r4 = 0
            java.lang.String r3 = r8.substring(r4, r3)
            android.widget.TextView r4 = r7.f2017a
            java.util.Locale r3 = java.util.Locale.forLanguageTag(r3)
            r4.setTextLocale(r3)
        L_0x022c:
            b.b.g.D r3 = r7.f2025i
            r3.a((android.util.AttributeSet) r0, (int) r1)
            boolean r1 = b.i.l.b.f2874a
            if (r1 == 0) goto L_0x0272
            b.b.g.D r1 = r7.f2025i
            int r1 = r1.g()
            if (r1 == 0) goto L_0x0272
            b.b.g.D r1 = r7.f2025i
            int[] r1 = r1.f()
            int r3 = r1.length
            if (r3 <= 0) goto L_0x0272
            android.widget.TextView r3 = r7.f2017a
            int r3 = r3.getAutoSizeStepGranularity()
            float r3 = (float) r3
            r4 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 == 0) goto L_0x026c
            android.widget.TextView r1 = r7.f2017a
            b.b.g.D r3 = r7.f2025i
            int r3 = r3.d()
            b.b.g.D r4 = r7.f2025i
            int r4 = r4.c()
            b.b.g.D r5 = r7.f2025i
            int r5 = r5.e()
            r6 = 0
            r1.setAutoSizeTextTypeUniformWithConfiguration(r3, r4, r5, r6)
            goto L_0x0272
        L_0x026c:
            r6 = 0
            android.widget.TextView r3 = r7.f2017a
            r3.setAutoSizeTextTypeUniformWithPresetSizes(r1, r6)
        L_0x0272:
            int[] r1 = b.b.j.AppCompatTextView
            b.b.g.pa r8 = b.b.g.pa.a((android.content.Context) r2, (android.util.AttributeSet) r0, (int[]) r1)
            int r0 = b.b.j.AppCompatTextView_drawableLeftCompat
            r1 = -1
            int r0 = r8.g(r0, r1)
            if (r0 == r1) goto L_0x0289
            r3 = r16
            android.graphics.drawable.Drawable r0 = r3.a((android.content.Context) r2, (int) r0)
            r4 = r0
            goto L_0x028c
        L_0x0289:
            r3 = r16
            r4 = 0
        L_0x028c:
            int r0 = b.b.j.AppCompatTextView_drawableTopCompat
            int r0 = r8.g(r0, r1)
            if (r0 == r1) goto L_0x029a
            android.graphics.drawable.Drawable r0 = r3.a((android.content.Context) r2, (int) r0)
            r5 = r0
            goto L_0x029b
        L_0x029a:
            r5 = 0
        L_0x029b:
            int r0 = b.b.j.AppCompatTextView_drawableRightCompat
            int r0 = r8.g(r0, r1)
            if (r0 == r1) goto L_0x02a9
            android.graphics.drawable.Drawable r0 = r3.a((android.content.Context) r2, (int) r0)
            r6 = r0
            goto L_0x02aa
        L_0x02a9:
            r6 = 0
        L_0x02aa:
            int r0 = b.b.j.AppCompatTextView_drawableBottomCompat
            int r0 = r8.g(r0, r1)
            if (r0 == r1) goto L_0x02b8
            android.graphics.drawable.Drawable r0 = r3.a((android.content.Context) r2, (int) r0)
            r9 = r0
            goto L_0x02b9
        L_0x02b8:
            r9 = 0
        L_0x02b9:
            int r0 = b.b.j.AppCompatTextView_drawableStartCompat
            int r0 = r8.g(r0, r1)
            if (r0 == r1) goto L_0x02c7
            android.graphics.drawable.Drawable r0 = r3.a((android.content.Context) r2, (int) r0)
            r10 = r0
            goto L_0x02c8
        L_0x02c7:
            r10 = 0
        L_0x02c8:
            int r0 = b.b.j.AppCompatTextView_drawableEndCompat
            int r0 = r8.g(r0, r1)
            if (r0 == r1) goto L_0x02d6
            android.graphics.drawable.Drawable r0 = r3.a((android.content.Context) r2, (int) r0)
            r11 = r0
            goto L_0x02d7
        L_0x02d6:
            r11 = 0
        L_0x02d7:
            r0 = r18
            r1 = r4
            r2 = r5
            r3 = r6
            r4 = r9
            r5 = r10
            r6 = r11
            r0.a(r1, r2, r3, r4, r5, r6)
            int r0 = b.b.j.AppCompatTextView_drawableTint
            boolean r0 = r8.g(r0)
            if (r0 == 0) goto L_0x02f5
            int r0 = b.b.j.AppCompatTextView_drawableTint
            android.content.res.ColorStateList r0 = r8.a(r0)
            android.widget.TextView r1 = r7.f2017a
            b.i.l.j.a((android.widget.TextView) r1, (android.content.res.ColorStateList) r0)
        L_0x02f5:
            int r0 = b.b.j.AppCompatTextView_drawableTintMode
            boolean r0 = r8.g(r0)
            if (r0 == 0) goto L_0x030f
            int r0 = b.b.j.AppCompatTextView_drawableTintMode
            r1 = -1
            int r0 = r8.d(r0, r1)
            r2 = 0
            android.graphics.PorterDuff$Mode r0 = b.b.g.H.a(r0, r2)
            android.widget.TextView r2 = r7.f2017a
            b.i.l.j.a((android.widget.TextView) r2, (android.graphics.PorterDuff.Mode) r0)
            goto L_0x0310
        L_0x030f:
            r1 = -1
        L_0x0310:
            int r0 = b.b.j.AppCompatTextView_firstBaselineToTopHeight
            int r0 = r8.c(r0, r1)
            int r2 = b.b.j.AppCompatTextView_lastBaselineToBottomHeight
            int r2 = r8.c(r2, r1)
            int r3 = b.b.j.AppCompatTextView_lineHeight
            int r3 = r8.c(r3, r1)
            r8.a()
            if (r0 == r1) goto L_0x032c
            android.widget.TextView r4 = r7.f2017a
            b.i.l.j.b(r4, r0)
        L_0x032c:
            if (r2 == r1) goto L_0x0333
            android.widget.TextView r0 = r7.f2017a
            b.i.l.j.c(r0, r2)
        L_0x0333:
            if (r3 == r1) goto L_0x033a
            android.widget.TextView r0 = r7.f2017a
            b.i.l.j.d(r0, r3)
        L_0x033a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.C.a(android.util.AttributeSet, int):void");
    }

    public void b() {
        this.f2025i.a();
    }

    public int c() {
        return this.f2025i.c();
    }

    public int d() {
        return this.f2025i.d();
    }

    public int e() {
        return this.f2025i.e();
    }

    public int[] f() {
        return this.f2025i.f();
    }

    public int g() {
        return this.f2025i.g();
    }

    public ColorStateList h() {
        na naVar = this.f2024h;
        if (naVar != null) {
            return naVar.f2211a;
        }
        return null;
    }

    public PorterDuff.Mode i() {
        na naVar = this.f2024h;
        if (naVar != null) {
            return naVar.f2212b;
        }
        return null;
    }

    public boolean j() {
        return this.f2025i.h();
    }

    public void k() {
        a();
    }

    public final void l() {
        na naVar = this.f2024h;
        this.f2018b = naVar;
        this.f2019c = naVar;
        this.f2020d = naVar;
        this.f2021e = naVar;
        this.f2022f = naVar;
        this.f2023g = naVar;
    }

    public final void b(int i2, float f2) {
        this.f2025i.a(i2, f2);
    }

    public void a(Typeface typeface) {
        if (this.m) {
            this.f2017a.setTypeface(typeface);
            this.f2028l = typeface;
        }
    }

    public void a(Runnable runnable) {
        this.f2017a.post(runnable);
    }

    public final void a(Context context, pa paVar) {
        this.f2026j = paVar.d(j.TextAppearance_android_textStyle, this.f2026j);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2027k = paVar.d(j.TextAppearance_android_textFontWeight, -1);
            if (this.f2027k != -1) {
                this.f2026j = (this.f2026j & 2) | 0;
            }
        }
        if (paVar.g(j.TextAppearance_android_fontFamily) || paVar.g(j.TextAppearance_fontFamily)) {
            this.f2028l = null;
            int i2 = paVar.g(j.TextAppearance_fontFamily) ? j.TextAppearance_fontFamily : j.TextAppearance_android_fontFamily;
            int i3 = this.f2027k;
            int i4 = this.f2026j;
            if (!context.isRestricted()) {
                try {
                    Typeface a2 = paVar.a(i2, this.f2026j, (h.a) new a(this, i3, i4));
                    if (a2 != null) {
                        if (Build.VERSION.SDK_INT < 28 || this.f2027k == -1) {
                            this.f2028l = a2;
                        } else {
                            this.f2028l = Typeface.create(Typeface.create(a2, 0), this.f2027k, (this.f2026j & 2) != 0);
                        }
                    }
                    this.m = this.f2028l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.f2028l == null) {
                String d2 = paVar.d(i2);
                if (d2 != null) {
                    if (Build.VERSION.SDK_INT < 28 || this.f2027k == -1) {
                        this.f2028l = Typeface.create(d2, this.f2026j);
                    } else {
                        Typeface create = Typeface.create(d2, 0);
                        int i5 = this.f2027k;
                        if ((this.f2026j & 2) != 0) {
                            z = true;
                        }
                        this.f2028l = Typeface.create(create, i5, z);
                    }
                }
            }
            return;
        }
        if (paVar.g(j.TextAppearance_android_typeface)) {
            this.m = false;
            int d3 = paVar.d(j.TextAppearance_android_typeface, 1);
            if (d3 == 1) {
                this.f2028l = Typeface.SANS_SERIF;
            } else if (d3 == 2) {
                this.f2028l = Typeface.SERIF;
            } else if (d3 == 3) {
                this.f2028l = Typeface.MONOSPACE;
            }
        }
    }

    public void a(Context context, int i2) {
        pa a2 = pa.a(context, i2, j.TextAppearance);
        if (a2.g(j.TextAppearance_textAllCaps)) {
            a(a2.a(j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a2.g(j.TextAppearance_android_textColor)) {
            ColorStateList a3 = a2.a(j.TextAppearance_android_textColor);
            if (a3 != null) {
                this.f2017a.setTextColor(a3);
            }
        }
        if (a2.g(j.TextAppearance_android_textSize) && a2.c(j.TextAppearance_android_textSize, -1) == 0) {
            this.f2017a.setTextSize(0, 0.0f);
        }
        a(context, a2);
        if (Build.VERSION.SDK_INT >= 26 && a2.g(j.TextAppearance_fontVariationSettings)) {
            String d2 = a2.d(j.TextAppearance_fontVariationSettings);
            if (d2 != null) {
                this.f2017a.setFontVariationSettings(d2);
            }
        }
        a2.a();
        Typeface typeface = this.f2028l;
        if (typeface != null) {
            this.f2017a.setTypeface(typeface, this.f2026j);
        }
    }

    public void a(boolean z) {
        this.f2017a.setAllCaps(z);
    }

    public void a() {
        if (!(this.f2018b == null && this.f2019c == null && this.f2020d == null && this.f2021e == null)) {
            Drawable[] compoundDrawables = this.f2017a.getCompoundDrawables();
            a(compoundDrawables[0], this.f2018b);
            a(compoundDrawables[1], this.f2019c);
            a(compoundDrawables[2], this.f2020d);
            a(compoundDrawables[3], this.f2021e);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return;
        }
        if (this.f2022f != null || this.f2023g != null) {
            Drawable[] compoundDrawablesRelative = this.f2017a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f2022f);
            a(compoundDrawablesRelative[2], this.f2023g);
        }
    }

    public final void a(Drawable drawable, na naVar) {
        if (drawable != null && naVar != null) {
            C0222m.a(drawable, naVar, this.f2017a.getDrawableState());
        }
    }

    public static na a(Context context, C0222m mVar, int i2) {
        ColorStateList b2 = mVar.b(context, i2);
        if (b2 == null) {
            return null;
        }
        na naVar = new na();
        naVar.f2214d = true;
        naVar.f2211a = b2;
        return naVar;
    }

    public void a(boolean z, int i2, int i3, int i4, int i5) {
        if (!b.f2874a) {
            b();
        }
    }

    public void a(int i2, float f2) {
        if (!b.f2874a && !j()) {
            b(i2, f2);
        }
    }

    public void a(int i2) {
        this.f2025i.b(i2);
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f2025i.a(i2, i3, i4, i5);
    }

    public void a(int[] iArr, int i2) {
        this.f2025i.a(iArr, i2);
    }

    public void a(ColorStateList colorStateList) {
        if (this.f2024h == null) {
            this.f2024h = new na();
        }
        na naVar = this.f2024h;
        naVar.f2211a = colorStateList;
        naVar.f2214d = colorStateList != null;
        l();
    }

    public void a(PorterDuff.Mode mode) {
        if (this.f2024h == null) {
            this.f2024h = new na();
        }
        na naVar = this.f2024h;
        naVar.f2212b = mode;
        naVar.f2213c = mode != null;
        l();
    }

    public final void a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f2017a.getCompoundDrawablesRelative();
            TextView textView = this.f2017a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (!(drawable == null && drawable2 == null && drawable3 == null && drawable4 == null)) {
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f2017a.getCompoundDrawablesRelative();
                if (!(compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null)) {
                    TextView textView2 = this.f2017a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.f2017a.getCompoundDrawables();
            TextView textView3 = this.f2017a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }
}
