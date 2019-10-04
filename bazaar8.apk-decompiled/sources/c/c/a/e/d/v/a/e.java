package c.c.a.e.d.v.a;

import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.common.model.subscription.SubscriptionStatusChoices;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: SubscriptionRemoteDataSource.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final a f5427a;

    public e(a aVar) {
        j.b(aVar, "subscriptionService");
        this.f5427a = aVar;
    }

    public final Object a(b<? super Either<? extends List<SubscriptionItem>>> bVar) {
        return c.c.a.e.c.b.a(this.f5427a.a(new g()), SubscriptionRemoteDataSource$getAppSubscription$2.f12290a, bVar);
    }

    public final Object a(String str, String str2, b<? super Either<? extends SubscriptionStatusChoices>> bVar) {
        return c.c.a.e.c.b.a(this.f5427a.a(new b(str, str2)), SubscriptionRemoteDataSource$cancelAppSubscription$2.f12289a, bVar);
    }
}
