package b.e.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import b.e.a.j;

/* compiled from: CardViewBaseImpl */
class e implements j.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f2303a;

    public e(f fVar) {
        this.f2303a = fVar;
    }

    public void a(Canvas canvas, RectF rectF, float f2, Paint paint) {
        Canvas canvas2 = canvas;
        RectF rectF2 = rectF;
        float f3 = 2.0f * f2;
        float width = (rectF.width() - f3) - 1.0f;
        float height = (rectF.height() - f3) - 1.0f;
        if (f2 >= 1.0f) {
            float f4 = f2 + 0.5f;
            float f5 = -f4;
            this.f2303a.f2304a.set(f5, f5, f4, f4);
            int save = canvas.save();
            canvas2.translate(rectF2.left + f4, rectF2.top + f4);
            Paint paint2 = paint;
            canvas.drawArc(this.f2303a.f2304a, 180.0f, 90.0f, true, paint2);
            canvas2.translate(width, 0.0f);
            canvas2.rotate(90.0f);
            canvas.drawArc(this.f2303a.f2304a, 180.0f, 90.0f, true, paint2);
            canvas2.translate(height, 0.0f);
            canvas2.rotate(90.0f);
            canvas.drawArc(this.f2303a.f2304a, 180.0f, 90.0f, true, paint2);
            canvas2.translate(width, 0.0f);
            canvas2.rotate(90.0f);
            canvas.drawArc(this.f2303a.f2304a, 180.0f, 90.0f, true, paint2);
            canvas2.restoreToCount(save);
            float f6 = rectF2.top;
            canvas.drawRect((rectF2.left + f4) - 1.0f, f6, (rectF2.right - f4) + 1.0f, f6 + f4, paint2);
            float f7 = rectF2.bottom;
            Canvas canvas3 = canvas;
            canvas3.drawRect((rectF2.left + f4) - 1.0f, f7 - f4, (rectF2.right - f4) + 1.0f, f7, paint2);
        }
        canvas.drawRect(rectF2.left, rectF2.top + f2, rectF2.right, rectF2.bottom - f2, paint);
    }
}
