package com.github.ybq.android.spinkit.b;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.github.ybq.android.spinkit.a.a;
import com.github.ybq.android.spinkit.a.b;
import com.github.ybq.android.spinkit.a.c;

public abstract class f extends Drawable implements ValueAnimator.AnimatorUpdateListener, Animatable, Drawable.Callback {
    public static final Property<f, Integer> ALPHA = new c<f>("alpha") {
        public final void setValue(f fVar, int i) {
            fVar.setAlpha(i);
        }

        public final Integer get(f fVar) {
            return Integer.valueOf(fVar.getAlpha());
        }
    };
    public static final Property<f, Integer> ROTATE = new c<f>("rotate") {
        public final void setValue(f fVar, int i) {
            fVar.setRotate(i);
        }

        public final Integer get(f fVar) {
            return Integer.valueOf(fVar.getRotate());
        }
    };
    public static final Property<f, Integer> ROTATE_X = new c<f>("rotateX") {
        public final void setValue(f fVar, int i) {
            fVar.setRotateX(i);
        }

        public final Integer get(f fVar) {
            return Integer.valueOf(fVar.getRotateX());
        }
    };
    public static final Property<f, Integer> ROTATE_Y = new c<f>("rotateY") {
        public final void setValue(f fVar, int i) {
            fVar.setRotateY(i);
        }

        public final Integer get(f fVar) {
            return Integer.valueOf(fVar.getRotateY());
        }
    };
    public static final Property<f, Float> SCALE = new b<f>("scale") {
        public final void setValue(f fVar, float f) {
            fVar.setScale(f);
        }

        public final Float get(f fVar) {
            return Float.valueOf(fVar.getScale());
        }
    };
    public static final Property<f, Float> SCALE_X = new b<f>("scaleX") {
        public final void setValue(f fVar, float f) {
            fVar.setScaleX(f);
        }

        public final Float get(f fVar) {
            return Float.valueOf(fVar.getScaleX());
        }
    };
    public static final Property<f, Float> SCALE_Y = new b<f>("scaleY") {
        public final void setValue(f fVar, float f) {
            fVar.setScaleY(f);
        }

        public final Float get(f fVar) {
            return Float.valueOf(fVar.getScaleY());
        }
    };
    public static final Property<f, Integer> TRANSLATE_X = new c<f>("translateX") {
        public final void setValue(f fVar, int i) {
            fVar.setTranslateX(i);
        }

        public final Integer get(f fVar) {
            return Integer.valueOf(fVar.getTranslateX());
        }
    };
    public static final Property<f, Float> TRANSLATE_X_PERCENTAGE = new b<f>("translateXPercentage") {
        public final void setValue(f fVar, float f) {
            fVar.setTranslateXPercentage(f);
        }

        public final Float get(f fVar) {
            return Float.valueOf(fVar.getTranslateXPercentage());
        }
    };
    public static final Property<f, Integer> TRANSLATE_Y = new c<f>("translateY") {
        public final void setValue(f fVar, int i) {
            fVar.setTranslateY(i);
        }

        public final Integer get(f fVar) {
            return Integer.valueOf(fVar.getTranslateY());
        }
    };
    public static final Property<f, Float> TRANSLATE_Y_PERCENTAGE = new b<f>("translateYPercentage") {
        public final void setValue(f fVar, float f) {
            fVar.setTranslateYPercentage(f);
        }

        public final Float get(f fVar) {
            return Float.valueOf(fVar.getTranslateYPercentage());
        }
    };
    private static final Rect q = new Rect();

    /* renamed from: a  reason: collision with root package name */
    protected Rect f2530a = q;

    /* renamed from: b  reason: collision with root package name */
    private float f2531b = 1.0f;
    private float c = 1.0f;
    private float d = 1.0f;
    private float e;
    private float f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private float m;
    private float n;
    private ValueAnimator o;
    private int p = 255;
    private Camera r = new Camera();
    private Matrix s = new Matrix();

    /* access modifiers changed from: protected */
    public abstract void a(Canvas canvas);

    public abstract int getColor();

    public int getOpacity() {
        return -3;
    }

