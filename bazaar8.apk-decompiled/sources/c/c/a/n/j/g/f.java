package c.c.a.n.j.g;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.cinema.reviews.VideoReviewsFragment;

/* compiled from: VideoReviewsFragment.kt */
final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoReviewsFragment f6570a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ReviewItem f6571b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f6572c;

    public f(VideoReviewsFragment videoReviewsFragment, ReviewItem reviewItem, PopupWindow popupWindow) {
        this.f6570a = videoReviewsFragment;
        this.f6571b = reviewItem;
        this.f6572c = popupWindow;
    }

    public final void onClick(View view) {
        this.f6570a.g(this.f6571b.getId());
        this.f6572c.dismiss();
    }
}
