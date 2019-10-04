package io.github.kshitij_jain.indicatorview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import io.github.kshitij_jain.indicatorview.a;

public class IndicatorView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Context f6689a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f6690b;
    private Paint c;
    private int d;
    private int e;
    private int f;
    private int g;

    public IndicatorView(Context context) {
        super(context);
    }

    public IndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public IndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        this.f6689a = context;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.c.IndicatorView, i, 0);
        int color = obtainStyledAttributes.getColor(a.c.IndicatorView_activeColor, ContextCompat.getColor(context, a.C0126a.active_indicator));
        int color2 = obtainStyledAttributes.getColor(a.c.IndicatorView_inactiveColor, ContextCompat.getColor(context, a.C0126a.inactive_indicator));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.c.IndicatorView_indicatorSize, getResources().getDimensionPixelSize(a.b.indicator_size));
        this.f6690b = new Paint();
        this.f6690b.setColor(color);
        this.f6690b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setColor(color2);
        this.c.setAntiAlias(true);
        this.d = dimensionPixelSize;
        this.e = this.d * 2;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (int i = 0; i < this.g; i++) {
            int i2 = this.d;
            canvas.drawCircle((float) ((this.e * i) + i2), (float) i2, (float) (i2 / 2), this.c);
        }
        int i3 = this.d;
        canvas.drawCircle((float) ((this.e * this.f) + i3), (float) i3, (float) (i3 / 2), this.f6690b);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    public void setCurrentPage(int i) {
        this.f = i;
        invalidate();
    }

    public void setPageIndicators(int i) {
        this.g = i;
        invalidate();
    }

    public void setInactiveIndicatorColor(int i) {
        this.c.setColor(ContextCompat.getColor(this.f6689a, i));
        invalidate();
    }

    public void setActiveIndicatorColor(int i) {
        this.f6690b.setColor(ContextCompat.getColor(this.f6689a, i));
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            int i3 = this.e * this.g;
            size = mode == Integer.MIN_VALUE ? Math.min(i3, size) : i3;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 != 1073741824) {
            int paddingTop = (this.d * 2) + getPaddingTop() + getPaddingBottom();
            if (mode2 == Integer.MIN_VALUE) {
                size2 = Math.min(paddingTop, size2);
            } else {
                size2 = paddingTop;
            }
        }
        setMeasuredDimension(size, size2);
    }
}
