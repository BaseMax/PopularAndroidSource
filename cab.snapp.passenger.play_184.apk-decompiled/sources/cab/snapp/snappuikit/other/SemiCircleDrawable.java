package cab.snapp.snappuikit.other;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class SemiCircleDrawable extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private Paint f1639a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f1640b;
    private int c;
    private Direction d;

    public enum Direction {
        LEFT,
        RIGHT,
        TOP,
        BOTTOM
    }

    public final int getOpacity() {
        return 0;
    }

    public final void setAlpha(int i) {
    }

    public final void setColorFilter(ColorFilter colorFilter) {
    }

    public SemiCircleDrawable() {
        this(-16776961, Direction.LEFT);
    }

    public SemiCircleDrawable(int i, Direction direction) {
        this.c = i;
        this.d = direction;
        this.f1639a = new Paint();
        this.f1639a.setColor(i);
        this.f1639a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f1639a.setAntiAlias(true);
        this.f1639a.setDither(true);
        this.f1639a.setStrokeWidth(5.0f);
        this.f1640b = new RectF();
    }

    public final int getColor() {
        return this.c;
    }

    public final void setColor(int i) {
        this.c = i;
        this.f1639a.setColor(i);
    }

    public final void draw(Canvas canvas) {
        canvas.save();
        Rect bounds = getBounds();
        if (this.d == Direction.LEFT || this.d == Direction.RIGHT) {
            canvas.scale(2.0f, 1.0f);
            if (this.d == Direction.RIGHT) {
                canvas.translate((float) (-(bounds.right / 2)), 0.0f);
            }
        } else {
            canvas.scale(1.0f, 2.0f);
            if (this.d == Direction.BOTTOM) {
                canvas.translate(0.0f, (float) (-(bounds.bottom / 2)));
            }
        }
        this.f1640b.set(bounds);
        if (this.d == Direction.LEFT) {
            canvas.drawArc(this.f1640b, 90.0f, 180.0f, true, this.f1639a);
        } else if (this.d == Direction.TOP) {
            canvas.drawArc(this.f1640b, -180.0f, 180.0f, true, this.f1639a);
        } else if (this.d == Direction.RIGHT) {
            canvas.drawArc(this.f1640b, 270.0f, 180.0f, true, this.f1639a);
        } else {
            if (this.d == Direction.BOTTOM) {
                canvas.drawArc(this.f1640b, 0.0f, 180.0f, true, this.f1639a);
            }
        }
    }

    public final Paint getPaint() {
        return this.f1639a;
    }
}
