package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.google.android.material.circularreveal.c;

public class CircularRevealLinearLayout extends LinearLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f3872a;

    public CircularRevealLinearLayout(Context context) {
        this(context, null);
    }

    public CircularRevealLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3872a = new b(this);
    }

    public void buildCircularRevealCache() {
        this.f3872a.buildCircularRevealCache();
    }

    public void destroyCircularRevealCache() {
        this.f3872a.destroyCircularRevealCache();
    }

    public c.d getRevealInfo() {
        return this.f3872a.getRevealInfo();
    }

    public void setRevealInfo(c.d dVar) {
        this.f3872a.setRevealInfo(dVar);
    }

    public int getCircularRevealScrimColor() {
        return this.f3872a.getCircularRevealScrimColor();
    }

    public void setCircularRevealScrimColor(int i) {
        this.f3872a.setCircularRevealScrimColor(i);
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f3872a.getCircularRevealOverlayDrawable();
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f3872a.setCircularRevealOverlayDrawable(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.f3872a;
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
        b bVar = this.f3872a;
        if (bVar != null) {
            return bVar.isOpaque();
        }
        return super.isOpaque();
    }

    public boolean actualIsOpaque() {
        return super.isOpaque();
    }
}
