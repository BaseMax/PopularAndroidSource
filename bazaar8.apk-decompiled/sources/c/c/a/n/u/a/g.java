package c.c.a.n.u.a;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyFragment;

/* compiled from: DeveloperReplyFragment.kt */
final class g implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeveloperReplyFragment f6972a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ReviewItem f6973b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f6974c;

    public g(DeveloperReplyFragment developerReplyFragment, ReviewItem reviewItem, PopupWindow popupWindow) {
        this.f6972a = developerReplyFragment;
        this.f6973b = reviewItem;
        this.f6974c = popupWindow;
    }

    public final void onClick(View view) {
        this.f6972a.a(this.f6973b.getId(), false);
        this.f6974c.dismiss();
    }
}
