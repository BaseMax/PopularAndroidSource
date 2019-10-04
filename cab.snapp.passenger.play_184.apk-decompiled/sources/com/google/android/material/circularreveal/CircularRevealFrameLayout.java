package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.circularreveal.c;

public class CircularRevealFrameLayout extends FrameLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f3870a;

    public CircularRevealFrameLayout(Context context) {
        this(context, null);
    }

    public CircularRevealFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3870a = new b(this);
    }

    public void buildCircularRevealCache() {
        this.f3870a.buildCircularRevealCache();
    }

    public void destroyCircularRevealCache() {
        this.f3870a.destroyCircularRevealCache();
    }

    public c.d getRevealInfo() {
        return this.f3870a.getRevealInfo();
    }

    public void setRevealInfo(c.d dVar) {
        this.f3870a.setRevealInfo(dVar);
    }

    public int getCircularRevealScrimColor() {
        return this.f3870a.getCircularRevealScrimColor();
    }

    public void setCircularRevealScrimColor(int i) {
        this.f3870a.setCircularRevealScrimColor(i);
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f3870a.getCircularRevealOverlayDrawable();
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f3870a.setCircularRevealOverlayDrawable(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.f3870a;
        if (bVar != null) {
            bVar.draw(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public void actualDraw(Canvas canvas) {
        super.draw(canvas);
    }

    public boolean isOpaque() {
        b bVar = this.f3870a;
        if (bVar != null) {
            return bVar.isOpaque();
        }
        return super.isOpaque();
    }

    public boolean actualIsOpaque() {
        return super.isOpaque();
    }
}
