package b.l.a;

import android.widget.RatingBar;
import b.l.h;

/* compiled from: RatingBarBindingAdapter */
class d implements RatingBar.OnRatingBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RatingBar.OnRatingBarChangeListener f2935a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h f2936b;

    public d(RatingBar.OnRatingBarChangeListener onRatingBarChangeListener, h hVar) {
        this.f2935a = onRatingBarChangeListener;
        this.f2936b = hVar;
    }

    public void onRatingChanged(RatingBar ratingBar, float f2, boolean z) {
        RatingBar.OnRatingBarChangeListener onRatingBarChangeListener = this.f2935a;
        if (onRatingBarChangeListener != null) {
            onRatingBarChangeListener.onRatingChanged(ratingBar, f2, z);
        }
        this.f2936b.a();
    }
}
