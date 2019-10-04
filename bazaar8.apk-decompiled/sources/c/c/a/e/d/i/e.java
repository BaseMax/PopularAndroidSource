package c.c.a.e.d.i;

import com.farsitel.bazaar.data.dto.requestdto.AppInstallInfoRequest;
import com.farsitel.bazaar.data.dto.requestdto.DownloadInfoRequestDto;
import com.farsitel.bazaar.data.dto.responsedto.DownloadInfoResponseDto;
import l.C1158b;
import l.b.a;
import l.b.m;

/* compiled from: DownloadInfoService.kt */
public interface e {
    @m("rest-v1/process/InstallAppInfoRequest")
    C1158b<DownloadInfoResponseDto> a(@a AppInstallInfoRequest appInstallInfoRequest);

    @m("rest-v1/process/AppDownloadInfoRequest")
    C1158b<DownloadInfoResponseDto> a(@a DownloadInfoRequestDto downloadInfoRequestDto);
}
