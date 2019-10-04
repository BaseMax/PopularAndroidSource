package c.c.a.p;

import c.c.a.b.f.a.d;
import c.c.a.e.d.b.ba;
import d.b.c;
import g.a.a;

/* compiled from: UpgradableAppsWorker_AssistedFactory_Factory */
public final class H implements c<G> {

    /* renamed from: a  reason: collision with root package name */
    public final a<ba> f7146a;

    /* renamed from: b  reason: collision with root package name */
    public final a<d> f7147b;

    public H(a<ba> aVar, a<d> aVar2) {
        this.f7146a = aVar;
        this.f7147b = aVar2;
    }

    public static H a(a<ba> aVar, a<d> aVar2) {
        return new H(aVar, aVar2);
    }

    public static G b(a<ba> aVar, a<d> aVar2) {
        return new G(aVar, aVar2);
    }

    public G get() {
        return b(this.f7146a, this.f7147b);
    }
}
