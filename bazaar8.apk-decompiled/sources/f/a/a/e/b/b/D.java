package f.a.a.e.b.b;

import android.view.MotionEvent;
import android.view.View;
import android.widget.RatingBar;

/* compiled from: RatingInputInflater */
class D implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RatingBar f14121a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ F f14122b;

    public D(F f2, RatingBar ratingBar) {
        this.f14122b = f2;
        this.f14121a = ratingBar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f14121a.getRating() < F.f14125h.floatValue()) {
            this.f14121a.setRating(F.f14125h.floatValue());
        }
        return false;
    }
}
