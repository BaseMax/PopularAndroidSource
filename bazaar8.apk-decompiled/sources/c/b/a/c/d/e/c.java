package c.b.a.c.d.e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import c.b.a.c.d.e.g;
import c.b.a.c.i;
import java.nio.ByteBuffer;

/* compiled from: GifDrawable */
public class c extends Drawable implements g.b, Animatable {

    /* renamed from: a  reason: collision with root package name */
    public final a f4227a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f4228b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4229c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4230d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4231e;

    /* renamed from: f  reason: collision with root package name */
    public int f4232f;

    /* renamed from: g  reason: collision with root package name */
    public int f4233g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4234h;

    /* renamed from: i  reason: collision with root package name */
    public Paint f4235i;

    /* renamed from: j  reason: collision with root package name */
    public Rect f4236j;

    /* compiled from: GifDrawable */
    static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        public final g f4237a;

        public a(g gVar) {
            this.f4237a = gVar;
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public Drawable newDrawable() {
            return new c(this);
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c(android.content.Context r10, c.b.a.b.a r11, c.b.a.c.i<android.graphics.Bitmap> r12, int r13, int r14, android.graphics.Bitmap r15) {
        /*
            r9 = this;
            c.b.a.c.d.e.c$a r0 = new c.b.a.c.d.e.c$a
            c.b.a.c.d.e.g r8 = new c.b.a.c.d.e.g
            c.b.a.e r2 = c.b.a.e.b((android.content.Context) r10)
            r1 = r8
            r3 = r11
            r4 = r13
            r5 = r14
            r6 = r12
            r7 = r15
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r0.<init>(r8)
            r9.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.d.e.c.<init>(android.content.Context, c.b.a.b.a, c.b.a.c.i, int, int, android.graphics.Bitmap):void");
    }

    public void a(i<Bitmap> iVar, Bitmap bitmap) {
        this.f4227a.f4237a.a(iVar, bitmap);
    }

    public final Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    public ByteBuffer c() {
        return this.f4227a.f4237a.b();
    }

    public final Rect d() {
        if (this.f4236j == null) {
            this.f4236j = new Rect();
        }
        return this.f4236j;
    }

    public void draw(Canvas canvas) {
        if (!this.f4230d) {
            if (this.f4234h) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
                this.f4234h = false;
            }
            canvas.drawBitmap(this.f4227a.f4237a.c(), null, d(), h());
        }
    }

    public Bitmap e() {
        return this.f4227a.f4237a.e();
    }

    public int f() {
        return this.f4227a.f4237a.f();
    }

    public int g() {
        return this.f4227a.f4237a.d();
    }

    public Drawable.ConstantState getConstantState() {
        return this.f4227a;
    }

    public int getIntrinsicHeight() {
        return this.f4227a.f4237a.i();
    }

    public int getIntrinsicWidth() {
        return this.f4227a.f4237a.k();
    }

    public int getOpacity() {
        return -2;
    }

    public final Paint h() {
        if (this.f4235i == null) {
            this.f4235i = new Paint(2);
        }
        return this.f4235i;
    }

    public int i() {
        return this.f4227a.f4237a.j();
    }

    public boolean isRunning() {
        return this.f4228b;
    }

    public void j() {
        this.f4230d = true;
        this.f4227a.f4237a.a();
    }

    public final void k() {
        this.f4232f = 0;
    }

    public final void l() {
        c.b.a.i.i.a(!this.f4230d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f4227a.f4237a.f() == 1) {
            invalidateSelf();
        } else if (!this.f4228b) {
            this.f4228b = true;
            this.f4227a.f4237a.a((g.b) this);
            invalidateSelf();
        }
    }

    public final void m() {
        this.f4228b = false;
        this.f4227a.f4237a.b(this);
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f4234h = true;
    }

    public void setAlpha(int i2) {
        h().setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        h().setColorFilter(colorFilter);
    }

    public boolean setVisible(boolean z, boolean z2) {
        c.b.a.i.i.a(!this.f4230d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f4231e = z;
        if (!z) {
            m();
        } else if (this.f4229c) {
            l();
        }
        return super.setVisible(z, z2);
    }

    public void start() {
        this.f4229c = true;
        k();
        if (this.f4231e) {
            l();
        }
    }

    public void stop() {
        this.f4229c = false;
        m();
    }

    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.f4232f++;
        }
        int i2 = this.f4233g;
        if (i2 != -1 && this.f4232f >= i2) {
            stop();
        }
    }

    public c(a aVar) {
        this.f4231e = true;
        this.f4233g = -1;
        c.b.a.i.i.a(aVar);
        this.f4227a = aVar;
    }
}
