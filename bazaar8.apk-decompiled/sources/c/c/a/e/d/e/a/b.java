package c.c.a.e.d.e.a;

import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.Either;
import h.f.b.j;
import java.util.List;

/* compiled from: BoughtAppRemoteDataSource.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final f f5067a;

    public b(f fVar) {
        j.b(fVar, "boughtAppService");
        this.f5067a = fVar;
    }

    public final Object a(h.c.b<? super Either<? extends List<ListItem.App>>> bVar) {
        return c.c.a.e.c.b.a(this.f5067a.a(new d()), BoughtAppRemoteDataSource$getBoughtApps$2.f12219a, bVar);
    }
}
