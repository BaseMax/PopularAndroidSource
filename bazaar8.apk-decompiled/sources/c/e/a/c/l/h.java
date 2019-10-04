package c.e.a.c.l;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import b.i.k.C0263f;
import b.i.k.z;
import c.e.a.c.k;

/* compiled from: FlowLayout */
public class h extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public int f11392a;

    /* renamed from: b  reason: collision with root package name */
    public int f11393b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11394c = false;

    public h(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, k.FlowLayout, 0, 0);
        this.f11392a = obtainStyledAttributes.getDimensionPixelSize(k.FlowLayout_lineSpacing, 0);
        this.f11393b = obtainStyledAttributes.getDimensionPixelSize(k.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    public int getItemSpacing() {
        return this.f11393b;
    }

    public int getLineSpacing() {
        return this.f11392a;
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (getChildCount() != 0) {
            boolean z2 = true;
            if (z.m(this) != 1) {
                z2 = false;
            }
            int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
            int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
            int paddingTop = getPaddingTop();
            int i8 = (i4 - i2) - paddingLeft;
            int i9 = paddingRight;
            int i10 = paddingTop;
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        i6 = C0263f.b(marginLayoutParams);
                        i7 = C0263f.a(marginLayoutParams);
                    } else {
                        i7 = 0;
                        i6 = 0;
                    }
                    int measuredWidth = i9 + i6 + childAt.getMeasuredWidth();
                    if (!this.f11394c && measuredWidth > i8) {
                        i10 = paddingTop + this.f11392a;
                        i9 = paddingRight;
                    }
                    int i12 = i9 + i6;
                    int measuredWidth2 = childAt.getMeasuredWidth() + i12;
                    int measuredHeight = childAt.getMeasuredHeight() + i10;
                    if (z2) {
                        childAt.layout(i8 - measuredWidth2, i10, (i8 - i9) - i6, measuredHeight);
                    } else {
                        childAt.layout(i12, i10, measuredWidth2, measuredHeight);
                    }
                    i9 += i6 + i7 + childAt.getMeasuredWidth() + this.f11393b;
                    paddingTop = measuredHeight;
                }
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i6 - getPaddingRight();
        int i7 = paddingLeft;
        int i8 = paddingTop;
        int i9 = i8;
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 8) {
                int i12 = i2;
                int i13 = i3;
            } else {
                measureChild(childAt, i2, i3);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i5 = marginLayoutParams.leftMargin + 0;
                    i4 = marginLayoutParams.rightMargin + 0;
                } else {
                    i5 = 0;
                    i4 = 0;
                }
                int i14 = i7;
                if (i7 + i5 + childAt.getMeasuredWidth() > paddingRight && !a()) {
                    int paddingLeft2 = getPaddingLeft();
                    i9 = this.f11392a + i8;
                    i14 = paddingLeft2;
                }
                int measuredWidth = i14 + i5 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight() + i9;
                if (measuredWidth > i10) {
                    i10 = measuredWidth;
                }
                i8 = measuredHeight;
                i7 = i14 + i5 + i4 + childAt.getMeasuredWidth() + this.f11393b;
            }
        }
        setMeasuredDimension(a(size, mode, i10), a(size2, mode2, i8));
    }

    public void setItemSpacing(int i2) {
        this.f11393b = i2;
    }

    public void setLineSpacing(int i2) {
        this.f11392a = i2;
    }

    public void setSingleLine(boolean z) {
        this.f11394c = z;
    }

    public boolean a() {
        return this.f11394c;
    }

    public static int a(int i2, int i3, int i4) {
        if (i3 != Integer.MIN_VALUE) {
            return i3 != 1073741824 ? i4 : i2;
        }
        return Math.min(i4, i2);
    }
}
