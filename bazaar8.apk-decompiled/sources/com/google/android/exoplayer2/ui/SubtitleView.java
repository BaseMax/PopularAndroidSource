package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import c.e.a.a.k.a;
import c.e.a.a.k.b;
import c.e.a.a.k.k;
import c.e.a.a.m.o;
import c.e.a.a.o.I;
import java.util.ArrayList;
import java.util.List;

public final class SubtitleView extends View implements k {

    /* renamed from: a  reason: collision with root package name */
    public final List<o> f12834a;

    /* renamed from: b  reason: collision with root package name */
    public List<b> f12835b;

    /* renamed from: c  reason: collision with root package name */
    public int f12836c;

    /* renamed from: d  reason: collision with root package name */
    public float f12837d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12838e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12839f;

    /* renamed from: g  reason: collision with root package name */
    public a f12840g;

    /* renamed from: h  reason: collision with root package name */
    public float f12841h;

    public SubtitleView(Context context) {
        this(context, null);
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private a getUserCaptionStyleV19() {
        return a.a(((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle());
    }

    public final float a(int i2, float f2, int i3, int i4) {
        float f3;
        if (i2 == 0) {
            f3 = (float) i4;
        } else if (i2 == 1) {
            f3 = (float) i3;
        } else if (i2 != 2) {
            return Float.MIN_VALUE;
        } else {
            return f2;
        }
        return f2 * f3;
    }

    public void a(List<b> list) {
        setCues(list);
    }

    public void b() {
        setStyle((I.f9565a < 19 || !a() || isInEditMode()) ? a.f9058a : getUserCaptionStyleV19());
    }

    public void c() {
        setFractionalTextSize(((I.f9565a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }

    public void dispatchDraw(Canvas canvas) {
        List<b> list = this.f12835b;
        int i2 = 0;
        int size = list == null ? 0 : list.size();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom > paddingTop && width > paddingLeft) {
            int i3 = paddingBottom - paddingTop;
            float a2 = a(this.f12836c, this.f12837d, height, i3);
            if (a2 > 0.0f) {
                while (i2 < size) {
                    b bVar = this.f12835b.get(i2);
                    int i4 = paddingBottom;
                    int i5 = width;
                    int i6 = paddingTop;
                    this.f12834a.get(i2).a(bVar, this.f12838e, this.f12839f, this.f12840g, a2, a(bVar, height, i3), this.f12841h, canvas, paddingLeft, paddingTop, i5, i4);
                    i2++;
                    i3 = i3;
                    paddingBottom = i4;
                    width = i5;
                    paddingLeft = paddingLeft;
                }
            }
        }
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.f12839f != z) {
            this.f12839f = z;
            invalidate();
        }
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.f12838e != z || this.f12839f != z) {
            this.f12838e = z;
            this.f12839f = z;
            invalidate();
        }
    }

    public void setBottomPaddingFraction(float f2) {
        if (this.f12841h != f2) {
            this.f12841h = f2;
            invalidate();
        }
    }

    public void setCues(List<b> list) {
        int i2;
        if (this.f12835b != list) {
            this.f12835b = list;
            if (list == null) {
                i2 = 0;
            } else {
                i2 = list.size();
            }
            while (this.f12834a.size() < i2) {
                this.f12834a.add(new o(getContext()));
            }
            invalidate();
        }
    }

    public void setFractionalTextSize(float f2) {
        a(f2, false);
    }

    public void setStyle(a aVar) {
        if (this.f12840g != aVar) {
            this.f12840g = aVar;
            invalidate();
        }
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12834a = new ArrayList();
        this.f12836c = 0;
        this.f12837d = 0.0533f;
        this.f12838e = true;
        this.f12839f = true;
        this.f12840g = a.f9058a;
        this.f12841h = 0.08f;
    }

    public void a(float f2, boolean z) {
        a(z ? 1 : 0, f2);
    }

    public final void a(int i2, float f2) {
        if (this.f12836c != i2 || this.f12837d != f2) {
            this.f12836c = i2;
            this.f12837d = f2;
            invalidate();
        }
    }

    public final float a(b bVar, int i2, int i3) {
        int i4 = bVar.m;
        if (i4 != Integer.MIN_VALUE) {
            float f2 = bVar.n;
            if (f2 != Float.MIN_VALUE) {
                return Math.max(a(i4, f2, i2, i3), 0.0f);
            }
        }
        return 0.0f;
    }

    @TargetApi(19)
    public final boolean a() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).isEnabled();
    }
}
