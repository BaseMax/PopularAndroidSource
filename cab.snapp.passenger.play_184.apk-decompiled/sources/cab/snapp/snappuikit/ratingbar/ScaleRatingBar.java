package cab.snapp.snappuikit.ratingbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import cab.snapp.snappuikit.a;

public class ScaleRatingBar extends AnimationRatingBar {
    public ScaleRatingBar(Context context) {
        super(context);
    }

    public ScaleRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScaleRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public final void a(float f) {
        if (this.f1642b != null) {
            this.f1641a.removeCallbacksAndMessages(this.c);
        }
        for (final PartialView partialView : this.d) {
            final int intValue = ((Integer) partialView.getTag()).intValue();
            final double ceil = Math.ceil((double) f);
            if (((double) intValue) > ceil) {
                partialView.setEmpty();
            } else {
                final float f2 = f;
                AnonymousClass1 r2 = new Runnable() {
                    public final void run() {
                        if (((double) intValue) == ceil) {
                            partialView.setPartialFilled(f2);
                        } else {
                            partialView.setFilled();
                        }
                        if (((float) intValue) == f2) {
                            Animation loadAnimation = AnimationUtils.loadAnimation(ScaleRatingBar.this.getContext(), a.C0028a.anim_rating_star_scale_up);
                            Animation loadAnimation2 = AnimationUtils.loadAnimation(ScaleRatingBar.this.getContext(), a.C0028a.anim_rating_star_scale_down);
                            partialView.startAnimation(loadAnimation);
                            partialView.startAnimation(loadAnimation2);
                        }
                    }
                };
                this.f1642b = r2;
                a(this.f1642b);
            }
        }
    }
}
