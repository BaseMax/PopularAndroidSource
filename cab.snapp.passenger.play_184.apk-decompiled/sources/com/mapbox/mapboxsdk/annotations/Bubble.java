package com.mapbox.mapboxsdk.annotations;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

@Deprecated
class Bubble extends Drawable {
    private float arrowHeight;
    private float arrowPosition;
    private float arrowWidth;
    private float cornersRadius;
    private Paint paint = new Paint(1);
    private Path path = new Path();
    private RectF rect;
    private Paint strokePaint;
    private Path strokePath;
    private float strokeWidth;

    public int getOpacity() {
        return -3;
    }

    Bubble(RectF rectF, ArrowDirection arrowDirection, float f, float f2, float f3, float f4, int i, float f5, int i2) {
        this.rect = rectF;
        this.arrowWidth = f;
        this.arrowHeight = f2;
        this.arrowPosition = f3;
        this.cornersRadius = f4;
        this.paint.setColor(i);
        this.strokeWidth = f5;
        if (f5 > 0.0f) {
            this.strokePaint = new Paint(1);
            this.strokePaint.setColor(i2);
            this.strokePath = new Path();
            initPath(arrowDirection, this.path, f5);
            initPath(arrowDirection, this.strokePath, 0.0f);
            return;
        }
        initPath(arrowDirection, this.path, 0.0f);
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect2) {
        super.onBoundsChange(rect2);
    }

    public void draw(Canvas canvas) {
        if (this.strokeWidth > 0.0f) {
            canvas.drawPath(this.strokePath, this.strokePaint);
        }
        canvas.drawPath(this.path, this.paint);
    }

    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public int getIntrinsicWidth() {
        return (int) this.rect.width();
    }

    public int getIntrinsicHeight() {
        return (int) this.rect.height();
    }

    private void initPath(ArrowDirection arrowDirection, Path path2, float f) {
        int value = arrowDirection.getValue();
        if (value == 0) {
            float f2 = this.cornersRadius;
            if (f2 <= 0.0f) {
                initLeftSquarePath(this.rect, path2, f);
            } else if (f <= 0.0f || f <= f2) {
                initLeftRoundedPath(this.rect, path2, f);
            } else {
                initLeftSquarePath(this.rect, path2, f);
            }
        } else if (value == 1) {
            float f3 = this.cornersRadius;
            if (f3 <= 0.0f) {
                initRightSquarePath(this.rect, path2, f);
            } else if (f <= 0.0f || f <= f3) {
                initRightRoundedPath(this.rect, path2, f);
            } else {
                initRightSquarePath(this.rect, path2, f);
            }
        } else if (value != 2) {
            if (value == 3) {
                float f4 = this.cornersRadius;
                if (f4 <= 0.0f) {
                    initBottomSquarePath(this.rect, path2, f);
                } else if (f <= 0.0f || f <= f4) {
                    initBottomRoundedPath(this.rect, path2, f);
                } else {
                    initBottomSquarePath(this.rect, path2, f);
                }
            }
        } else {
            float f5 = this.cornersRadius;
            if (f5 <= 0.0f) {
                initTopSquarePath(this.rect, path2, f);
            } else if (f <= 0.0f || f <= f5) {
                initTopRoundedPath(this.rect, path2, f);
            } else {
                initTopSquarePath(this.rect, path2, f);
            }
        }
    }

    private void initLeftSquarePath(RectF rectF, Path path2, float f) {
        path2.moveTo(this.arrowWidth + rectF.left + f, rectF.top + f);
        path2.lineTo(rectF.width() - f, rectF.top + f);
        path2.lineTo(rectF.right - f, rectF.bottom - f);
        path2.lineTo(rectF.left + this.arrowWidth + f, rectF.bottom - f);
        float f2 = f / 2.0f;
        path2.lineTo(rectF.left + this.arrowWidth + f, (this.arrowHeight + this.arrowPosition) - f2);
        path2.lineTo(rectF.left + f + f, this.arrowPosition + (this.arrowHeight / 2.0f));
        path2.lineTo(rectF.left + this.arrowWidth + f, this.arrowPosition + f2);
        path2.lineTo(rectF.left + this.arrowWidth + f, rectF.top + f);
        path2.close();
    }

