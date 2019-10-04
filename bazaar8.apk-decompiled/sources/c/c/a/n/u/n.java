package c.c.a.n.u;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.reviews.ReplyReviewItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;

/* compiled from: ReviewsFragment.kt */
final class n implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f7008a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ReviewItem f7009b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f7010c;

    public n(ReviewsFragment reviewsFragment, ReviewItem reviewItem, PopupWindow popupWindow) {
        this.f7008a = reviewsFragment;
        this.f7009b = reviewItem;
        this.f7010c = popupWindow;
    }

    public final void onClick(View view) {
        ReplyReviewItem replyItem = this.f7009b.getReplyItem();
        if (replyItem != null) {
            this.f7008a.a(replyItem.getId(), true);
        }
        this.f7010c.dismiss();
    }
}
