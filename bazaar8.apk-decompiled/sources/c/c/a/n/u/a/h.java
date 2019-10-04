package c.c.a.n.u.a;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.reviews.ReplyReviewItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyFragment;

/* compiled from: DeveloperReplyFragment.kt */
final class h implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeveloperReplyFragment f6975a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ReviewItem f6976b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f6977c;

    public h(DeveloperReplyFragment developerReplyFragment, ReviewItem reviewItem, PopupWindow popupWindow) {
        this.f6975a = developerReplyFragment;
        this.f6976b = reviewItem;
        this.f6977c = popupWindow;
    }

    public final void onClick(View view) {
        ReplyReviewItem replyItem = this.f6976b.getReplyItem();
        if (replyItem != null) {
            this.f6975a.a(replyItem.getId(), true);
        }
        this.f6977c.dismiss();
    }
}
