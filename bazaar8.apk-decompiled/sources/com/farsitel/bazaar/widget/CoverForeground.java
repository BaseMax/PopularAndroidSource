package com.farsitel.bazaar.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.c.h.d;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CoverForeground.kt */
public final class CoverForeground extends AppCompatTextView {

    /* renamed from: e  reason: collision with root package name */
    public final Paint f12376e;

    /* renamed from: f  reason: collision with root package name */
    public final Paint f12377f;

    /* renamed from: g  reason: collision with root package name */
    public final int f12378g;

    /* renamed from: h  reason: collision with root package name */
    public final RectF f12379h;

    public CoverForeground(Context context) {
        this(context, null, 0, 6, null);
    }

    public CoverForeground(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CoverForeground(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public void onDraw(Canvas canvas) {
        j.b(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawRect(0.0f, 0.0f, (float) this.f12378g, (float) getHeight(), this.f12377f);
        canvas.drawArc(this.f12379h, 0.0f, 180.0f, false, this.f12376e);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CoverForeground(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f12376e = paint;
        Paint paint2 = new Paint();
        paint2.setColor(-1);
        paint2.setAntiAlias(true);
        this.f12377f = paint2;
        this.f12378g = d.b();
        int i3 = this.f12378g;
        float f2 = (float) 17;
        float f3 = (float) 80;
        float f4 = (float) 4;
        this.f12379h = new RectF(((((float) -1) * ((float) i3)) * f2) / f3, ((float) (i3 * -1)) / f4, ((float) i3) + ((((float) i3) * f2) / f3), ((float) i3) / f4);
        setLayerType(1, null);
    }
}
