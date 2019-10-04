package c.c.a.n.A;

import b.r.u;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableBadgeViewModel.kt */
final class i<T> implements u<S> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f6163a;

    public i(k kVar) {
        this.f6163a = kVar;
    }

    public final void a(List<MaliciousApp> list) {
        k kVar = this.f6163a;
        int size = list.size();
        j.a((Object) list, "it");
        ArrayList arrayList = new ArrayList();
        for (T next : list) {
            if (!((MaliciousApp) next).isNotified()) {
                arrayList.add(next);
            }
        }
        kVar.a(size, arrayList.size());
    }
}
