package c.c.a.n.A;

import b.r.u;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableBadgeViewModel.kt */
final class j<T> implements u<S> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f6164a;

    public j(k kVar) {
        this.f6164a = kVar;
    }

    public final void a(List<UpgradableApp> list) {
        k kVar = this.f6164a;
        int size = list.size();
        h.f.b.j.a((Object) list, "it");
        ArrayList arrayList = new ArrayList();
        for (T next : list) {
            if (!((UpgradableApp) next).isUpdateNotified()) {
                arrayList.add(next);
            }
        }
        kVar.b(size, arrayList.size());
    }
}
