package c.c.a.e.d.f.a;

import c.c.a.c.b.i;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.data.entity.Either;
import h.f.b.j;
import java.util.List;

/* compiled from: BoughtVideoRemoteDataSource.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final e f5071a;

    public b(e eVar) {
        j.b(eVar, "boughtVideoService");
        this.f5071a = eVar;
    }

    public final Object a(int i2, String str, h.c.b<? super Either<? extends List<? extends PageTypeItem>>> bVar) {
        e eVar = this.f5071a;
        d dVar = new d(i2, null, i.g(str), 2, null);
        return c.c.a.e.c.b.a(eVar.a(dVar), BoughtVideoRemoteDataSource$getBoughtVideos$2.f12220a, bVar);
    }
}
