package c.c.a.e.f;

import com.farsitel.bazaar.data.dto.responsedto.DownloadInfoDiffDto;
import com.farsitel.bazaar.data.dto.responsedto.DownloadInfoResponseDto;
import com.farsitel.bazaar.data.entity.DownloadInfo;
import com.farsitel.bazaar.data.entity.DownloadInfoDiff;
import h.a.m;
import h.f.b.j;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/* compiled from: App.kt */
public final class a {
    public static final DownloadInfoDiff a(DownloadInfoDiffDto downloadInfoDiffDto) {
        j.b(downloadInfoDiffDto, "$this$toDownloadInfoDiff");
        DownloadInfoDiff downloadInfoDiff = new DownloadInfoDiff(downloadInfoDiffDto.getSize(), downloadInfoDiffDto.getToken(), new BigInteger(downloadInfoDiffDto.getHash(), 16), downloadInfoDiffDto.getOldVersionCode(), downloadInfoDiffDto.getUpgradeVersionCode());
        return downloadInfoDiff;
    }

    public static final DownloadInfo a(DownloadInfoResponseDto downloadInfoResponseDto) {
        ArrayList arrayList;
        j.b(downloadInfoResponseDto, "$this$toDownloadInfo");
        String token = downloadInfoResponseDto.getToken();
        List<String> cdnUrls = downloadInfoResponseDto.getCdnUrls();
        BigInteger bigInteger = new BigInteger(downloadInfoResponseDto.getHash(), 16);
        Long size = downloadInfoResponseDto.getSize();
        List<DownloadInfoDiffDto> downloadInfoDiffs = downloadInfoResponseDto.getDownloadInfoDiffs();
        if (downloadInfoDiffs != null) {
            ArrayList arrayList2 = new ArrayList(m.a(downloadInfoDiffs, 10));
            for (DownloadInfoDiffDto a2 : downloadInfoDiffs) {
                arrayList2.add(a(a2));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        DownloadInfo downloadInfo = new DownloadInfo(token, cdnUrls, bigInteger, size, arrayList, downloadInfoResponseDto.getIpAddress(), downloadInfoResponseDto.getMultiConnection(), downloadInfoResponseDto.getVersionCode());
        return downloadInfo;
    }
}
