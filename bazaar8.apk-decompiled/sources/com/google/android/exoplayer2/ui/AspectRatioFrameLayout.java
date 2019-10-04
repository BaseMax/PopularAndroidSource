package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import c.e.a.a.m.n;

public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final b f12800a;

    /* renamed from: b  reason: collision with root package name */
    public a f12801b;

    /* renamed from: c  reason: collision with root package name */
    public float f12802c;

    /* renamed from: d  reason: collision with root package name */
    public int f12803d;

    public interface a {
        void a(float f2, float f3, boolean z);
    }

    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public float f12804a;

        /* renamed from: b  reason: collision with root package name */
        public float f12805b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f12806c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f12807d;

        public b() {
        }

        public void a(float f2, float f3, boolean z) {
            this.f12804a = f2;
            this.f12805b = f3;
            this.f12806c = z;
            if (!this.f12807d) {
                this.f12807d = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }

        public void run() {
            this.f12807d = false;
            if (AspectRatioFrameLayout.this.f12801b != null) {
                AspectRatioFrameLayout.this.f12801b.a(this.f12804a, this.f12805b, this.f12806c);
            }
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public int getResizeMode() {
        return this.f12803d;
    }

    public void onMeasure(int i2, int i3) {
        float f2;
        float f3;
        super.onMeasure(i2, i3);
        if (this.f12802c > 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f4 = (float) measuredWidth;
            float f5 = (float) measuredHeight;
            float f6 = f4 / f5;
            float f7 = (this.f12802c / f6) - 1.0f;
            if (Math.abs(f7) <= 0.01f) {
                this.f12800a.a(this.f12802c, f6, false);
                return;
            }
            int i4 = this.f12803d;
            if (i4 != 0) {
                if (i4 == 1) {
                    f3 = this.f12802c;
                } else if (i4 != 2) {
                    if (i4 == 4) {
                        if (f7 > 0.0f) {
                            f2 = this.f12802c;
                        } else {
                            f3 = this.f12802c;
                        }
                    }
                    this.f12800a.a(this.f12802c, f6, true);
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
                } else {
                    f2 = this.f12802c;
                }
                measuredHeight = (int) (f4 / f3);
                this.f12800a.a(this.f12802c, f6, true);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            } else if (f7 > 0.0f) {
                f3 = this.f12802c;
                measuredHeight = (int) (f4 / f3);
                this.f12800a.a(this.f12802c, f6, true);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            } else {
                f2 = this.f12802c;
            }
            measuredWidth = (int) (f5 * f2);
            this.f12800a.a(this.f12802c, f6, true);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
    }

    public void setAspectRatio(float f2) {
        if (this.f12802c != f2) {
            this.f12802c = f2;
            requestLayout();
        }
    }

    public void setAspectRatioListener(a aVar) {
        this.f12801b = aVar;
    }

    public void setResizeMode(int i2) {
        if (this.f12803d != i2) {
            this.f12803d = i2;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12803d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, n.AspectRatioFrameLayout, 0, 0);
            try {
                this.f12803d = obtainStyledAttributes.getInt(n.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f12800a = new b();
    }
}