    private void initLeftRoundedPath(RectF rectF, Path path2, float f) {
        path2.moveTo(this.arrowWidth + rectF.left + this.cornersRadius + f, rectF.top + f);
        path2.lineTo((rectF.width() - this.cornersRadius) - f, rectF.top + f);
        path2.arcTo(new RectF(rectF.right - this.cornersRadius, rectF.top + f, rectF.right - f, this.cornersRadius + rectF.top), 270.0f, 90.0f);
        path2.lineTo(rectF.right - f, (rectF.bottom - this.cornersRadius) - f);
        path2.arcTo(new RectF(rectF.right - this.cornersRadius, rectF.bottom - this.cornersRadius, rectF.right - f, rectF.bottom - f), 0.0f, 90.0f);
        path2.lineTo(rectF.left + this.arrowWidth + this.cornersRadius + f, rectF.bottom - f);
        float f2 = rectF.bottom;
        float f3 = this.cornersRadius;
        path2.arcTo(new RectF(rectF.left + this.arrowWidth + f, f2 - f3, f3 + rectF.left + this.arrowWidth, rectF.bottom - f), 90.0f, 90.0f);
        float f4 = f / 2.0f;
        path2.lineTo(rectF.left + this.arrowWidth + f, (this.arrowHeight + this.arrowPosition) - f4);
        path2.lineTo(rectF.left + f + f, this.arrowPosition + (this.arrowHeight / 2.0f));
        path2.lineTo(rectF.left + this.arrowWidth + f, this.arrowPosition + f4);
        path2.lineTo(rectF.left + this.arrowWidth + f, rectF.top + this.cornersRadius + f);
        path2.arcTo(new RectF(rectF.left + this.arrowWidth + f, rectF.top + f, this.cornersRadius + rectF.left + this.arrowWidth, this.cornersRadius + rectF.top), 180.0f, 90.0f);
        path2.close();
    }

    private void initTopSquarePath(RectF rectF, Path path2, float f) {
        path2.moveTo(rectF.left + this.arrowPosition + f, rectF.top + this.arrowHeight + f);
        float f2 = f / 2.0f;
        path2.lineTo(rectF.left + this.arrowPosition + f2, rectF.top + this.arrowHeight + f);
        path2.lineTo(rectF.left + (this.arrowWidth / 2.0f) + this.arrowPosition, rectF.top + f + f);
        path2.lineTo(((rectF.left + this.arrowWidth) + this.arrowPosition) - f2, rectF.top + this.arrowHeight + f);
        path2.lineTo(rectF.right - f, rectF.top + this.arrowHeight + f);
        path2.lineTo(rectF.right - f, rectF.bottom - f);
        path2.lineTo(rectF.left + f, rectF.bottom - f);
        path2.lineTo(rectF.left + f, rectF.top + this.arrowHeight + f);
        path2.lineTo(rectF.left + this.arrowPosition + f, rectF.top + this.arrowHeight + f);
        path2.close();
    }

    private void initTopRoundedPath(RectF rectF, Path path2, float f) {
        path2.moveTo(rectF.left + Math.min(this.arrowPosition, this.cornersRadius) + f, rectF.top + this.arrowHeight + f);
        float f2 = f / 2.0f;
        path2.lineTo(rectF.left + this.arrowPosition + f2, rectF.top + this.arrowHeight + f);
        path2.lineTo(rectF.left + (this.arrowWidth / 2.0f) + this.arrowPosition, rectF.top + f + f);
        path2.lineTo(((rectF.left + this.arrowWidth) + this.arrowPosition) - f2, rectF.top + this.arrowHeight + f);
        path2.lineTo((rectF.right - this.cornersRadius) - f, rectF.top + this.arrowHeight + f);
        path2.arcTo(new RectF(rectF.right - this.cornersRadius, rectF.top + this.arrowHeight + f, rectF.right - f, this.cornersRadius + rectF.top + this.arrowHeight), 270.0f, 90.0f);
        path2.lineTo(rectF.right - f, (rectF.bottom - this.cornersRadius) - f);
        path2.arcTo(new RectF(rectF.right - this.cornersRadius, rectF.bottom - this.cornersRadius, rectF.right - f, rectF.bottom - f), 0.0f, 90.0f);
        path2.lineTo(rectF.left + this.cornersRadius + f, rectF.bottom - f);
        float f3 = rectF.bottom;
        float f4 = this.cornersRadius;
        path2.arcTo(new RectF(rectF.left + f, f3 - f4, f4 + rectF.left, rectF.bottom - f), 90.0f, 90.0f);
        path2.lineTo(rectF.left + f, rectF.top + this.arrowHeight + this.cornersRadius + f);
        path2.arcTo(new RectF(rectF.left + f, rectF.top + this.arrowHeight + f, this.cornersRadius + rectF.left, this.cornersRadius + rectF.top + this.arrowHeight), 180.0f, 90.0f);
        path2.close();
    }

    private void initRightSquarePath(RectF rectF, Path path2, float f) {
        path2.moveTo(rectF.left + f, rectF.top + f);
        path2.lineTo((rectF.width() - this.arrowWidth) - f, rectF.top + f);
        float f2 = f / 2.0f;
        path2.lineTo((rectF.right - this.arrowWidth) - f, this.arrowPosition + f2);
        path2.lineTo((rectF.right - f) - f, this.arrowPosition + (this.arrowHeight / 2.0f));
        path2.lineTo((rectF.right - this.arrowWidth) - f, (this.arrowPosition + this.arrowHeight) - f2);
        path2.lineTo((rectF.right - this.arrowWidth) - f, rectF.bottom - f);
        path2.lineTo(rectF.left + f, rectF.bottom - f);
        path2.lineTo(rectF.left + f, rectF.top + f);
        path2.close();
    }

