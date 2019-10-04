package c.c.a.b.d;

import b.c.a.c.a;
import c.c.a.e.d.m.a.e;
import h.a.m;
import h.a.u;
import h.f.b.j;
import java.util.ArrayList;
import java.util.Set;

/* compiled from: PaymentManager.kt */
final class l<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m f4598a;

    public l(m mVar) {
        this.f4598a = mVar;
    }

    /* renamed from: a */
    public final Set<String> apply(Set<e> set) {
        j.a((Object) set, "cache");
        ArrayList<e> arrayList = new ArrayList<>();
        for (T next : set) {
            if (this.f4598a.b((e) next)) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(m.a(arrayList, 10));
        for (e a2 : arrayList) {
            arrayList2.add(a2.a());
        }
        return u.k(arrayList2);
    }
}
