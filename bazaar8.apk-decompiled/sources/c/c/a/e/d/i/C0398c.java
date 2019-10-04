package c.c.a.e.d.i;

import com.farsitel.bazaar.data.entity.DownloadInfo;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* renamed from: c.c.a.e.d.i.c  reason: case insensitive filesystem */
/* compiled from: DownloadInfoRepository.kt */
public final class C0398c {

    /* renamed from: a  reason: collision with root package name */
    public final C0396a f5159a;

    public C0398c(C0396a aVar) {
        j.b(aVar, "downloadInfoDataSource");
        this.f5159a = aVar;
    }

    public final Object a(String str, String str2, b<? super Either<DownloadInfo>> bVar) {
        return this.f5159a.a(str, str2, bVar);
    }

    public final Object b(String str, String str2, b<? super Either<DownloadInfo>> bVar) {
        return this.f5159a.b(str, str2, bVar);
    }
}
