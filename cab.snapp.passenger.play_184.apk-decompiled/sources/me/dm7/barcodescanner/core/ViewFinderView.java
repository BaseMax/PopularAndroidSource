package me.dm7.barcodescanner.core;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import me.dm7.barcodescanner.core.f;

public class ViewFinderView extends View implements e {
    private static final int[] g = {0, 64, 128, 192, 255, 192, 128, 64};

    /* renamed from: a  reason: collision with root package name */
    protected Paint f8707a;

    /* renamed from: b  reason: collision with root package name */
    protected Paint f8708b;
    protected Paint c;
    protected int d;
    protected boolean e;
    private Rect f;
    private int h;
    private final int i = getResources().getColor(f.a.viewfinder_laser);
    private final int j = getResources().getColor(f.a.viewfinder_mask);
    private final int k = getResources().getColor(f.a.viewfinder_border);
    private final int l = getResources().getInteger(f.b.viewfinder_border_width);
    private final int m = getResources().getInteger(f.b.viewfinder_border_length);
    private boolean n;
    private float o;
    private int p = 0;

    public ViewFinderView(Context context) {
        super(context);
        a();
    }

    public ViewFinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.f8707a = new Paint();
        this.f8707a.setColor(this.i);
        this.f8707a.setStyle(Paint.Style.FILL);
        this.f8708b = new Paint();
        this.f8708b.setColor(this.j);
        this.c = new Paint();
        this.c.setColor(this.k);
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setStrokeWidth((float) this.l);
        this.c.setAntiAlias(true);
        this.d = this.m;
    }

    public void setLaserColor(int i2) {
        this.f8707a.setColor(i2);
    }

    public void setMaskColor(int i2) {
        this.f8708b.setColor(i2);
    }

    public void setBorderColor(int i2) {
        this.c.setColor(i2);
    }

    public void setBorderStrokeWidth(int i2) {
        this.c.setStrokeWidth((float) i2);
    }

    public void setBorderLineLength(int i2) {
        this.d = i2;
    }

    public void setLaserEnabled(boolean z) {
        this.n = z;
    }

    public void setBorderCornerRounded(boolean z) {
        if (z) {
            this.c.setStrokeJoin(Paint.Join.ROUND);
        } else {
            this.c.setStrokeJoin(Paint.Join.BEVEL);
        }
    }

    public void setBorderAlpha(float f2) {
        this.o = f2;
        this.c.setAlpha((int) (255.0f * f2));
    }

    public void setBorderCornerRadius(int i2) {
        this.c.setPathEffect(new CornerPathEffect((float) i2));
    }

    public void setViewFinderOffset(int i2) {
        this.p = i2;
    }

    public void setSquareViewFinder(boolean z) {
        this.e = z;
    }

    public void setupViewFinder() {
        updateFramingRect();
        invalidate();
    }

    public Rect getFramingRect() {
        return this.f;
    }

    public void onDraw(Canvas canvas) {
        if (getFramingRect() != null) {
            drawViewFinderMask(canvas);
            drawViewFinderBorder(canvas);
            if (this.n) {
                drawLaser(canvas);
            }
        }
    }

    public void drawViewFinderMask(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        Rect framingRect = getFramingRect();
        float f2 = (float) width;
        canvas.drawRect(0.0f, 0.0f, f2, (float) framingRect.top, this.f8708b);
        canvas.drawRect(0.0f, (float) framingRect.top, (float) framingRect.left, (float) (framingRect.bottom + 1), this.f8708b);
        Canvas canvas2 = canvas;
        float f3 = f2;
        canvas2.drawRect((float) (framingRect.right + 1), (float) framingRect.top, f3, (float) (framingRect.bottom + 1), this.f8708b);
        canvas2.drawRect(0.0f, (float) (framingRect.bottom + 1), f3, (float) height, this.f8708b);
    }

    public void drawViewFinderBorder(Canvas canvas) {
        Rect framingRect = getFramingRect();
        Path path = new Path();
        path.moveTo((float) framingRect.left, (float) (framingRect.top + this.d));
        path.lineTo((float) framingRect.left, (float) framingRect.top);
        path.lineTo((float) (framingRect.left + this.d), (float) framingRect.top);
        canvas.drawPath(path, this.c);
        path.moveTo((float) framingRect.right, (float) (framingRect.top + this.d));
        path.lineTo((float) framingRect.right, (float) framingRect.top);
        path.lineTo((float) (framingRect.right - this.d), (float) framingRect.top);
        canvas.drawPath(path, this.c);
        path.moveTo((float) framingRect.right, (float) (framingRect.bottom - this.d));
        path.lineTo((float) framingRect.right, (float) framingRect.bottom);
        path.lineTo((float) (framingRect.right - this.d), (float) framingRect.bottom);
        canvas.drawPath(path, this.c);
        path.moveTo((float) framingRect.left, (float) (framingRect.bottom - this.d));
        path.lineTo((float) framingRect.left, (float) framingRect.bottom);
        path.lineTo((float) (framingRect.left + this.d), (float) framingRect.bottom);
        canvas.drawPath(path, this.c);
    }

    public void drawLaser(Canvas canvas) {
        Rect framingRect = getFramingRect();
        this.f8707a.setAlpha(g[this.h]);
        this.h = (this.h + 1) % g.length;
        int height = (framingRect.height() / 2) + framingRect.top;
        canvas.drawRect((float) (framingRect.left + 2), (float) (height - 1), (float) (framingRect.right - 1), (float) (height + 2), this.f8707a);
        postInvalidateDelayed(80, framingRect.left - 10, framingRect.top - 10, framingRect.right + 10, framingRect.bottom + 10);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        updateFramingRect();
    }

    public synchronized void updateFramingRect() {
        int i2;
        int i3;
        int i4;
        Point point = new Point(getWidth(), getHeight());
        int screenOrientation = d.getScreenOrientation(getContext());
        if (this.e) {
            if (screenOrientation != 1) {
                i4 = getHeight();
            } else {
                i4 = getWidth();
            }
            i3 = (int) (((float) i4) * 0.625f);
            i2 = i3;
        } else if (screenOrientation != 1) {
            int height = (int) (((float) getHeight()) * 0.625f);
            i2 = height;
            i3 = (int) (((float) height) * 1.4f);
        } else {
            i3 = (int) (((float) getWidth()) * 0.75f);
            i2 = (int) (((float) i3) * 0.75f);
        }
        if (i3 > getWidth()) {
            i3 = getWidth() - 50;
        }
        if (i2 > getHeight()) {
            i2 = getHeight() - 50;
        }
        int i5 = (point.x - i3) / 2;
        int i6 = (point.y - i2) / 2;
        this.f = new Rect(this.p + i5, this.p + i6, (i5 + i3) - this.p, (i6 + i2) - this.p);
    }
}
