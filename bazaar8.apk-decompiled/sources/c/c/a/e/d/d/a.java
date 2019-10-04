package c.c.a.e.d.d;

import c.c.a.e.d.d.a.j;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BookmarkRepository.kt */
final class a<I, O> implements b.c.a.c.a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5034a = new a();

    /* renamed from: a */
    public final List<ListItem.App> apply(List<j> list) {
        h.f.b.j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (j i2 : list) {
            arrayList.add(i2.i());
        }
        return arrayList;
    }
}
