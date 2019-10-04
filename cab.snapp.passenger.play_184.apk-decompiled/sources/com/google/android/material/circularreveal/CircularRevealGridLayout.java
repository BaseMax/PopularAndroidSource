package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import com.google.android.material.circularreveal.c;

public class CircularRevealGridLayout extends GridLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f3871a;

    public CircularRevealGridLayout(Context context) {
        this(context, null);
    }

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3871a = new b(this);
    }

    public void buildCircularRevealCache() {
        this.f3871a.buildCircularRevealCache();
    }

    public void destroyCircularRevealCache() {
        this.f3871a.destroyCircularRevealCache();
    }

    public c.d getRevealInfo() {
        return this.f3871a.getRevealInfo();
    }

    public void setRevealInfo(c.d dVar) {
        this.f3871a.setRevealInfo(dVar);
    }

    public int getCircularRevealScrimColor() {
        return this.f3871a.getCircularRevealScrimColor();
    }

    public void setCircularRevealScrimColor(int i) {
        this.f3871a.setCircularRevealScrimColor(i);
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f3871a.getCircularRevealOverlayDrawable();
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f3871a.setCircularRevealOverlayDrawable(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.f3871a;
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
        b bVar = this.f3871a;
        if (bVar != null) {
            return bVar.isOpaque();
        }
        return super.isOpaque();
    }

    public boolean actualIsOpaque() {
        return super.isOpaque();
    }
}
