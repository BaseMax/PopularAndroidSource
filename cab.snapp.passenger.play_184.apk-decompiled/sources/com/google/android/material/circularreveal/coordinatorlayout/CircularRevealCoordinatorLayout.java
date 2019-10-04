package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f3879a;

    public CircularRevealCoordinatorLayout(Context context) {
        this(context, null);
    }

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3879a = new b(this);
    }

    public void buildCircularRevealCache() {
        this.f3879a.buildCircularRevealCache();
    }

    public void destroyCircularRevealCache() {
        this.f3879a.destroyCircularRevealCache();
    }

    public void setRevealInfo(c.d dVar) {
        this.f3879a.setRevealInfo(dVar);
    }

    public c.d getRevealInfo() {
        return this.f3879a.getRevealInfo();
    }

    public void setCircularRevealScrimColor(int i) {
        this.f3879a.setCircularRevealScrimColor(i);
    }

    public int getCircularRevealScrimColor() {
        return this.f3879a.getCircularRevealScrimColor();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f3879a.getCircularRevealOverlayDrawable();
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f3879a.setCircularRevealOverlayDrawable(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.f3879a;
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
        b bVar = this.f3879a;
        if (bVar != null) {
            return bVar.isOpaque();
        }
        return super.isOpaque();
    }

    public boolean actualIsOpaque() {
        return super.isOpaque();
    }
}
