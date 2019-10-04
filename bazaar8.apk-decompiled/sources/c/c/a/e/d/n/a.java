package c.c.a.e.d.n;

import c.c.a.e.d.n.a.f;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PlayedVideoRepository.kt */
final class a<I, O> implements b.c.a.c.a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5295a = new a();

    /* renamed from: a */
    public final List<ListItem> apply(List<f> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (f l2 : list) {
            arrayList.add(l2.l());
        }
        return arrayList;
    }
}
