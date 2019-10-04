package c.c.a.n.z;

import android.view.View;
import c.c.a.d;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.ui.subscription.SubscriptionFragment;
import h.f.b.j;

/* compiled from: SubscriptionFragment.kt */
public final class g implements b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SubscriptionFragment f7109a;

    public g(SubscriptionFragment subscriptionFragment) {
        this.f7109a = subscriptionFragment;
    }

    public void a(View view, SubscriptionItem subscriptionItem) {
        j.b(view, "view");
        j.b(subscriptionItem, "itemData");
        this.f7109a.a(view, subscriptionItem);
    }

    public void a(SubscriptionItem subscriptionItem) {
        j.b(subscriptionItem, "itemData");
        d.l.a(d.f4738a, subscriptionItem.getProductSku(), "", false, 4, (Object) null);
    }
}
