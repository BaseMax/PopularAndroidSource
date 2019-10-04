package c.c.a.b.d;

import b.c.a.c.a;
import c.c.a.e.d.m.a.e;
import h.f.b.j;
import java.util.Collection;
import java.util.Set;

/* compiled from: PaymentManager.kt */
final class k<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m f4596a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f4597b;

    public k(m mVar, String str) {
        this.f4596a = mVar;
        this.f4597b = str;
    }

    public final boolean a(Set<e> set) {
        boolean z;
        j.a((Object) set, "cache");
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (e eVar : set) {
            if (!this.f4596a.b(eVar) || !this.f4596a.c(eVar) || !this.f4596a.a(eVar, this.f4597b)) {
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
