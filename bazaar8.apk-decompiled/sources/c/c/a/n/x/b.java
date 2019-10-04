package c.c.a.n.x;

import c.c.a.p.I;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import d.b.c;
import g.a.a;

/* compiled from: SettingViewModel_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.s.c> f7068a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f7069b;

    /* renamed from: c  reason: collision with root package name */
    public final a<I> f7070c;

    /* renamed from: d  reason: collision with root package name */
    public final a<DownloadManager> f7071d;

    public b(a<c.c.a.e.d.s.c> aVar, a<c.c.a.e.d.u.a> aVar2, a<I> aVar3, a<DownloadManager> aVar4) {
        this.f7068a = aVar;
        this.f7069b = aVar2;
        this.f7070c = aVar3;
        this.f7071d = aVar4;
    }

    public static b a(a<c.c.a.e.d.s.c> aVar, a<c.c.a.e.d.u.a> aVar2, a<I> aVar3, a<DownloadManager> aVar4) {
        return new b(aVar, aVar2, aVar3, aVar4);
    }

    public static a b(a<c.c.a.e.d.s.c> aVar, a<c.c.a.e.d.u.a> aVar2, a<I> aVar3, a<DownloadManager> aVar4) {
        return new a(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public a get() {
        return b(this.f7068a, this.f7069b, this.f7070c, this.f7071d);
    }
}
