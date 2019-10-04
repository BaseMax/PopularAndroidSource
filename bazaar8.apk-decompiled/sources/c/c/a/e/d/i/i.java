package c.c.a.e.d.i;

import com.farsitel.bazaar.data.feature.download.DownloadManager;
import d.b.c;
import g.a.a;

/* compiled from: DownloadProgressDataSource_Factory */
public final class i implements c<h> {

    /* renamed from: a  reason: collision with root package name */
    public final a<DownloadManager> f5165a;

    public i(a<DownloadManager> aVar) {
        this.f5165a = aVar;
    }

    public static i a(a<DownloadManager> aVar) {
        return new i(aVar);
    }

    public static h b(a<DownloadManager> aVar) {
        return new h(aVar.get());
    }

    public h get() {
        return b(this.f5165a);
    }
}
