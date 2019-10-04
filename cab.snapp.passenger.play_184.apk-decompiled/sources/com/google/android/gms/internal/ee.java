package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

public final class ee extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private int f3135a;

    /* renamed from: b  reason: collision with root package name */
    private long f3136b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private eh j;
    private Drawable k;
    private Drawable l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;

    public ee(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? ef.f3137a : drawable;
        this.k = drawable;
        drawable.setCallback(this);
        eh ehVar = this.j;
        ehVar.f3140b = drawable.getChangingConfigurations() | ehVar.f3140b;
        drawable2 = drawable2 == null ? ef.f3137a : drawable2;
        this.l = drawable2;
        drawable2.setCallback(this);
        eh ehVar2 = this.j;
        ehVar2.f3140b = drawable2.getChangingConfigurations() | ehVar2.f3140b;
    }

    ee(eh ehVar) {
        this.f3135a = 0;
        this.e = 255;
        this.g = 0;
        this.h = true;
        this.j = new eh(ehVar);
    }

    private final boolean a() {
        if (!this.m) {
            this.n = (this.k.getConstantState() == null || this.l.getConstantState() == null) ? false : true;
            this.m = true;
        }
        return this.n;
    }

    public final void draw(Canvas canvas) {
        int i2 = this.f3135a;
        boolean z = true;
        if (i2 == 1) {
            this.f3136b = SystemClock.uptimeMillis();
            this.f3135a = 2;
            z = false;
        } else if (i2 == 2 && this.f3136b >= 0) {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f3136b)) / ((float) this.f);
            if (uptimeMillis < 1.0f) {
                z = false;
            }
            if (z) {
                this.f3135a = 0;
            }
            this.g = (int) ((((float) this.d) * Math.min(uptimeMillis, 1.0f)) + 0.0f);
        }
        int i3 = this.g;
        boolean z2 = this.h;
        Drawable drawable = this.k;
        Drawable drawable2 = this.l;
        if (z) {
            if (!z2 || i3 == 0) {
                drawable.draw(canvas);
            }
            int i4 = this.e;
            if (i3 == i4) {
                drawable2.setAlpha(i4);
                drawable2.draw(canvas);
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.e - i3);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.e);
        }
        if (i3 > 0) {
            drawable2.setAlpha(i3);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.e);
        }
        invalidateSelf();
    }

    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.j.f3139a | this.j.f3140b;
    }

    public final Drawable.ConstantState getConstantState() {
        if (!a()) {
            return null;
        }
        this.j.f3139a = getChangingConfigurations();
        return this.j;
    }

    public final int getIntrinsicHeight() {
        return Math.max(this.k.getIntrinsicHeight(), this.l.getIntrinsicHeight());
    }

    public final int getIntrinsicWidth() {
        return Math.max(this.k.getIntrinsicWidth(), this.l.getIntrinsicWidth());
    }

    public final int getOpacity() {
        if (!this.o) {
            this.p = Drawable.resolveOpacity(this.k.getOpacity(), this.l.getOpacity());
            this.o = true;
        }
        return this.p;
    }

    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public final Drawable mutate() {
        if (!this.i && super.mutate() == this) {
            if (a()) {
                this.k.mutate();
                this.l.mutate();
                this.i = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public final void onBoundsChange(Rect rect) {
        this.k.setBounds(rect);
        this.l.setBounds(rect);
    }

    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    public final void setAlpha(int i2) {
        if (this.g == this.e) {
            this.g = i2;
        }
        this.e = i2;
        invalidateSelf();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.k.setColorFilter(colorFilter);
        this.l.setColorFilter(colorFilter);
    }

    public final void startTransition(int i2) {
        this.c = 0;
        this.d = this.e;
        this.g = 0;
        this.f = 250;
        this.f3135a = 1;
        invalidateSelf();
    }

    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zzake() {
        return this.l;
    }
}
