package b.b.c.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import b.i.c.a.a;

/* compiled from: DrawableWrapper */
public class e extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    public Drawable f1810a;

    public e(Drawable drawable) {
        a(drawable);
    }

    public Drawable a() {
        return this.f1810a;
    }

    public void draw(Canvas canvas) {
        this.f1810a.draw(canvas);
    }

    public int getChangingConfigurations() {
        return this.f1810a.getChangingConfigurations();
    }

    public Drawable getCurrent() {
        return this.f1810a.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.f1810a.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.f1810a.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.f1810a.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.f1810a.getMinimumWidth();
    }

    public int getOpacity() {
        return this.f1810a.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.f1810a.getPadding(rect);
    }

    public int[] getState() {
        return this.f1810a.getState();
    }

    public Region getTransparentRegion() {
        return this.f1810a.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return a.f(this.f1810a);
    }

    public boolean isStateful() {
        return this.f1810a.isStateful();
    }

    public void jumpToCurrentState() {
        a.g(this.f1810a);
    }

    public void onBoundsChange(Rect rect) {
        this.f1810a.setBounds(rect);
    }

    public boolean onLevelChange(int i2) {
        return this.f1810a.setLevel(i2);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    public void setAlpha(int i2) {
        this.f1810a.setAlpha(i2);
    }

    public void setAutoMirrored(boolean z) {
        a.a(this.f1810a, z);
    }

    public void setChangingConfigurations(int i2) {
        this.f1810a.setChangingConfigurations(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f1810a.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.f1810a.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.f1810a.setFilterBitmap(z);
    }

    public void setHotspot(float f2, float f3) {
        a.a(this.f1810a, f2, f3);
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        a.a(this.f1810a, i2, i3, i4, i5);
    }

    public boolean setState(int[] iArr) {
        return this.f1810a.setState(iArr);
    }

    public void setTint(int i2) {
        a.b(this.f1810a, i2);
    }

    public void setTintList(ColorStateList colorStateList) {
        a.a(this.f1810a, colorStateList);
    }

    public void setTintMode(PorterDuff.Mode mode) {
        a.a(this.f1810a, mode);
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1810a.setVisible(z, z2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public void a(Drawable drawable) {
        Drawable drawable2 = this.f1810a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1810a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }
}
