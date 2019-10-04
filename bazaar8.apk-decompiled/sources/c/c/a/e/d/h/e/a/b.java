package c.c.a.e.d.h.e.a;

import c.c.a.e.d.h.e.a.a.k;
import c.c.a.e.d.h.e.a.b.e;
import d.b.c;
import g.a.a;

/* compiled from: VideoDownloadRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<e> f5127a;

    /* renamed from: b  reason: collision with root package name */
    public final a<k> f5128b;

    public b(a<e> aVar, a<k> aVar2) {
        this.f5127a = aVar;
        this.f5128b = aVar2;
    }

    public static b a(a<e> aVar, a<k> aVar2) {
        return new b(aVar, aVar2);
    }

    public static a b(a<e> aVar, a<k> aVar2) {
        return new a(aVar.get(), aVar2.get());
    }

    public a get() {
        return b(this.f5127a, this.f5128b);
    }
}
