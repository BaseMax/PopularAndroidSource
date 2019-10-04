package c.c.a.e.d.b;

import b.c.a.c.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.LocalDownloadedApp;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.c.a.e.d.b.j  reason: case insensitive filesystem */
/* compiled from: DownloadedAppLocalDataSource.kt */
final class C0380j<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final C0380j f5001a = new C0380j();

    /* renamed from: a */
    public final List<ListItem.App> apply(List<LocalDownloadedApp> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (LocalDownloadedApp a2 : list) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }
}
