package c.c.a.e.d.i;

import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import i.a.b.t;

/* compiled from: DownloadProgressRepository.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final h f5166a;

    public j(h hVar) {
        h.f.b.j.b(hVar, "downloadProgressDataSource");
        this.f5166a = hVar;
    }

    public final t<DownloaderProgressInfo> a(String str) {
        h.f.b.j.b(str, "packageName");
        return this.f5166a.a(str);
    }
}
