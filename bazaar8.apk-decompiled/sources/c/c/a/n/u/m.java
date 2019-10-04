package c.c.a.n.u;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;

/* compiled from: ReviewsFragment.kt */
final class m implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f7005a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ReviewItem f7006b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f7007c;

    public m(ReviewsFragment reviewsFragment, ReviewItem reviewItem, PopupWindow popupWindow) {
        this.f7005a = reviewsFragment;
        this.f7006b = reviewItem;
        this.f7007c = popupWindow;
    }

    public final void onClick(View view) {
        this.f7005a.a(this.f7006b.getId(), false);
        this.f7007c.dismiss();
    }
}