    private void initRightRoundedPath(RectF rectF, Path path2, float f) {
        path2.moveTo(rectF.left + this.cornersRadius + f, rectF.top + f);
        path2.lineTo(((rectF.width() - this.cornersRadius) - this.arrowWidth) - f, rectF.top + f);
        path2.arcTo(new RectF((rectF.right - this.cornersRadius) - this.arrowWidth, rectF.top + f, (rectF.right - this.arrowWidth) - f, this.cornersRadius + rectF.top), 270.0f, 90.0f);
        float f2 = f / 2.0f;
        path2.lineTo((rectF.right - this.arrowWidth) - f, this.arrowPosition + f2);
        path2.lineTo((rectF.right - f) - f, this.arrowPosition + (this.arrowHeight / 2.0f));
        path2.lineTo((rectF.right - this.arrowWidth) - f, (this.arrowPosition + this.arrowHeight) - f2);
        path2.lineTo((rectF.right - this.arrowWidth) - f, (rectF.bottom - this.cornersRadius) - f);
        path2.arcTo(new RectF((rectF.right - this.cornersRadius) - this.arrowWidth, rectF.bottom - this.cornersRadius, (rectF.right - this.arrowWidth) - f, rectF.bottom - f), 0.0f, 90.0f);
        path2.lineTo(rectF.left + this.arrowWidth + f, rectF.bottom - f);
        float f3 = rectF.bottom;
        float f4 = this.cornersRadius;
        path2.arcTo(new RectF(rectF.left + f, f3 - f4, f4 + rectF.left, rectF.bottom - f), 90.0f, 90.0f);
        path2.arcTo(new RectF(rectF.left + f, rectF.top + f, this.cornersRadius + rectF.left, this.cornersRadius + rectF.top), 180.0f, 90.0f);
        path2.close();
    }

    private void initBottomSquarePath(RectF rectF, Path path2, float f) {
        path2.moveTo(rectF.left + f, rectF.top + f);
        path2.lineTo(rectF.right - f, rectF.top + f);
        path2.lineTo(rectF.right - f, (rectF.bottom - this.arrowHeight) - f);
        float f2 = f / 2.0f;
        path2.lineTo(((rectF.left + this.arrowWidth) + this.arrowPosition) - f2, (rectF.bottom - this.arrowHeight) - f);
        path2.lineTo(rectF.left + this.arrowPosition + (this.arrowWidth / 2.0f), (rectF.bottom - f) - f);
        path2.lineTo(rectF.left + this.arrowPosition + f2, (rectF.bottom - this.arrowHeight) - f);
        path2.lineTo(rectF.left + this.arrowPosition + f, (rectF.bottom - this.arrowHeight) - f);
        path2.lineTo(rectF.left + f, (rectF.bottom - this.arrowHeight) - f);
        path2.lineTo(rectF.left + f, rectF.top + f);
        path2.close();
    }

    private void initBottomRoundedPath(RectF rectF, Path path2, float f) {
        path2.moveTo(rectF.left + this.cornersRadius + f, rectF.top + f);
        path2.lineTo((rectF.width() - this.cornersRadius) - f, rectF.top + f);
        path2.arcTo(new RectF(rectF.right - this.cornersRadius, rectF.top + f, rectF.right - f, this.cornersRadius + rectF.top), 270.0f, 90.0f);
        path2.lineTo(rectF.right - f, ((rectF.bottom - this.arrowHeight) - this.cornersRadius) - f);
        path2.arcTo(new RectF(rectF.right - this.cornersRadius, (rectF.bottom - this.cornersRadius) - this.arrowHeight, rectF.right - f, (rectF.bottom - this.arrowHeight) - f), 0.0f, 90.0f);
        float f2 = f / 2.0f;
        path2.lineTo(((rectF.left + this.arrowWidth) + this.arrowPosition) - f2, (rectF.bottom - this.arrowHeight) - f);
        path2.lineTo(rectF.left + this.arrowPosition + (this.arrowWidth / 2.0f), (rectF.bottom - f) - f);
        path2.lineTo(rectF.left + this.arrowPosition + f2, (rectF.bottom - this.arrowHeight) - f);
        path2.lineTo(rectF.left + Math.min(this.cornersRadius, this.arrowPosition) + f, (rectF.bottom - this.arrowHeight) - f);
        float f3 = rectF.bottom;
        float f4 = this.cornersRadius;
        path2.arcTo(new RectF(rectF.left + f, (f3 - f4) - this.arrowHeight, f4 + rectF.left, (rectF.bottom - this.arrowHeight) - f), 90.0f, 90.0f);
        path2.lineTo(rectF.left + f, rectF.top + this.cornersRadius + f);
        path2.arcTo(new RectF(rectF.left + f, rectF.top + f, this.cornersRadius + rectF.left, this.cornersRadius + rectF.top), 180.0f, 90.0f);
        path2.close();
    }
}
