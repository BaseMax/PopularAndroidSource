package c.c.a.h.b;

import c.c.a.e.d.i.q;
import c.c.a.e.d.i.r;
import c.c.a.e.g.b;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import com.farsitel.bazaar.data.feature.download.Downloader;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.cb  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideDownloadManagerFactory */
public final class C0595cb implements c<DownloadManager> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5966a;

    /* renamed from: b  reason: collision with root package name */
    public final a<b> f5967b;

    /* renamed from: c  reason: collision with root package name */
    public final a<q> f5968c;

    /* renamed from: d  reason: collision with root package name */
    public final a<r> f5969d;

    /* renamed from: e  reason: collision with root package name */
    public final a<Downloader> f5970e;

    public C0595cb(Ya ya, a<b> aVar, a<q> aVar2, a<r> aVar3, a<Downloader> aVar4) {
        this.f5966a = ya;
        this.f5967b = aVar;
        this.f5968c = aVar2;
        this.f5969d = aVar3;
        this.f5970e = aVar4;
    }

    public static C0595cb a(Ya ya, a<b> aVar, a<q> aVar2, a<r> aVar3, a<Downloader> aVar4) {
        C0595cb cbVar = new C0595cb(ya, aVar, aVar2, aVar3, aVar4);
        return cbVar;
    }

    public static DownloadManager b(Ya ya, a<b> aVar, a<q> aVar2, a<r> aVar3, a<Downloader> aVar4) {
        return a(ya, aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public static DownloadManager a(Ya ya, b bVar, q qVar, r rVar, Downloader downloader) {
        DownloadManager a2 = ya.a(bVar, qVar, rVar, downloader);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public DownloadManager get() {
        return b(this.f5966a, this.f5967b, this.f5968c, this.f5969d, this.f5970e);
    }
}
