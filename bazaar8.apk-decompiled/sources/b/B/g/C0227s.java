package b.b.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import b.b.a;

/* renamed from: b.b.g.s  reason: case insensitive filesystem */
/* compiled from: AppCompatRatingBar */
public class C0227s extends RatingBar {

    /* renamed from: a  reason: collision with root package name */
    public final r f2233a;

    public C0227s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.ratingBarStyle);
    }

    public synchronized void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        Bitmap b2 = this.f2233a.b();
        if (b2 != null) {
            setMeasuredDimension(View.resolveSizeAndState(b2.getWidth() * getNumStars(), i2, 0), getMeasuredHeight());
        }
    }

    public C0227s(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2233a = new r(this);
        this.f2233a.a(attributeSet, i2);
    }
}
