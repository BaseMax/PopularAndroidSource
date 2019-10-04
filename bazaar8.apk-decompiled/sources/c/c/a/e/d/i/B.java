package c.c.a.e.d.i;

import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.g.b;
import com.farsitel.bazaar.data.feature.download.Downloader;
import d.b.c;
import g.a.a;

/* compiled from: VideoDownloadManager_Factory */
public final class B implements c<A> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.h.e.a.c.a> f5150a;

    /* renamed from: b  reason: collision with root package name */
    public final a<q> f5151b;

    /* renamed from: c  reason: collision with root package name */
    public final a<n> f5152c;

    /* renamed from: d  reason: collision with root package name */
    public final a<b> f5153d;

    /* renamed from: e  reason: collision with root package name */
    public final a<Downloader> f5154e;

    /* renamed from: f  reason: collision with root package name */
    public final a<r> f5155f;

    /* renamed from: g  reason: collision with root package name */
    public final a<c.c.a.c.e.a> f5156g;

    public B(a<c.c.a.e.d.h.e.a.c.a> aVar, a<q> aVar2, a<n> aVar3, a<b> aVar4, a<Downloader> aVar5, a<r> aVar6, a<c.c.a.c.e.a> aVar7) {
        this.f5150a = aVar;
        this.f5151b = aVar2;
        this.f5152c = aVar3;
        this.f5153d = aVar4;
        this.f5154e = aVar5;
        this.f5155f = aVar6;
        this.f5156g = aVar7;
    }

    public static B a(a<c.c.a.e.d.h.e.a.c.a> aVar, a<q> aVar2, a<n> aVar3, a<b> aVar4, a<Downloader> aVar5, a<r> aVar6, a<c.c.a.c.e.a> aVar7) {
        B b2 = new B(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
        return b2;
    }

    public static A b(a<c.c.a.e.d.h.e.a.c.a> aVar, a<q> aVar2, a<n> aVar3, a<b> aVar4, a<Downloader> aVar5, a<r> aVar6, a<c.c.a.c.e.a> aVar7) {
        A a2 = new A(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get(), aVar5.get(), aVar6.get());
        C.a(a2, aVar7.get());
        return a2;
    }

    public A get() {
        return b(this.f5150a, this.f5151b, this.f5152c, this.f5153d, this.f5154e, this.f5155f, this.f5156g);
    }
}
