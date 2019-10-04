package c.c.a.b.b;

import com.farsitel.bazaar.app.download.DownloadServiceNotifyType;
import h.f.b.j;

/* compiled from: DownloadServiceNotifyModel.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final DownloadServiceNotifyType f4551a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4552b;

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f4553c;

    public b(DownloadServiceNotifyType downloadServiceNotifyType, String str, Boolean bool) {
        j.b(downloadServiceNotifyType, "downloadServiceNotifyType");
        j.b(str, "entityId");
        this.f4551a = downloadServiceNotifyType;
        this.f4552b = str;
        this.f4553c = bool;
    }

    public final DownloadServiceNotifyType a() {
        return this.f4551a;
    }

    public final String b() {
        return this.f4552b;
    }

    public final Boolean c() {
        return this.f4553c;
    }
}
