package f.a.a.e.b.b;

import android.widget.RatingBar;

/* compiled from: RatingInputInflater */
class E implements RatingBar.OnRatingBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ F f14123a;

    public E(F f2) {
        this.f14123a = f2;
    }

    public void onRatingChanged(RatingBar ratingBar, float f2, boolean z) {
        if (f2 < F.f14125h.floatValue()) {
            ratingBar.setRating(F.f14125h.floatValue());
        }
    }
}
