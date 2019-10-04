package c.c.a.n.u.b;

import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.RatingBar;
import c.c.a.d.b.l;
import com.farsitel.bazaar.R;
import h.f.b.j;

/* compiled from: PostCommentWithRateFragment.kt */
public abstract class g<T> extends a<T> {
    public RatingBar Fa;
    public int Ga;

    public void b(View view) {
        j.b(view, "view");
        super.b(view);
        View findViewById = view.findViewById(R.id.rbPostComment);
        j.a((Object) findViewById, "view.findViewById(R.id.rbPostComment)");
        this.Fa = (RatingBar) findViewById;
        RatingBar ratingBar = this.Fa;
        if (ratingBar != null) {
            l.c(ratingBar);
        } else {
            j.c("ratingBar");
            throw null;
        }
    }

    public void ib() {
        this.Ga = eb().getText().toString().length() == 0 ? R.string.submitted_rate : R.string.submitted_to_approve;
    }

    public final int nb() {
        return this.Ga;
    }

    public final RatingBar ob() {
        RatingBar ratingBar = this.Fa;
        if (ratingBar != null) {
            return ratingBar;
        }
        j.c("ratingBar");
        throw null;
    }

    public boolean pb() {
        RatingBar ratingBar = this.Fa;
        if (ratingBar != null) {
            return ratingBar.getRating() > ((float) 0);
        }
        j.c("ratingBar");
        throw null;
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public final void qb() {
        RatingBar ratingBar = this.Fa;
        if (ratingBar == null) {
            j.c("ratingBar");
            throw null;
        } else if (((int) ratingBar.getRating()) == 0) {
            RatingBar ratingBar2 = this.Fa;
            if (ratingBar2 != null) {
                ratingBar2.startAnimation(AnimationUtils.loadAnimation(Ha(), R.anim.wrong_field));
            } else {
                j.c("ratingBar");
                throw null;
            }
        }
    }
}
