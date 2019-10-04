package c.c.a.n.z;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.e.d.v.a;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.common.model.subscription.SubscriptionStatusChoices;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import h.a.l;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.List;

/* compiled from: SubscriptionViewModel.kt */
public final class i extends g<RecyclerData, None> {

    /* renamed from: j  reason: collision with root package name */
    public final t<Integer> f7110j = new t<>();

    /* renamed from: k  reason: collision with root package name */
    public final c.c.a.c.h.g<ErrorModel> f7111k = new c.c.a.c.h.g<>();

    /* renamed from: l  reason: collision with root package name */
    public final a f7112l;

    public i(a aVar) {
        j.b(aVar, "subscriptionRepository");
        this.f7112l = aVar;
    }

    public final void b(SubscriptionItem subscriptionItem) {
        j.b(subscriptionItem, "subscriptionItem");
        subscriptionItem.setCancelableLoading(true);
        a(subscriptionItem);
        C1125ra unused = C1103g.b(this, null, null, new SubscriptionViewModel$onCancelSubscriptionClicked$1(this, subscriptionItem, null), 3, null);
    }

    public final LiveData<ErrorModel> j() {
        return this.f7111k;
    }

    public final LiveData<Integer> k() {
        return this.f7110j;
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new SubscriptionViewModel$makeData$1(this, null), 3, null);
    }

    public final void a(SubscriptionItem subscriptionItem, ErrorModel errorModel) {
        subscriptionItem.setCancelableLoading(false);
        a(subscriptionItem);
        this.f7111k.a(errorModel);
    }

    public final void a(SubscriptionItem subscriptionItem, SubscriptionStatusChoices subscriptionStatusChoices) {
        subscriptionItem.setStatus(subscriptionStatusChoices);
        subscriptionItem.setCancelableLoading(false);
        a(subscriptionItem);
    }

    public final void a(SubscriptionItem subscriptionItem) {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        l.b();
                        throw null;
                    } else if (j.a((Object) subscriptionItem, (Object) (RecyclerData) next)) {
                        this.f7110j.b(Integer.valueOf(i2));
                        return;
                    } else {
                        i2 = i3;
                    }
                }
            }
        }
    }
}
