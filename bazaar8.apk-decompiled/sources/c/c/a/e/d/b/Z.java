package c.c.a.e.d.b;

import b.c.a.c.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppRepository.kt */
final class Z<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final Z f4971a = new Z();

    /* renamed from: a */
    public final List<ListItem.App> apply(List<UpgradableApp> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (UpgradableApp a2 : list) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }
}
