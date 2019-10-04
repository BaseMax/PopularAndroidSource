package com.farsitel.bazaar.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.d.h;
import h.f.b.f;
import h.f.b.j;

/* compiled from: AspectRatioImageView.kt */
public class AspectRatioImageView extends AppCompatImageView {

    /* renamed from: c  reason: collision with root package name */
    public float f12185c;

    public AspectRatioImageView(Context context) {
        this(context, null, 0, 6, null);
    }

    public AspectRatioImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AspectRatioImageView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth != 0 || measuredHeight != 0) {
            if (measuredWidth > 0) {
                measuredHeight = (int) (((float) measuredWidth) * this.f12185c);
            } else {
                measuredWidth = (int) (((float) measuredHeight) / this.f12185c);
            }
            setMeasuredDimension(measuredWidth, measuredHeight);
        }
    }

    public final void setAspectRatio(float f2) {
        this.f12185c = f2;
        invalidate();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AspectRatioImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        this.f12185c = 1.0f;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.AspectRatioImageView);
            this.f12185c = obtainStyledAttributes.getFloat(h.AspectRatioImageView_ratio, this.f12185c);
            obtainStyledAttributes.recycle();
        }
    }
}
