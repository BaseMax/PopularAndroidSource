package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.viewpager.widget.ViewPager;
import b.G.a.a;
import b.i.k.A;
import b.i.k.C0265h;
import c.g.e;
import c.g.f;
import c.g.g;
import c.g.h;
import c.g.i;
import c.g.j;
import c.g.k;

public class CirclePageIndicator extends View implements e {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f13630a;

    /* renamed from: b  reason: collision with root package name */
    public float f13631b;

    /* renamed from: c  reason: collision with root package name */
    public float f13632c;

    /* renamed from: d  reason: collision with root package name */
    public final Paint f13633d;

    /* renamed from: e  reason: collision with root package name */
    public final Paint f13634e;

    /* renamed from: f  reason: collision with root package name */
    public final Paint f13635f;

    /* renamed from: g  reason: collision with root package name */
    public ViewPager f13636g;

    /* renamed from: h  reason: collision with root package name */
    public ViewPager.f f13637h;

    /* renamed from: i  reason: collision with root package name */
    public int f13638i;

    /* renamed from: j  reason: collision with root package name */
    public int f13639j;

    /* renamed from: k  reason: collision with root package name */
    public float f13640k;

    /* renamed from: l  reason: collision with root package name */
    public int f13641l;
    public int m;
    public boolean n;
    public boolean o;
    public int p;
    public float q;
    public int r;
    public boolean s;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new b();

        /* renamed from: a  reason: collision with root package name */
        public int f13642a;

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f13642a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f13642a = parcel.readInt();
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    private int getCount() {
        if (this.f13630a) {
            return 5;
        }
        ViewPager viewPager = this.f13636g;
        if (viewPager != null) {
            a adapter = viewPager.getAdapter();
            if (adapter != null) {
                return adapter.a();
            }
        }
        return 0;
    }

    public void a(int i2) {
        this.f13641l = i2;
        ViewPager.f fVar = this.f13637h;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public void b(int i2) {
        if (this.o || this.f13641l == 0) {
            this.f13638i = i2;
            this.f13639j = i2;
            invalidate();
        }
        ViewPager.f fVar = this.f13637h;
        if (fVar != null) {
            fVar.b(i2);
        }
    }

    public int getFillColor() {
        return this.f13635f.getColor();
    }

    public float getGapWidth() {
        return this.f13632c;
    }

    public int getOrientation() {
        return this.m;
    }

    public int getPageColor() {
        return this.f13633d.getColor();
    }

    public float getRadius() {
        return this.f13631b;
    }

    public int getStrokeColor() {
        return this.f13634e.getColor();
    }

    public float getStrokeWidth() {
        return this.f13634e.getStrokeWidth();
    }

    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        int i5;
        float f2;
        float f3;
        float f4;
        super.onDraw(canvas);
        int count = getCount();
        if (count != 0) {
            if (this.f13638i >= count) {
                setCurrentItem(count - 1);
                return;
            }
            if (this.m == 0) {
                i5 = getWidth();
                i4 = getPaddingLeft();
                i3 = getPaddingRight();
                i2 = getPaddingTop();
            } else {
                i5 = getHeight();
                i4 = getPaddingTop();
                i3 = getPaddingBottom();
                i2 = getPaddingLeft();
            }
            float f5 = this.f13631b;
            float f6 = this.f13632c;
            float f7 = (f5 * 2.0f) + f6;
            float f8 = ((float) i2) + f5;
            float f9 = ((float) i4) + f5 + (f6 / 2.0f);
            if (this.n) {
                f9 += (((float) ((i5 - i4) - i3)) / 2.0f) - ((((float) count) * f7) / 2.0f);
            }
            float f10 = this.f13631b;
            if (this.f13634e.getStrokeWidth() > 0.0f) {
                f10 -= this.f13634e.getStrokeWidth() / 2.0f;
            }
            for (int i6 = 0; i6 < count; i6++) {
                float f11 = (((float) i6) * f7) + f9;
                if (this.m == 0) {
                    f4 = f8;
                } else {
                    f4 = f11;
                    f11 = f8;
                }
                if (this.f13633d.getAlpha() > 0) {
                    canvas.drawCircle(f11, f4, f10, this.f13633d);
                }
                float f12 = this.f13631b;
                if (f10 != f12) {
                    canvas.drawCircle(f11, f4, f12, this.f13634e);
                }
            }
            if (this.o) {
                f2 = (float) this.f13639j;
            } else {
                f2 = ((float) this.f13638i) + this.f13640k;
            }
            float f13 = f2 * f7;
            if (this.m == 0) {
                f3 = f13 + f9;
            } else {
                float f14 = f8;
                f8 = f13 + f9;
                f3 = f14;
            }
            canvas.drawCircle(f3, f8, this.f13631b, this.f13635f);
        }
    }

