package com.farsitel.bazaar.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import h.f.b.f;
import h.f.b.j;

/* compiled from: NoDiscountTextView.kt */
public final class NoDiscountTextView extends AppCompatTextView {
    public NoDiscountTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public NoDiscountTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NoDiscountTextView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 16842884 : i2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NoDiscountTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        setPaintFlags(getPaintFlags() | 16);
    }
}