    public abstract ValueAnimator onCreateAnimation();

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
    }

    public abstract void setColor(int i2);

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
    }

    public void setAlpha(int i2) {
        this.p = i2;
    }

    public int getAlpha() {
        return this.p;
    }

    public float getTranslateXPercentage() {
        return this.m;
    }

    public void setTranslateXPercentage(float f2) {
        this.m = f2;
    }

    public float getTranslateYPercentage() {
        return this.n;
    }

    public void setTranslateYPercentage(float f2) {
        this.n = f2;
    }

    public int getTranslateX() {
        return this.j;
    }

    public void setTranslateX(int i2) {
        this.j = i2;
    }

    public int getTranslateY() {
        return this.k;
    }

    public void setTranslateY(int i2) {
        this.k = i2;
    }

    public int getRotate() {
        return this.l;
    }

    public void setRotate(int i2) {
        this.l = i2;
    }

    public float getScale() {
        return this.f2531b;
    }

    public void setScale(float f2) {
        this.f2531b = f2;
        setScaleX(f2);
        setScaleY(f2);
    }

    public float getScaleX() {
        return this.c;
    }

    public void setScaleX(float f2) {
        this.c = f2;
    }

    public float getScaleY() {
        return this.d;
    }

    public void setScaleY(float f2) {
        this.d = f2;
    }

    public int getRotateX() {
        return this.h;
    }

    public void setRotateX(int i2) {
        this.h = i2;
    }

    public int getRotateY() {
        return this.i;
    }

    public void setRotateY(int i2) {
        this.i = i2;
    }

    public float getPivotX() {
        return this.e;
    }

    public void setPivotX(float f2) {
        this.e = f2;
    }

    public float getPivotY() {
        return this.f;
    }

    public void setPivotY(float f2) {
        this.f = f2;
    }

    public int getAnimationDelay() {
        return this.g;
    }

    public f setAnimationDelay(int i2) {
        this.g = i2;
        return this;
    }

    public void start() {
        if (!a.isStarted(this.o)) {
            this.o = obtainAnimation();
            ValueAnimator valueAnimator = this.o;
            if (valueAnimator != null) {
                a.start((Animator) valueAnimator);
                invalidateSelf();
            }
        }
    }

    public ValueAnimator obtainAnimation() {
        if (this.o == null) {
            this.o = onCreateAnimation();
        }
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.addUpdateListener(this);
            this.o.setStartDelay((long) this.g);
        }
        return this.o;
    }

    public void stop() {
        if (a.isStarted(this.o)) {
            this.o.removeAllUpdateListeners();
            this.o.end();
            reset();
        }
    }

    public void reset() {
        this.f2531b = 1.0f;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 0.0f;
        this.n = 0.0f;
    }

    public boolean isRunning() {
        return a.isRunning(this.o);
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setDrawBounds(rect);
    }

    public void setDrawBounds(Rect rect) {
        setDrawBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setDrawBounds(int i2, int i3, int i4, int i5) {
        this.f2530a = new Rect(i2, i3, i4, i5);
        setPivotX((float) getDrawBounds().centerX());
        setPivotY((float) getDrawBounds().centerY());
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public Rect getDrawBounds() {
        return this.f2530a;
    }

    public void draw(Canvas canvas) {
        int translateX = getTranslateX();
        if (translateX == 0) {
            translateX = (int) (((float) getBounds().width()) * getTranslateXPercentage());
        }
        int translateY = getTranslateY();
        if (translateY == 0) {
            translateY = (int) (((float) getBounds().height()) * getTranslateYPercentage());
        }
        canvas.translate((float) translateX, (float) translateY);
        canvas.scale(getScaleX(), getScaleY(), getPivotX(), getPivotY());
        canvas.rotate((float) getRotate(), getPivotX(), getPivotY());
        if (!(getRotateX() == 0 && getRotateY() == 0)) {
            this.r.save();
            this.r.rotateX((float) getRotateX());
            this.r.rotateY((float) getRotateY());
            this.r.getMatrix(this.s);
            this.s.preTranslate(-getPivotX(), -getPivotY());
            this.s.postTranslate(getPivotX(), getPivotY());
            this.r.restore();
            canvas.concat(this.s);
        }
        a(canvas);
    }

    public Rect clipSquare(Rect rect) {
        int min = Math.min(rect.width(), rect.height());
        int centerX = rect.centerX();
        int centerY = rect.centerY();
        int i2 = min / 2;
        return new Rect(centerX - i2, centerY - i2, centerX + i2, centerY + i2);
    }
}
