package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;

final class a extends GradientDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f4016a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    private final RectF f4017b;
    private int c;

    a() {
        this.f4016a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f4016a.setColor(-1);
        this.f4016a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f4017b = new RectF();
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return !this.f4017b.isEmpty();
    }

    /* access modifiers changed from: package-private */
    public final void a(float f, float f2, float f3, float f4) {
        if (f != this.f4017b.left || f2 != this.f4017b.top || f3 != this.f4017b.right || f4 != this.f4017b.bottom) {
            this.f4017b.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(RectF rectF) {
        a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ((View) callback).setLayerType(2, null);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.c = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null);
        } else {
            this.c = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null, 31);
        }
        super.draw(canvas);
        canvas.drawRect(this.f4017b, this.f4016a);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.c);
        }
    }
}
