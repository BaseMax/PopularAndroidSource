package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.circularreveal.c;

public final class b {
    public static final int BITMAP_SHADER = 0;
    public static final int CLIP_PATH = 1;
    public static final int REVEAL_ANIMATOR = 2;
    public static final int STRATEGY;

    /* renamed from: a  reason: collision with root package name */
    private final a f3875a;

    /* renamed from: b  reason: collision with root package name */
    private final View f3876b;
    private final Path c = new Path();
    private final Paint d = new Paint(7);
    private final Paint e = new Paint(1);
    private c.d f;
    private Drawable g;
    private boolean h;
    private boolean i;

    public interface a {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            STRATEGY = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            STRATEGY = 1;
        } else {
            STRATEGY = 0;
        }
    }

    public b(a aVar) {
        this.f3875a = aVar;
        this.f3876b = (View) aVar;
        this.f3876b.setWillNotDraw(false);
        this.e.setColor(0);
    }

    public final void buildCircularRevealCache() {
        if (STRATEGY == 0) {
            this.h = true;
            this.i = false;
            this.f3876b.buildDrawingCache();
            Bitmap drawingCache = this.f3876b.getDrawingCache();
            if (!(drawingCache != null || this.f3876b.getWidth() == 0 || this.f3876b.getHeight() == 0)) {
                drawingCache = Bitmap.createBitmap(this.f3876b.getWidth(), this.f3876b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f3876b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.h = false;
            this.i = true;
        }
    }

    public final void destroyCircularRevealCache() {
        if (STRATEGY == 0) {
            this.i = false;
            this.f3876b.destroyDrawingCache();
            this.d.setShader(null);
            this.f3876b.invalidate();
        }
    }

    public final void setRevealInfo(c.d dVar) {
        if (dVar == null) {
            this.f = null;
        } else {
            c.d dVar2 = this.f;
            if (dVar2 == null) {
                this.f = new c.d(dVar);
            } else {
                dVar2.set(dVar);
            }
            if (com.google.android.material.e.a.geq(dVar.radius, a(dVar), 1.0E-4f)) {
                this.f.radius = Float.MAX_VALUE;
            }
        }
        if (STRATEGY == 1) {
            this.c.rewind();
            c.d dVar3 = this.f;
            if (dVar3 != null) {
                this.c.addCircle(dVar3.centerX, this.f.centerY, this.f.radius, Path.Direction.CW);
            }
        }
        this.f3876b.invalidate();
    }

    public final c.d getRevealInfo() {
        c.d dVar = this.f;
        if (dVar == null) {
            return null;
        }
        c.d dVar2 = new c.d(dVar);
        if (dVar2.isInvalid()) {
            dVar2.radius = a(dVar2);
        }
        return dVar2;
    }

    public final void setCircularRevealScrimColor(int i2) {
        this.e.setColor(i2);
        this.f3876b.invalidate();
    }

    public final int getCircularRevealScrimColor() {
        return this.e.getColor();
    }

    public final Drawable getCircularRevealOverlayDrawable() {
        return this.g;
    }

    public final void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.g = drawable;
        this.f3876b.invalidate();
    }

    private float a(c.d dVar) {
        return com.google.android.material.e.a.distanceToFurthestCorner(dVar.centerX, dVar.centerY, 0.0f, 0.0f, (float) this.f3876b.getWidth(), (float) this.f3876b.getHeight());
    }

    public final void draw(Canvas canvas) {
        boolean z = true;
        if (a()) {
            int i2 = STRATEGY;
            if (i2 == 0) {
                canvas.drawCircle(this.f.centerX, this.f.centerY, this.f.radius, this.d);
                if (b()) {
                    canvas.drawCircle(this.f.centerX, this.f.centerY, this.f.radius, this.e);
                }
            } else if (i2 == 1) {
                int save = canvas.save();
                canvas.clipPath(this.c);
                this.f3875a.actualDraw(canvas);
                if (b()) {
                    canvas.drawRect(0.0f, 0.0f, (float) this.f3876b.getWidth(), (float) this.f3876b.getHeight(), this.e);
                }
                canvas.restoreToCount(save);
            } else if (i2 == 2) {
                this.f3875a.actualDraw(canvas);
                if (b()) {
                    canvas.drawRect(0.0f, 0.0f, (float) this.f3876b.getWidth(), (float) this.f3876b.getHeight(), this.e);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + STRATEGY);
            }
        } else {
            this.f3875a.actualDraw(canvas);
            if (b()) {
                canvas.drawRect(0.0f, 0.0f, (float) this.f3876b.getWidth(), (float) this.f3876b.getHeight(), this.e);
            }
        }
        if (this.h || this.g == null || this.f == null) {
            z = false;
        }
        if (z) {
            Rect bounds = this.g.getBounds();
            float width = this.f.centerX - (((float) bounds.width()) / 2.0f);
            float height = this.f.centerY - (((float) bounds.height()) / 2.0f);
            canvas.translate(width, height);
            this.g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    public final boolean isOpaque() {
        return this.f3875a.actualIsOpaque() && !a();
    }

    private boolean a() {
        c.d dVar = this.f;
        boolean z = dVar == null || dVar.isInvalid();
        return STRATEGY == 0 ? !z && this.i : !z;
    }

    private boolean b() {
        return !this.h && Color.alpha(this.e.getColor()) != 0;
    }
}
