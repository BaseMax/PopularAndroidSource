package c.c.a.b.d;

import b.c.a.c.a;
import c.c.a.e.d.m.a.e;
import java.util.Collection;
import java.util.Set;

/* compiled from: PaymentManager.kt */
final class j<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m f4594a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f4595b;

    public j(m mVar, String str) {
        this.f4594a = mVar;
        this.f4595b = str;
    }

    public final boolean a(Set<e> set) {
        boolean z;
        h.f.b.j.a((Object) set, "cache");
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (e eVar : set) {
            if (!this.f4594a.b(eVar) || !this.f4594a.a(eVar) || !this.f4594a.a(eVar, this.f4595b)) {
                z = false;
                continue;
            } else {
                z = true;
                continue;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return Boolean.valueOf(a((Set) obj));
    }
}
