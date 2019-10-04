package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import b.e.a;
import b.e.a.c;
import b.e.a.d;
import b.e.a.f;
import b.e.a.g;
import b.e.a.h;
import b.e.b;
import b.e.e;

public class CardView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f478a = {16842801};

    /* renamed from: b  reason: collision with root package name */
    public static final h f479b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f480c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f481d;

    /* renamed from: e  reason: collision with root package name */
    public int f482e;

    /* renamed from: f  reason: collision with root package name */
    public int f483f;

    /* renamed from: g  reason: collision with root package name */
    public final Rect f484g;

    /* renamed from: h  reason: collision with root package name */
    public final Rect f485h;

    /* renamed from: i  reason: collision with root package name */
    public final g f486i;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            f479b = new d();
        } else if (i2 >= 17) {
            f479b = new c();
        } else {
            f479b = new f();
        }
        f479b.a();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public ColorStateList getCardBackgroundColor() {
        return f479b.e(this.f486i);
    }

    public float getCardElevation() {
        return f479b.a(this.f486i);
    }

    public int getContentPaddingBottom() {
        return this.f484g.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f484g.left;
    }

    public int getContentPaddingRight() {
        return this.f484g.right;
    }

    public int getContentPaddingTop() {
        return this.f484g.top;
    }

    public float getMaxCardElevation() {
        return f479b.d(this.f486i);
    }

    public boolean getPreventCornerOverlap() {
        return this.f481d;
    }

    public float getRadius() {
        return f479b.b(this.f486i);
    }

    public boolean getUseCompatPadding() {
        return this.f480c;
    }

    public void onMeasure(int i2, int i3) {
        if (!(f479b instanceof d)) {
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil((double) f479b.g(this.f486i)), View.MeasureSpec.getSize(i2)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i3);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i3 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil((double) f479b.f(this.f486i)), View.MeasureSpec.getSize(i3)), mode2);
            }
            super.onMeasure(i2, i3);
            return;
        }
        super.onMeasure(i2, i3);
    }

    public void setCardBackgroundColor(int i2) {
        f479b.a(this.f486i, ColorStateList.valueOf(i2));
    }

    public void setCardElevation(float f2) {
        f479b.b(this.f486i, f2);
    }

    public void setMaxCardElevation(float f2) {
        f479b.c(this.f486i, f2);
    }

    public void setMinimumHeight(int i2) {
        this.f483f = i2;
        super.setMinimumHeight(i2);
    }

    public void setMinimumWidth(int i2) {
        this.f482e = i2;
        super.setMinimumWidth(i2);
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f481d) {
            this.f481d = z;
            f479b.h(this.f486i);
        }
    }

    public void setRadius(float f2) {
        f479b.a(this.f486i, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f480c != z) {
            this.f480c = z;
            f479b.c(this.f486i);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.cardViewStyle);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f479b.a(this.f486i, colorStateList);
    }

    public CardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        ColorStateList valueOf;
        this.f484g = new Rect();
        this.f485h = new Rect();
        this.f486i = new a(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.CardView, i2, b.e.d.CardView);
        if (obtainStyledAttributes.hasValue(e.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f478a);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            if (fArr[2] > 0.5f) {
                i3 = getResources().getColor(b.cardview_light_background);
            } else {
                i3 = getResources().getColor(b.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(i3);
        }
        ColorStateList colorStateList = valueOf;
        float dimension = obtainStyledAttributes.getDimension(e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(e.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(e.CardView_cardMaxElevation, 0.0f);
        this.f480c = obtainStyledAttributes.getBoolean(e.CardView_cardUseCompatPadding, false);
        this.f481d = obtainStyledAttributes.getBoolean(e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPadding, 0);
        this.f484g.left = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingLeft, dimensionPixelSize);
        this.f484g.top = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingTop, dimensionPixelSize);
        this.f484g.right = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingRight, dimensionPixelSize);
        this.f484g.bottom = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingBottom, dimensionPixelSize);
        float f2 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f482e = obtainStyledAttributes.getDimensionPixelSize(e.CardView_android_minWidth, 0);
        this.f483f = obtainStyledAttributes.getDimensionPixelSize(e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f479b.a(this.f486i, context, colorStateList, dimension, dimension2, f2);
    }
}
