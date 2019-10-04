package com.farsitel.bazaar.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import c.c.a.d.h;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: AspectRatioRoundImageView.kt */
public final class AspectRatioRoundImageView extends AspectRatioImageView {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ i[] f12186d;

    /* renamed from: e  reason: collision with root package name */
    public int f12187e;

    /* renamed from: f  reason: collision with root package name */
    public final c f12188f;

    /* renamed from: g  reason: collision with root package name */
    public final Path f12189g;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(AspectRatioRoundImageView.class), "rect", "getRect()Landroid/graphics/RectF;");
        k.a((PropertyReference1) propertyReference1Impl);
        f12186d = new i[]{propertyReference1Impl};
    }

    public AspectRatioRoundImageView(Context context) {
        this(context, null, 0, 6, null);
    }

    public AspectRatioRoundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AspectRatioRoundImageView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    private final RectF getRect() {
        c cVar = this.f12188f;
        i iVar = f12186d[0];
        return (RectF) cVar.getValue();
    }

    public void onDraw(Canvas canvas) {
        j.b(canvas, "canvas");
        this.f12189g.addRoundRect(getRect(), (float) c.c.a.d.b.i.a(this.f12187e), (float) c.c.a.d.b.i.a(this.f12187e), Path.Direction.CW);
        canvas.clipPath(this.f12189g);
        super.onDraw(canvas);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AspectRatioRoundImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        this.f12187e = 4;
        this.f12188f = d.a(new AspectRatioRoundImageView$rect$2(this));
        this.f12189g = new Path();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.AspectRatioRoundImageView);
            this.f12187e = obtainStyledAttributes.getInt(h.AspectRatioRoundImageView_roundCorner, this.f12187e);
            obtainStyledAttributes.recycle();
        }
    }
}
