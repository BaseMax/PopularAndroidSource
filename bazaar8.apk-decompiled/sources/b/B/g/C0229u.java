package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import b.b.j;
import b.i.c.a.a;
import b.i.k.z;

/* renamed from: b.b.g.u  reason: case insensitive filesystem */
/* compiled from: AppCompatSeekBarHelper */
public class C0229u extends r {

    /* renamed from: d  reason: collision with root package name */
    public final SeekBar f2236d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f2237e;

    /* renamed from: f  reason: collision with root package name */
    public ColorStateList f2238f = null;

    /* renamed from: g  reason: collision with root package name */
    public PorterDuff.Mode f2239g = null;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2240h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2241i = false;

    public C0229u(SeekBar seekBar) {
        super(seekBar);
        this.f2236d = seekBar;
    }

    public void a(AttributeSet attributeSet, int i2) {
        super.a(attributeSet, i2);
        pa a2 = pa.a(this.f2236d.getContext(), attributeSet, j.AppCompatSeekBar, i2, 0);
        Drawable c2 = a2.c(j.AppCompatSeekBar_android_thumb);
        if (c2 != null) {
            this.f2236d.setThumb(c2);
        }
        b(a2.b(j.AppCompatSeekBar_tickMark));
        if (a2.g(j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f2239g = H.a(a2.d(j.AppCompatSeekBar_tickMarkTintMode, -1), this.f2239g);
            this.f2241i = true;
        }
        if (a2.g(j.AppCompatSeekBar_tickMarkTint)) {
            this.f2238f = a2.a(j.AppCompatSeekBar_tickMarkTint);
            this.f2240h = true;
        }
        a2.a();
        c();
    }

    public void b(Drawable drawable) {
        Drawable drawable2 = this.f2237e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f2237e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f2236d);
            a.a(drawable, z.m(this.f2236d));
            if (drawable.isStateful()) {
                drawable.setState(this.f2236d.getDrawableState());
            }
            c();
        }
        this.f2236d.invalidate();
    }

    public final void c() {
        if (this.f2237e == null) {
            return;
        }
        if (this.f2240h || this.f2241i) {
            this.f2237e = a.i(this.f2237e.mutate());
            if (this.f2240h) {
                a.a(this.f2237e, this.f2238f);
            }
            if (this.f2241i) {
                a.a(this.f2237e, this.f2239g);
            }
            if (this.f2237e.isStateful()) {
                this.f2237e.setState(this.f2236d.getDrawableState());
            }
        }
    }

    public void d() {
        Drawable drawable = this.f2237e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f2236d.getDrawableState())) {
            this.f2236d.invalidateDrawable(drawable);
        }
    }

    public void e() {
        Drawable drawable = this.f2237e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void a(Canvas canvas) {
        if (this.f2237e != null) {
            int max = this.f2236d.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.f2237e.getIntrinsicWidth();
                int intrinsicHeight = this.f2237e.getIntrinsicHeight();
                int i3 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.f2237e.setBounds(-i3, -i2, i3, i2);
                float width = ((float) ((this.f2236d.getWidth() - this.f2236d.getPaddingLeft()) - this.f2236d.getPaddingRight())) / ((float) max);
                int save = canvas.save();
                canvas.translate((float) this.f2236d.getPaddingLeft(), (float) (this.f2236d.getHeight() / 2));
                for (int i4 = 0; i4 <= max; i4++) {
                    this.f2237e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
