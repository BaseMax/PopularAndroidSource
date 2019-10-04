package c.c.a.e.d.b;

import b.c.a.c.a;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppRepository.kt */
final class aa<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ba f4973a;

    public aa(ba baVar) {
        this.f4973a = baVar;
    }

    /* renamed from: a */
    public final List<ListItem.App> apply(List<MaliciousApp> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (MaliciousApp flatPageItemApp : list) {
            arrayList.add(flatPageItemApp.toFlatPageItemApp(this.f4973a.f4975a));
        }
        return arrayList;
    }
}
