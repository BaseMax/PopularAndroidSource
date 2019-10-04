package b.e.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* compiled from: RoundRectDrawable */
public class i extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public float f2305a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f2306b;

    /* renamed from: c  reason: collision with root package name */
    public final RectF f2307c;

    /* renamed from: d  reason: collision with root package name */
    public final Rect f2308d;

    /* renamed from: e  reason: collision with root package name */
    public float f2309e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2310f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2311g = true;

    /* renamed from: h  reason: collision with root package name */
    public ColorStateList f2312h;

    /* renamed from: i  reason: collision with root package name */
    public PorterDuffColorFilter f2313i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f2314j;

    /* renamed from: k  reason: collision with root package name */
    public PorterDuff.Mode f2315k = PorterDuff.Mode.SRC_IN;

    public i(ColorStateList colorStateList, float f2) {
        this.f2305a = f2;
        this.f2306b = new Paint(5);
        a(colorStateList);
        this.f2307c = new RectF();
        this.f2308d = new Rect();
    }

    public final void a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f2312h = colorStateList;
        this.f2306b.setColor(this.f2312h.getColorForState(getState(), this.f2312h.getDefaultColor()));
    }

    public float b() {
        return this.f2309e;
    }

    public float c() {
        return this.f2305a;
    }

    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f2306b;
        if (this.f2313i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f2313i);
            z = true;
        }
        RectF rectF = this.f2307c;
        float f2 = this.f2305a;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    public int getOpacity() {
        return -3;
    }

    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f2308d, this.f2305a);
    }

    public boolean isStateful() {
        ColorStateList colorStateList = this.f2314j;
        if (colorStateList == null || !colorStateList.isStateful()) {
            ColorStateList colorStateList2 = this.f2312h;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && !super.isStateful()) {
                return false;
            }
        }
        return true;
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
    }

    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f2312h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f2306b.getColor();
        if (z) {
            this.f2306b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f2314j;
        if (colorStateList2 != null) {
            PorterDuff.Mode mode = this.f2315k;
            if (mode != null) {
                this.f2313i = a(colorStateList2, mode);
                return true;
            }
        }
        return z;
    }

    public void setAlpha(int i2) {
        this.f2306b.setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f2306b.setColorFilter(colorFilter);
    }

    public void setTintList(ColorStateList colorStateList) {
        this.f2314j = colorStateList;
        this.f2313i = a(this.f2314j, this.f2315k);
        invalidateSelf();
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.f2315k = mode;
        this.f2313i = a(this.f2314j, this.f2315k);
        invalidateSelf();
    }

    public void b(ColorStateList colorStateList) {
        a(colorStateList);
        invalidateSelf();
    }

    public void a(float f2, boolean z, boolean z2) {
        if (f2 != this.f2309e || this.f2310f != z || this.f2311g != z2) {
            this.f2309e = f2;
            this.f2310f = z;
            this.f2311g = z2;
            a((Rect) null);
            invalidateSelf();
        }
    }

    public final void a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f2307c.set((float) rect.left, (float) rect.top, (float) rect.right, (float) rect.bottom);
        this.f2308d.set(rect);
        if (this.f2310f) {
            float b2 = j.b(this.f2309e, this.f2305a, this.f2311g);
            this.f2308d.inset((int) Math.ceil((double) j.a(this.f2309e, this.f2305a, this.f2311g)), (int) Math.ceil((double) b2));
            this.f2307c.set(this.f2308d);
        }
    }

    public void a(float f2) {
        if (f2 != this.f2305a) {
            this.f2305a = f2;
            a((Rect) null);
            invalidateSelf();
        }
    }

    public ColorStateList a() {
        return this.f2312h;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
