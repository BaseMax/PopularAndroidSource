package b.g.b;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* compiled from: Placeholder */
public class e extends View {

    /* renamed from: a  reason: collision with root package name */
    public int f2491a;

    /* renamed from: b  reason: collision with root package name */
    public View f2492b;

    /* renamed from: c  reason: collision with root package name */
    public int f2493c;

    public void a(ConstraintLayout constraintLayout) {
        if (this.f2492b != null) {
            ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
            ConstraintLayout.a aVar2 = (ConstraintLayout.a) this.f2492b.getLayoutParams();
            aVar2.la.j(0);
            aVar.la.k(aVar2.la.u());
            aVar.la.c(aVar2.la.j());
            aVar2.la.j(8);
        }
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f2491a == -1 && !isInEditMode()) {
            setVisibility(this.f2493c);
        }
        this.f2492b = constraintLayout.findViewById(this.f2491a);
        View view = this.f2492b;
        if (view != null) {
            ((ConstraintLayout.a) view.getLayoutParams()).aa = true;
            this.f2492b.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f2492b;
    }

    public int getEmptyVisibility() {
        return this.f2493c;
    }

    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize((float) rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((((float) width) / 2.0f) - (((float) rect.width()) / 2.0f)) - ((float) rect.left), ((((float) height) / 2.0f) + (((float) rect.height()) / 2.0f)) - ((float) rect.bottom), paint);
        }
    }

    public void setContentId(int i2) {
        if (this.f2491a != i2) {
            View view = this.f2492b;
            if (view != null) {
                view.setVisibility(0);
                ((ConstraintLayout.a) this.f2492b.getLayoutParams()).aa = false;
                this.f2492b = null;
            }
            this.f2491a = i2;
            if (i2 != -1) {
                View findViewById = ((View) getParent()).findViewById(i2);
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
            }
        }
    }

    public void setEmptyVisibility(int i2) {
        this.f2493c = i2;
    }
}
