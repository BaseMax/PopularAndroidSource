package c.c.a.e.d.v;

import c.c.a.e.d.v.a.e;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.common.model.subscription.SubscriptionStatusChoices;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: SubscriptionRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5426a;

    public a(e eVar) {
        j.b(eVar, "subscriptionRemoteDataSource");
        this.f5426a = eVar;
    }

    public final Object a(b<? super Either<? extends List<SubscriptionItem>>> bVar) {
        return this.f5426a.a(bVar);
    }

    public final Object a(String str, String str2, b<? super Either<? extends SubscriptionStatusChoices>> bVar) {
        return this.f5426a.a(str, str2, bVar);
    }
}
