package c.c.a.e.d.h.e.a;

import c.c.a.e.d.h.e.a.a.k;
import c.c.a.e.d.h.e.a.a.n;
import d.b.c;
import g.a.a;

/* compiled from: VideoDownloadedRepository_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<k> f5141a;

    /* renamed from: b  reason: collision with root package name */
    public final a<n> f5142b;

    public d(a<k> aVar, a<n> aVar2) {
        this.f5141a = aVar;
        this.f5142b = aVar2;
    }

    public static d a(a<k> aVar, a<n> aVar2) {
        return new d(aVar, aVar2);
    }

    public static c b(a<k> aVar, a<n> aVar2) {
        return new c(aVar.get(), aVar2.get());
    }

    public c get() {
        return b(this.f5141a, this.f5142b);
    }
}
