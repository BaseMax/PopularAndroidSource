package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

public class CircularRevealCardView extends CardView implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f3878a;

    public CircularRevealCardView(Context context) {
        this(context, null);
    }

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3878a = new b(this);
    }

    public void buildCircularRevealCache() {
        this.f3878a.buildCircularRevealCache();
    }

    public void destroyCircularRevealCache() {
        this.f3878a.destroyCircularRevealCache();
    }

    public void setRevealInfo(c.d dVar) {
        this.f3878a.setRevealInfo(dVar);
    }

    public c.d getRevealInfo() {
        return this.f3878a.getRevealInfo();
    }

    public void setCircularRevealScrimColor(int i) {
        this.f3878a.setCircularRevealScrimColor(i);
    }

    public int getCircularRevealScrimColor() {
        return this.f3878a.getCircularRevealScrimColor();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f3878a.getCircularRevealOverlayDrawable();
    }

    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f3878a.setCircularRevealOverlayDrawable(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.f3878a;
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
        b bVar = this.f3878a;
        if (bVar != null) {
            return bVar.isOpaque();
        }
        return super.isOpaque();
    }

    public boolean actualIsOpaque() {
        return super.isOpaque();
    }
}
