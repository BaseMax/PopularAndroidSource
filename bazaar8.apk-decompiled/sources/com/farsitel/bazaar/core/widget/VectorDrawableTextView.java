package com.farsitel.bazaar.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import b.b.b.a.a;
import c.c.a.c.h.d;
import c.c.a.d.h;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VectorDrawableTextView.kt */
public final class VectorDrawableTextView extends AppCompatTextView {
    public VectorDrawableTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public VectorDrawableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VectorDrawableTextView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 16842884 : i2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VectorDrawableTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        j.b(context, "context");
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.VectorDrawableTextView);
            Drawable drawable4 = null;
            if (d.a(21)) {
                Drawable drawable5 = obtainStyledAttributes.getDrawable(h.VectorDrawableTextView_drawableStartCompat);
                drawable3 = obtainStyledAttributes.getDrawable(h.VectorDrawableTextView_drawableEndCompat);
                drawable2 = obtainStyledAttributes.getDrawable(h.VectorDrawableTextView_drawableBottomCompat);
                drawable4 = obtainStyledAttributes.getDrawable(h.VectorDrawableTextView_drawableTopCompat);
                drawable = drawable5;
            } else {
                int resourceId = obtainStyledAttributes.getResourceId(h.VectorDrawableTextView_drawableStartCompat, -1);
                int resourceId2 = obtainStyledAttributes.getResourceId(h.VectorDrawableTextView_drawableEndCompat, -1);
                int resourceId3 = obtainStyledAttributes.getResourceId(h.VectorDrawableTextView_drawableBottomCompat, -1);
                int resourceId4 = obtainStyledAttributes.getResourceId(h.VectorDrawableTextView_drawableTopCompat, -1);
                drawable = resourceId != -1 ? a.c(context, resourceId) : null;
                drawable3 = resourceId2 != -1 ? a.c(context, resourceId2) : null;
                drawable2 = resourceId3 != -1 ? a.c(context, resourceId3) : null;
                if (resourceId4 != -1) {
                    drawable4 = a.c(context, resourceId4);
                }
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable4, drawable3, drawable2);
            obtainStyledAttributes.recycle();
        }
    }
}
