package c.c.a.e.d.i;

import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus;

public final /* synthetic */ class g {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f5162a = new int[DownloaderDownloadStatus.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f5163b = new int[EntityType.values().length];

    static {
        f5162a[DownloaderDownloadStatus.FAILED.ordinal()] = 1;
        f5162a[DownloaderDownloadStatus.FAILED_STORAGE.ordinal()] = 2;
        f5162a[DownloaderDownloadStatus.LINK_IS_NOT_VALID.ordinal()] = 3;
        f5162a[DownloaderDownloadStatus.DOWNLOADING.ordinal()] = 4;
        f5162a[DownloaderDownloadStatus.CHECKING.ordinal()] = 5;
        f5162a[DownloaderDownloadStatus.COMPLETED.ordinal()] = 6;
        f5162a[DownloaderDownloadStatus.NETWORK_LOST.ordinal()] = 7;
        f5163b[EntityType.APP.ordinal()] = 1;
        f5163b[EntityType.DIFF_APP.ordinal()] = 2;
        f5163b[EntityType.VIDEO.ordinal()] = 3;
    }
}
