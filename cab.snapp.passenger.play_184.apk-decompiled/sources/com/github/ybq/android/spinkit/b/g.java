package com.github.ybq.android.spinkit.b;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import com.github.ybq.android.spinkit.a.a;

public abstract class g extends f {

    /* renamed from: b  reason: collision with root package name */
    private f[] f2532b = onCreateChild();
    private int c;

    /* access modifiers changed from: protected */
    public final void a(Canvas canvas) {
    }

    public void onChildCreated(f... fVarArr) {
    }

    public ValueAnimator onCreateAnimation() {
        return null;
    }

    public abstract f[] onCreateChild();

    public g() {
        f[] fVarArr = this.f2532b;
        if (fVarArr != null) {
            for (f callback : fVarArr) {
                callback.setCallback(this);
            }
        }
        onChildCreated(this.f2532b);
    }

    public int getChildCount() {
        f[] fVarArr = this.f2532b;
        if (fVarArr == null) {
            return 0;
        }
        return fVarArr.length;
    }

    public f getChildAt(int i) {
        f[] fVarArr = this.f2532b;
        if (fVarArr == null) {
            return null;
        }
        return fVarArr[i];
    }

    public void setColor(int i) {
        this.c = i;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            getChildAt(i2).setColor(i);
        }
    }

    public int getColor() {
        return this.c;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawChild(canvas);
    }

    public void drawChild(Canvas canvas) {
        f[] fVarArr = this.f2532b;
        if (fVarArr != null) {
            for (f draw : fVarArr) {
                int save = canvas.save();
                draw.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        for (f bounds : this.f2532b) {
            bounds.setBounds(rect);
        }
    }

    public void start() {
        super.start();
        a.start(this.f2532b);
    }

    public void stop() {
        super.stop();
        a.stop(this.f2532b);
    }

    public boolean isRunning() {
        return a.isRunning(this.f2532b) || super.isRunning();
    }
}
