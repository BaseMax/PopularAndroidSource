package com.farsitel.bazaar.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.d.a.a;
import h.f.b.f;
import h.f.b.j;

/* compiled from: RTLImageView.kt */
public final class RTLImageView extends AppCompatImageView {
    public RTLImageView(Context context) {
        this(context, null, 0, 6, null);
    }

    public RTLImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RTLImageView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RTLImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        setScaleX(a.f4744b.a(context).w() ? -1.0f : 1.0f);
    }
}
