package c.c.a.e.d.i;

import com.farsitel.bazaar.data.feature.download.Downloader;
import d.b.c;
import g.a.a;

/* compiled from: Downloader_Factory */
public final class o implements c<Downloader> {

    /* renamed from: a  reason: collision with root package name */
    public final a<q> f5184a;

    /* renamed from: b  reason: collision with root package name */
    public final a<r> f5185b;

    /* renamed from: c  reason: collision with root package name */
    public final a<y> f5186c;

    /* renamed from: d  reason: collision with root package name */
    public final a<u> f5187d;

    public o(a<q> aVar, a<r> aVar2, a<y> aVar3, a<u> aVar4) {
        this.f5184a = aVar;
        this.f5185b = aVar2;
        this.f5186c = aVar3;
        this.f5187d = aVar4;
    }

    public static o a(a<q> aVar, a<r> aVar2, a<y> aVar3, a<u> aVar4) {
        return new o(aVar, aVar2, aVar3, aVar4);
    }

    public static Downloader b(a<q> aVar, a<r> aVar2, a<y> aVar3, a<u> aVar4) {
        return new Downloader(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public Downloader get() {
        return b(this.f5184a, this.f5185b, this.f5186c, this.f5187d);
    }
}
