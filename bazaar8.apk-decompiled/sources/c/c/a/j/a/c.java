package c.c.a.j.a;

import android.widget.RatingBar;

/* compiled from: OnRatingBarChangeListener */
public final class c implements RatingBar.OnRatingBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final a f6069a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6070b;

    /* compiled from: OnRatingBarChangeListener */
    public interface a {
        void a(int i2, RatingBar ratingBar, float f2, boolean z);
    }

    public c(a aVar, int i2) {
        this.f6069a = aVar;
        this.f6070b = i2;
    }

    public void onRatingChanged(RatingBar ratingBar, float f2, boolean z) {
        this.f6069a.a(this.f6070b, ratingBar, f2, z);
    }
}
