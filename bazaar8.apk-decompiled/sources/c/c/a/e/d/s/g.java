package c.c.a.e.d.s;

import c.c.a.e.b.e;
import d.b.c;
import g.a.a;

/* compiled from: SearchRemoteDataSource_Factory */
public final class g implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final a<e> f5417a;

    /* renamed from: b  reason: collision with root package name */
    public final a<j> f5418b;

    public g(a<e> aVar, a<j> aVar2) {
        this.f5417a = aVar;
        this.f5418b = aVar2;
    }

    public static g a(a<e> aVar, a<j> aVar2) {
        return new g(aVar, aVar2);
    }

    public static f b(a<e> aVar, a<j> aVar2) {
        return new f(aVar.get(), aVar2.get());
    }

    public f get() {
        return b(this.f5417a, this.f5418b);
    }
}
