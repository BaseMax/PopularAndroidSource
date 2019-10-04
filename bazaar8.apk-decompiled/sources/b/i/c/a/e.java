package b.i.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* compiled from: WrappedDrawableApi14 */
public class e extends Drawable implements Drawable.Callback, d, c {

    /* renamed from: a  reason: collision with root package name */
    public static final PorterDuff.Mode f2624a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    public int f2625b;

    /* renamed from: c  reason: collision with root package name */
    public PorterDuff.Mode f2626c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2627d;

    /* renamed from: e  reason: collision with root package name */
    public g f2628e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2629f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f2630g;

    public e(g gVar, Resources resources) {
        this.f2628e = gVar;
        a(resources);
    }

    public final void a(Resources resources) {
        g gVar = this.f2628e;
        if (gVar != null) {
            Drawable.ConstantState constantState = gVar.f2633b;
            if (constantState != null) {
                a(constantState.newDrawable(resources));
            }
        }
    }

    public boolean b() {
        return true;
    }

    public final g c() {
        return new g(this.f2628e);
    }

    public void draw(Canvas canvas) {
        this.f2630g.draw(canvas);
    }

    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        g gVar = this.f2628e;
        return changingConfigurations | (gVar != null ? gVar.getChangingConfigurations() : 0) | this.f2630g.getChangingConfigurations();
    }

    public Drawable.ConstantState getConstantState() {
        g gVar = this.f2628e;
        if (gVar == null || !gVar.a()) {
            return null;
        }
        this.f2628e.f2632a = getChangingConfigurations();
        return this.f2628e;
    }

    public Drawable getCurrent() {
        return this.f2630g.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.f2630g.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.f2630g.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.f2630g.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.f2630g.getMinimumWidth();
    }

    public int getOpacity() {
        return this.f2630g.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.f2630g.getPadding(rect);
    }

    public int[] getState() {
        return this.f2630g.getState();
    }

    public Region getTransparentRegion() {
        return this.f2630g.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return this.f2630g.isAutoMirrored();
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        if (b()) {
            g gVar = this.f2628e;
            if (gVar != null) {
                colorStateList = gVar.f2634c;
                return (colorStateList == null && colorStateList.isStateful()) || this.f2630g.isStateful();
            }
        }
        colorStateList = null;
        if (colorStateList == null) {
        }
    }

    public void jumpToCurrentState() {
        this.f2630g.jumpToCurrentState();
    }

    public Drawable mutate() {
        if (!this.f2629f && super.mutate() == this) {
            this.f2628e = c();
            Drawable drawable = this.f2630g;
            if (drawable != null) {
                drawable.mutate();
            }
            g gVar = this.f2628e;
            if (gVar != null) {
                Drawable drawable2 = this.f2630g;
                gVar.f2633b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f2629f = true;
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2630g;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    public boolean onLevelChange(int i2) {
        return this.f2630g.setLevel(i2);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    public void setAlpha(int i2) {
        this.f2630g.setAlpha(i2);
    }

    public void setAutoMirrored(boolean z) {
        this.f2630g.setAutoMirrored(z);
    }

    public void setChangingConfigurations(int i2) {
        this.f2630g.setChangingConfigurations(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f2630g.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.f2630g.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.f2630g.setFilterBitmap(z);
    }

    public boolean setState(int[] iArr) {
        return a(iArr) || this.f2630g.setState(iArr);
    }

    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    public void setTintList(ColorStateList colorStateList) {
        this.f2628e.f2634c = colorStateList;
        a(getState());
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.f2628e.f2635d = mode;
        a(getState());
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f2630g.setVisible(z, z2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public final boolean a(int[] iArr) {
        if (!b()) {
            return false;
        }
        g gVar = this.f2628e;
        ColorStateList colorStateList = gVar.f2634c;
        PorterDuff.Mode mode = gVar.f2635d;
        if (colorStateList == null || mode == null) {
            this.f2627d = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!(this.f2627d && colorForState == this.f2625b && mode == this.f2626c)) {
                setColorFilter(colorForState, mode);
                this.f2625b = colorForState;
                this.f2626c = mode;
                this.f2627d = true;
                return true;
            }
        }
        return false;
    }

    public e(Drawable drawable) {
        this.f2628e = c();
        a(drawable);
    }

    public final Drawable a() {
        return this.f2630g;
    }

    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f2630g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f2630g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            g gVar = this.f2628e;
            if (gVar != null) {
                gVar.f2633b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }
}
