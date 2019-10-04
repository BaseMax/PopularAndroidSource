package c.c.a.e.d.b;

import d.b.c;
import g.a.a;

/* compiled from: UpgradableAppsRemoteDataSource_Factory */
public final class ea implements c<da> {

    /* renamed from: a  reason: collision with root package name */
    public final a<fa> f4992a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.q.a> f4993b;

    public ea(a<fa> aVar, a<c.c.a.e.d.q.a> aVar2) {
        this.f4992a = aVar;
        this.f4993b = aVar2;
    }

    public static ea a(a<fa> aVar, a<c.c.a.e.d.q.a> aVar2) {
        return new ea(aVar, aVar2);
    }

    public static da b(a<fa> aVar, a<c.c.a.e.d.q.a> aVar2) {
        return new da(aVar.get(), aVar2.get());
    }

    public da get() {
        return b(this.f4992a, this.f4993b);
    }
}
