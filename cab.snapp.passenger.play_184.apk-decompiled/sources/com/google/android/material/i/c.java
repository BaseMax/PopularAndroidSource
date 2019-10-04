package com.google.android.material.i;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.TintAwareDrawable;

public final class c extends Drawable implements TintAwareDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f3911a;

    /* renamed from: b  reason: collision with root package name */
    private final Matrix[] f3912b;
    private final Matrix[] c;
    private final d[] d;
    private final Matrix e;
    private final Path f;
    private final PointF g;
    private final d h;
    private final Region i;
    private final Region j;
    private final float[] k;
    private final float[] l;
    private e m;
    private boolean n;
    private boolean o;
    private float p;
    private int q;
    private int r;
    private int s;
    private int t;
    private float u;
    private float v;
    private Paint.Style w;
    private PorterDuffColorFilter x;
    private PorterDuff.Mode y;
    private ColorStateList z;

    public final int getOpacity() {
        return -3;
    }

    public c() {
        this(null);
    }

    public c(e eVar) {
        this.f3911a = new Paint();
        this.f3912b = new Matrix[4];
        this.c = new Matrix[4];
        this.d = new d[4];
        this.e = new Matrix();
        this.f = new Path();
        this.g = new PointF();
        this.h = new d();
        this.i = new Region();
        this.j = new Region();
        this.k = new float[2];
        this.l = new float[2];
        this.m = null;
        this.n = false;
        this.o = false;
        this.p = 1.0f;
        this.q = -16777216;
        this.r = 5;
        this.s = 10;
        this.t = 255;
        this.u = 1.0f;
        this.v = 0.0f;
        this.w = Paint.Style.FILL_AND_STROKE;
        this.y = PorterDuff.Mode.SRC_IN;
        this.z = null;
        this.m = eVar;
        for (int i2 = 0; i2 < 4; i2++) {
            this.f3912b[i2] = new Matrix();
            this.c[i2] = new Matrix();
            this.d[i2] = new d();
        }
    }

    public final e getShapedViewModel() {
        return this.m;
    }

    public final void setShapedViewModel(e eVar) {
        this.m = eVar;
        invalidateSelf();
    }

    public final ColorStateList getTintList() {
        return this.z;
    }

    public final void setTintList(ColorStateList colorStateList) {
        this.z = colorStateList;
        a();
        invalidateSelf();
    }

    public final void setTintMode(PorterDuff.Mode mode) {
        this.y = mode;
        a();
        invalidateSelf();
    }

    public final void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    public final void setAlpha(int i2) {
        this.t = i2;
        invalidateSelf();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.f3911a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.i.set(bounds);
        a(bounds.width(), bounds.height(), this.f);
        this.j.setPath(this.f, this.i);
        this.i.op(this.j, Region.Op.DIFFERENCE);
        return this.i;
    }

    public final boolean isPointInTransparentRegion(int i2, int i3) {
        return getTransparentRegion().contains(i2, i3);
    }

    public final boolean isShadowEnabled() {
        return this.n;
    }

    public final void setShadowEnabled(boolean z2) {
        this.n = z2;
        invalidateSelf();
    }

    public final float getInterpolation() {
        return this.p;
    }

    public final void setInterpolation(float f2) {
        this.p = f2;
        invalidateSelf();
    }

    public final int getShadowElevation() {
        return this.r;
    }

    public final void setShadowElevation(int i2) {
        this.r = i2;
        invalidateSelf();
    }

    public final int getShadowRadius() {
        return this.s;
    }

    public final void setShadowRadius(int i2) {
        this.s = i2;
        invalidateSelf();
    }

    public final float getScale() {
        return this.u;
    }

    public final void setScale(float f2) {
        this.u = f2;
        invalidateSelf();
    }

    public final void setUseTintColorForShadow(boolean z2) {
        this.o = z2;
        invalidateSelf();
    }

    public final void setShadowColor(int i2) {
        this.q = i2;
        this.o = false;
        invalidateSelf();
    }

    public final Paint.Style getPaintStyle() {
        return this.w;
    }

    public final void setPaintStyle(Paint.Style style) {
        this.w = style;
        invalidateSelf();
    }

    public final float getStrokeWidth() {
        return this.v;
    }

    public final void setStrokeWidth(float f2) {
        this.v = f2;
        invalidateSelf();
    }

    public final void draw(Canvas canvas) {
        this.f3911a.setColorFilter(this.x);
        int alpha = this.f3911a.getAlpha();
        Paint paint = this.f3911a;
        int i2 = this.t;
        paint.setAlpha(((i2 + (i2 >>> 7)) * alpha) >>> 8);
        this.f3911a.setStrokeWidth(this.v);
        this.f3911a.setStyle(this.w);
        int i3 = this.r;
        if (i3 > 0 && this.n) {
            this.f3911a.setShadowLayer((float) this.s, 0.0f, (float) i3, this.q);
        }
        if (this.m != null) {
            a(canvas.getWidth(), canvas.getHeight(), this.f);
            canvas.drawPath(this.f, this.f3911a);
        } else {
            canvas.drawRect(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), this.f3911a);
        }
        this.f3911a.setAlpha(alpha);
    }

    public final void getPathForSize(int i2, int i3, Path path) {
        b bVar;
        a aVar;
        int i4 = i2;
        int i5 = i3;
        Path path2 = path;
        path.rewind();
        if (this.m != null) {
            int i6 = 0;
            while (i6 < 4) {
                a(i6, i4, i5, this.g);
                int i7 = ((i6 - 1) + 4) % 4;
                a(i7, i4, i5, this.g);
                float f2 = this.g.x;
                float f3 = this.g.y;
                int i8 = i6 + 1;
                a(i8 % 4, i4, i5, this.g);
                float f4 = this.g.x;
                float f5 = this.g.y;
                a(i6, i4, i5, this.g);
                float f6 = this.g.x;
                float f7 = this.g.y;
                float f8 = f3 - f7;
                float f9 = f5 - f7;
                int i9 = i7;
                double d2 = (double) f8;
                int i10 = i6;
                float atan2 = ((float) Math.atan2(d2, (double) (f2 - f6))) - ((float) Math.atan2((double) f9, (double) (f4 - f6)));
                if (atan2 < 0.0f) {
                    double d3 = (double) atan2;
                    Double.isNaN(d3);
                    atan2 = (float) (d3 + 6.283185307179586d);
                }
                float f10 = atan2;
                int i11 = i10;
                if (i11 == 1) {
                    aVar = this.m.getTopRightCorner();
                } else if (i11 == 2) {
                    aVar = this.m.getBottomRightCorner();
                } else if (i11 != 3) {
                    aVar = this.m.getTopLeftCorner();
                } else {
                    aVar = this.m.getBottomLeftCorner();
                }
                aVar.getCornerPath(f10, this.p, this.d[i11]);
                this.f3912b[i11].reset();
                this.f3912b[i11].setTranslate(this.g.x, this.g.y);
                this.f3912b[i11].preRotate((float) Math.toDegrees((double) (a(i9, i4, i5) + 1.5707964f)));
                this.k[0] = this.d[i11].endX;
                this.k[1] = this.d[i11].endY;
                this.f3912b[i11].mapPoints(this.k);
                float a2 = a(i11, i4, i5);
                this.c[i11].reset();
                Matrix matrix = this.c[i11];
                float[] fArr = this.k;
                matrix.setTranslate(fArr[0], fArr[1]);
                this.c[i11].preRotate((float) Math.toDegrees((double) a2));
                i6 = i8;
            }
            int i12 = 0;
            while (i12 < 4) {
                this.k[0] = this.d[i12].startX;
                this.k[1] = this.d[i12].startY;
                this.f3912b[i12].mapPoints(this.k);
                if (i12 == 0) {
                    float[] fArr2 = this.k;
                    path2.moveTo(fArr2[0], fArr2[1]);
                } else {
                    float[] fArr3 = this.k;
                    path2.lineTo(fArr3[0], fArr3[1]);
                }
                this.d[i12].applyToPath(this.f3912b[i12], path2);
                int i13 = i12 + 1;
                int i14 = i13 % 4;
                this.k[0] = this.d[i12].endX;
                this.k[1] = this.d[i12].endY;
                this.f3912b[i12].mapPoints(this.k);
                this.l[0] = this.d[i14].startX;
                this.l[1] = this.d[i14].startY;
                this.f3912b[i14].mapPoints(this.l);
                float[] fArr4 = this.k;
                float f11 = fArr4[0];
                float[] fArr5 = this.l;
                float hypot = (float) Math.hypot((double) (f11 - fArr5[0]), (double) (fArr4[1] - fArr5[1]));
                this.h.reset(0.0f, 0.0f);
                if (i12 == 1) {
                    bVar = this.m.getRightEdge();
                } else if (i12 == 2) {
                    bVar = this.m.getBottomEdge();
                } else if (i12 != 3) {
                    bVar = this.m.getTopEdge();
                } else {
                    bVar = this.m.getLeftEdge();
                }
                bVar.getEdgePath(hypot, this.p, this.h);
                this.h.applyToPath(this.c[i12], path2);
                i12 = i13;
            }
            path.close();
        }
    }

    private static void a(int i2, int i3, int i4, PointF pointF) {
        if (i2 == 1) {
            pointF.set((float) i3, 0.0f);
        } else if (i2 == 2) {
            pointF.set((float) i3, (float) i4);
        } else if (i2 != 3) {
            pointF.set(0.0f, 0.0f);
        } else {
            pointF.set(0.0f, (float) i4);
        }
    }

    private float a(int i2, int i3, int i4) {
        a(i2, i3, i4, this.g);
        float f2 = this.g.x;
        float f3 = this.g.y;
        a((i2 + 1) % 4, i3, i4, this.g);
        return (float) Math.atan2((double) (this.g.y - f3), (double) (this.g.x - f2));
    }

    private void a(int i2, int i3, Path path) {
        getPathForSize(i2, i3, path);
        if (this.u != 1.0f) {
            this.e.reset();
            Matrix matrix = this.e;
            float f2 = this.u;
            matrix.setScale(f2, f2, (float) (i2 / 2), (float) (i3 / 2));
            path.transform(this.e);
        }
    }

    private void a() {
        ColorStateList colorStateList = this.z;
        if (colorStateList == null || this.y == null) {
            this.x = null;
            return;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        this.x = new PorterDuffColorFilter(colorForState, this.y);
        if (this.o) {
            this.q = colorForState;
        }
    }
}
