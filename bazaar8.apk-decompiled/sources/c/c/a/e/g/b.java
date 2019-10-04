package c.c.a.e.g;

import c.c.a.e.d.u.a;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import h.f.b.j;

/* compiled from: DownloadConfig.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public DownloadManager.DownloadConnectionType f5444a;

    /* renamed from: b  reason: collision with root package name */
    public final a f5445b;

    public b(a aVar) {
        DownloadManager.DownloadConnectionType downloadConnectionType;
        j.b(aVar, "settingsRepository");
        this.f5445b = aVar;
        if (this.f5445b.t()) {
            downloadConnectionType = DownloadManager.DownloadConnectionType.SINGLE_CONNECTION;
        } else {
            downloadConnectionType = DownloadManager.DownloadConnectionType.PARALLEL_CONNECTION;
        }
        this.f5444a = downloadConnectionType;
    }

    public final DownloadManager.DownloadConnectionType a() {
        return this.f5444a;
    }

    public final void a(DownloadManager.DownloadConnectionType downloadConnectionType) {
        j.b(downloadConnectionType, "<set-?>");
        this.f5444a = downloadConnectionType;
    }
}