    public void onMeasure(int i2, int i3) {
        if (this.m == 0) {
            setMeasuredDimension(a(i2, getPaddingLeft() + getPaddingRight()), b(i3, getPaddingTop() + getPaddingBottom()));
        } else {
            setMeasuredDimension(b(i2, getPaddingLeft() + getPaddingRight()), a(i3, getPaddingTop() + getPaddingBottom()));
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.f13642a;
        this.f13638i = i2;
        this.f13639j = i2;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13642a = this.o ? this.f13639j : this.f13638i;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f13636g;
        int i2 = 0;
        if (viewPager == null || viewPager.getAdapter().a() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float c2 = C0265h.c(motionEvent, C0265h.a(motionEvent, this.r));
                    float f2 = c2 - this.q;
                    if (!this.s && Math.abs(f2) > ((float) this.p)) {
                        this.s = true;
                    }
                    if (this.s) {
                        this.q = c2;
                        if (this.f13636g.g() || this.f13636g.a()) {
                            this.f13636g.b(f2);
                        }
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int a2 = C0265h.a(motionEvent);
                        this.q = C0265h.c(motionEvent, a2);
                        this.r = C0265h.b(motionEvent, a2);
                    } else if (action == 6) {
                        int a3 = C0265h.a(motionEvent);
                        if (C0265h.b(motionEvent, a3) == this.r) {
                            if (a3 == 0) {
                                i2 = 1;
                            }
                            this.r = C0265h.b(motionEvent, i2);
                        }
                        this.q = C0265h.c(motionEvent, C0265h.a(motionEvent, this.r));
                    }
                }
            }
            if (!this.s) {
                int a4 = this.f13636g.getAdapter().a();
                float width = (float) getWidth();
                float f3 = width / 2.0f;
                float f4 = width / 6.0f;
                if (this.f13638i > 0 && motionEvent.getX() < f3 - f4) {
                    if (action != 3) {
                        this.f13636g.setCurrentItem(this.f13638i - 1);
                    }
                    return true;
                } else if (this.f13638i < a4 - 1 && motionEvent.getX() > f3 + f4) {
                    if (action != 3) {
                        this.f13636g.setCurrentItem(this.f13638i + 1);
                    }
                    return true;
                }
            }
            this.s = false;
            this.r = -1;
            if (this.f13636g.g()) {
                this.f13636g.d();
            }
        } else {
            this.r = C0265h.b(motionEvent, 0);
            this.q = motionEvent.getX();
        }
        return true;
    }

    public void setCentered(boolean z) {
        this.n = z;
        invalidate();
    }

    public void setCurrentItem(int i2) {
        ViewPager viewPager = this.f13636g;
        if (viewPager != null) {
            viewPager.setCurrentItem(i2);
            this.f13638i = i2;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFillColor(int i2) {
        this.f13635f.setColor(i2);
        invalidate();
    }

    public void setGapWidth(float f2) {
        this.f13632c = f2;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.f fVar) {
        this.f13637h = fVar;
    }

    public void setOrientation(int i2) {
        if (i2 == 0 || i2 == 1) {
            this.m = i2;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }

    public void setPageColor(int i2) {
        this.f13633d.setColor(i2);
        invalidate();
    }

    public void setRadius(float f2) {
        this.f13631b = f2;
        invalidate();
    }

    public void setSnap(boolean z) {
        this.o = z;
        invalidate();
    }

    public void setStrokeColor(int i2) {
        this.f13634e.setColor(i2);
        invalidate();
    }

    public void setStrokeWidth(float f2) {
        this.f13634e.setStrokeWidth(f2);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f13636g;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.f13636g = viewPager;
                this.f13636g.setOnPageChangeListener(this);
                invalidate();
                return;
            }
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13633d = new Paint(1);
        this.f13634e = new Paint(1);
        this.f13635f = new Paint(1);
        this.q = -1.0f;
        this.r = -1;
        Resources resources = getResources();
        int color = resources.getColor(h.default_circle_indicator_page_color);
        int color2 = resources.getColor(h.default_circle_indicator_fill_color);
        int integer = resources.getInteger(j.default_circle_indicator_orientation);
        int color3 = resources.getColor(h.default_circle_indicator_stroke_color);
        float dimension = resources.getDimension(i.default_circle_indicator_stroke_width);
        float dimension2 = resources.getDimension(i.default_circle_indicator_radius);
        float dimension3 = resources.getDimension(i.default_circle_indicator_gap_width);
        boolean z = resources.getBoolean(g.default_circle_indicator_centered);
        boolean z2 = resources.getBoolean(g.default_circle_indicator_snap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.CirclePageIndicator, i2, 0);
        this.n = obtainStyledAttributes.getBoolean(2, z);
        this.m = obtainStyledAttributes.getInt(0, integer);
        this.f13633d.setStyle(Paint.Style.FILL);
        this.f13633d.setColor(obtainStyledAttributes.getColor(6, color));
        this.f13634e.setStyle(Paint.Style.STROKE);
        this.f13634e.setColor(obtainStyledAttributes.getColor(9, color3));
        this.f13634e.setStrokeWidth(obtainStyledAttributes.getDimension(4, dimension));
        this.f13635f.setStyle(Paint.Style.FILL);
        this.f13635f.setColor(obtainStyledAttributes.getColor(5, color2));
        this.f13631b = obtainStyledAttributes.getDimension(7, dimension2);
        this.f13632c = obtainStyledAttributes.getDimension(3, dimension3);
        this.o = obtainStyledAttributes.getBoolean(8, z2);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.p = A.b(ViewConfiguration.get(context));
        this.f13630a = isInEditMode();
        if (this.f13630a) {
            this.f13638i = 2;
            this.f13639j = 2;
        }
    }

    public void a(int i2, float f2, int i3) {
        this.f13638i = i2;
        this.f13640k = f2;
        invalidate();
        ViewPager.f fVar = this.f13637h;
        if (fVar != null) {
            fVar.a(i2, f2, i3);
        }
    }

    public final int b(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int i4 = (int) ((this.f13631b * 2.0f) + ((float) i3) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(i4, size) : i4;
    }

    public final int a(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        if (this.f13636g == null && !this.f13630a) {
            return size;
        }
        int count = getCount();
        int i4 = (int) (((float) i3) + (((float) (count * 2)) * this.f13631b) + (((float) (count - 1)) * this.f13632c) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(i4, size) : i4;
    }
}
