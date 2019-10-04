package c.c.a.n.z;

import c.c.a.d.f.r;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.subscription.SubscriptionFragment;
import h.f.b.j;

/* compiled from: SubscriptionFragment.kt */
public final class e implements r<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SubscriptionFragment f7104a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SubscriptionItem f7105b;

    public e(SubscriptionFragment subscriptionFragment, SubscriptionItem subscriptionItem) {
        this.f7104a = subscriptionFragment;
        this.f7105b = subscriptionItem;
    }

    public void onCancel() {
        r.a.a(this);
    }

    public void a() {
        r.a.b(this);
    }

    public void a(None none) {
        j.b(none, "result");
        SubscriptionFragment.c(this.f7104a).b(this.f7105b);
    }
}
