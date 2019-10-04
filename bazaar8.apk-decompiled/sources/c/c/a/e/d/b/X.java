package c.c.a.e.d.b;

import b.c.a.c.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppLocalDataSource.kt */
final class X<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final X f4968a = new X();

    /* renamed from: a */
    public final List<UpgradableApp> apply(List<LocalUpgradableApp> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (LocalUpgradableApp a2 : list) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }
}
