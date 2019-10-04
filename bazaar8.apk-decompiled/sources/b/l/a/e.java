package b.l.a;

import android.widget.RatingBar;
import b.l.h;

/* compiled from: RatingBarBindingAdapter */
public class e {
    public static void a(RatingBar ratingBar, float f2) {
        if (ratingBar.getRating() != f2) {
            ratingBar.setRating(f2);
        }
    }

    public static void a(RatingBar ratingBar, RatingBar.OnRatingBarChangeListener onRatingBarChangeListener, h hVar) {
        if (hVar == null) {
            ratingBar.setOnRatingBarChangeListener(onRatingBarChangeListener);
        } else {
            ratingBar.setOnRatingBarChangeListener(new d(onRatingBarChangeListener, hVar));
        }
    }
}
