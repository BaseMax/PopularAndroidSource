package c.c.a.e.d.i;

import c.c.a.c.b.i;
import com.farsitel.bazaar.data.dto.requestdto.AppInstallInfoRequest;
import com.farsitel.bazaar.data.dto.requestdto.DownloadInfoRequestDto;
import com.farsitel.bazaar.data.entity.DownloadInfo;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* renamed from: c.c.a.e.d.i.a  reason: case insensitive filesystem */
/* compiled from: DownloadInfoDataSource.kt */
public final class C0396a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5157a;

    public C0396a(e eVar) {
        j.b(eVar, "downloadInfoService");
        this.f5157a = eVar;
    }

    public final Object a(String str, String str2, b<? super Either<DownloadInfo>> bVar) {
        return c.c.a.e.c.b.a(this.f5157a.a(new DownloadInfoRequestDto(str, i.g(str2))), DownloadInfoDataSource$getDownloadInfo$2.f12234a, bVar);
    }

    public final Object b(String str, String str2, b<? super Either<DownloadInfo>> bVar) {
        return c.c.a.e.c.b.a(this.f5157a.a(new AppInstallInfoRequest(str, i.g(str2))), DownloadInfoDataSource$getDownloadInfoForNonFreeApp$2.f12235a, bVar);
    }
}
