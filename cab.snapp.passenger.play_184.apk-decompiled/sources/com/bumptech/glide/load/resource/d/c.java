package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.d.g;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public class c extends Drawable implements Animatable, Animatable2Compat, g.b {
    public static final int LOOP_FOREVER = -1;
    public static final int LOOP_INTRINSIC = 0;

    /* renamed from: a  reason: collision with root package name */
    private final a f2381a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2382b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;
    private int g;
    private boolean h;
    private Paint i;
    private Rect j;
    private List<Animatable2Compat.AnimationCallback> k;

    static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        final g f2383a;

        public final int getChangingConfigurations() {
            return 0;
        }

        a(g gVar) {
            this.f2383a = gVar;
        }

        public final Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public final Drawable newDrawable() {
            return new c(this);
        }
    }

    public int getOpacity() {
        return -2;
    }

    @Deprecated
    public c(Context context, com.bumptech.glide.b.a aVar, e eVar, j<Bitmap> jVar, int i2, int i3, Bitmap bitmap) {
        this(context, aVar, jVar, i2, i3, bitmap);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c(android.content.Context r10, com.bumptech.glide.b.a r11, com.bumptech.glide.load.j<android.graphics.Bitmap> r12, int r13, int r14, android.graphics.Bitmap r15) {
        /*
            r9 = this;
            com.bumptech.glide.load.resource.d.c$a r0 = new com.bumptech.glide.load.resource.d.c$a
            com.bumptech.glide.load.resource.d.g r8 = new com.bumptech.glide.load.resource.d.g
            com.bumptech.glide.c r2 = com.bumptech.glide.c.get(r10)
            r1 = r8
            r3 = r11
            r4 = r13
            r5 = r14
            r6 = r12
            r7 = r15
            r1.<init>((com.bumptech.glide.c) r2, (com.bumptech.glide.b.a) r3, (int) r4, (int) r5, (com.bumptech.glide.load.j<android.graphics.Bitmap>) r6, (android.graphics.Bitmap) r7)
            r0.<init>(r8)
            r9.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.d.c.<init>(android.content.Context, com.bumptech.glide.b.a, com.bumptech.glide.load.j, int, int, android.graphics.Bitmap):void");
    }

    c(a aVar) {
        this.e = true;
        this.g = -1;
        this.f2381a = (a) com.bumptech.glide.g.j.checkNotNull(aVar);
    }

    public int getSize() {
        g gVar = this.f2381a.f2383a;
        return gVar.f2385a.getByteSize() + k.getBitmapByteSize(gVar.b().getWidth(), gVar.b().getHeight(), gVar.b().getConfig());
    }

    public Bitmap getFirstFrame() {
        return this.f2381a.f2383a.i;
    }

    public void setFrameTransformation(j<Bitmap> jVar, Bitmap bitmap) {
        this.f2381a.f2383a.a(jVar, bitmap);
    }

    public j<Bitmap> getFrameTransformation() {
        return this.f2381a.f2383a.j;
    }

    public ByteBuffer getBuffer() {
        return this.f2381a.f2383a.f2385a.getData().asReadOnlyBuffer();
    }

    public int getFrameCount() {
        return this.f2381a.f2383a.a();
    }

    public int getFrameIndex() {
        g gVar = this.f2381a.f2383a;
        if (gVar.f != null) {
            return gVar.f.f2387a;
        }
        return -1;
    }

    public void startFromFirstFrame() {
        com.bumptech.glide.g.j.checkArgument(!this.f2382b, "You cannot restart a currently running animation.");
        g gVar = this.f2381a.f2383a;
        com.bumptech.glide.g.j.checkArgument(!gVar.d, "Can't restart a running animation");
        gVar.e = true;
        if (gVar.k != null) {
            gVar.c.clear((i<?>) gVar.k);
            gVar.k = null;
        }
        start();
    }

    public void start() {
        this.c = true;
        this.f = 0;
        if (this.e) {
            a();
        }
    }

    public void stop() {
        this.c = false;
        b();
    }

    private void a() {
        com.bumptech.glide.g.j.checkArgument(!this.d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f2381a.f2383a.a() == 1) {
            invalidateSelf();
            return;
        }
        if (!this.f2382b) {
            this.f2382b = true;
            this.f2381a.f2383a.a((g.b) this);
            invalidateSelf();
        }
    }

    private void b() {
        this.f2382b = false;
        this.f2381a.f2383a.b(this);
    }

    public boolean setVisible(boolean z, boolean z2) {
        com.bumptech.glide.g.j.checkArgument(!this.d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.e = z;
        if (!z) {
            b();
        } else if (this.c) {
            a();
        }
        return super.setVisible(z, z2);
    }

    public int getIntrinsicWidth() {
        return this.f2381a.f2383a.b().getWidth();
    }

    public int getIntrinsicHeight() {
        return this.f2381a.f2383a.b().getHeight();
    }

    public boolean isRunning() {
        return this.f2382b;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.h = true;
    }

    public void draw(Canvas canvas) {
        if (!this.d) {
            if (this.h) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), c());
                this.h = false;
            }
            canvas.drawBitmap(this.f2381a.f2383a.b(), null, c(), d());
        }
    }

    public void setAlpha(int i2) {
        d().setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        d().setColorFilter(colorFilter);
    }

    private Rect c() {
        if (this.j == null) {
            this.j = new Rect();
        }
        return this.j;
    }

    private Paint d() {
        if (this.i == null) {
            this.i = new Paint(2);
        }
        return this.i;
    }

    public Drawable.ConstantState getConstantState() {
        return this.f2381a;
    }

    public void recycle() {
        this.d = true;
        g gVar = this.f2381a.f2383a;
        gVar.f2386b.clear();
        gVar.c();
        gVar.d = false;
        if (gVar.f != null) {
            gVar.c.clear((i<?>) gVar.f);
            gVar.f = null;
        }
        if (gVar.h != null) {
            gVar.c.clear((i<?>) gVar.h);
            gVar.h = null;
        }
        if (gVar.k != null) {
            gVar.c.clear((i<?>) gVar.k);
            gVar.k = null;
        }
        gVar.f2385a.clear();
        gVar.g = true;
    }

    public void setLoopCount(int i2) {
        if (i2 <= 0 && i2 != -1 && i2 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        } else if (i2 == 0) {
            int totalIterationCount = this.f2381a.f2383a.f2385a.getTotalIterationCount();
            if (totalIterationCount == 0) {
                totalIterationCount = -1;
            }
            this.g = totalIterationCount;
        } else {
            this.g = i2;
        }
    }

    public void registerAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback != null) {
            if (this.k == null) {
                this.k = new ArrayList();
            }
            this.k.add(animationCallback);
        }
    }

    public boolean unregisterAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.k;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.k;
        if (list != null) {
            list.clear();
        }
    }

    public void onFrameReady() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (getFrameIndex() == getFrameCount() - 1) {
            this.f++;
        }
        int i2 = this.g;
        if (i2 != -1 && this.f >= i2) {
            List<Animatable2Compat.AnimationCallback> list = this.k;
            if (list != null) {
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.k.get(i3).onAnimationEnd(this);
                }
            }
            stop();
        }
    }
}
