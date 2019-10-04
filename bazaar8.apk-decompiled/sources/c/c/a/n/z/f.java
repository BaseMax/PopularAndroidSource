package c.c.a.n.z;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.ui.subscription.SubscriptionFragment;

/* compiled from: SubscriptionFragment.kt */
final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SubscriptionFragment f7106a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SubscriptionItem f7107b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f7108c;

    public f(SubscriptionFragment subscriptionFragment, SubscriptionItem subscriptionItem, PopupWindow popupWindow) {
        this.f7106a = subscriptionFragment;
        this.f7107b = subscriptionItem;
        this.f7108c = popupWindow;
    }

    public final void onClick(View view) {
        this.f7106a.a(this.f7107b);
        this.f7108c.dismiss();
    }
}
