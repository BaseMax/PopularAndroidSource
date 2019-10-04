package c.c.a.b.d;

import com.farsitel.bazaar.app.download.DownloadServiceNotifyType;

public final /* synthetic */ class f {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f4583a = new int[DownloadServiceNotifyType.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f4584b = new int[DownloadServiceNotifyType.values().length];

    static {
        f4583a[DownloadServiceNotifyType.STOP.ordinal()] = 1;
        f4583a[DownloadServiceNotifyType.FAIL_DOWNLOAD_INFO.ordinal()] = 2;
        f4583a[DownloadServiceNotifyType.INCOMPATIBLE.ordinal()] = 3;
        f4583a[DownloadServiceNotifyType.SUCCESS_DOWNLOAD_INFO.ordinal()] = 4;
        f4583a[DownloadServiceNotifyType.UNKNOWN_ERROR.ordinal()] = 5;
        f4583a[DownloadServiceNotifyType.DOWNLOADING.ordinal()] = 6;
        f4583a[DownloadServiceNotifyType.SUCCESS_DOWNLOAD.ordinal()] = 7;
        f4583a[DownloadServiceNotifyType.CHECKING.ordinal()] = 8;
        f4583a[DownloadServiceNotifyType.PAUSE_BY_SYSTEM.ordinal()] = 9;
        f4583a[DownloadServiceNotifyType.PAUSE.ordinal()] = 10;
        f4583a[DownloadServiceNotifyType.FAILED.ordinal()] = 11;
        f4583a[DownloadServiceNotifyType.FAILED_STORAGE.ordinal()] = 12;
        f4583a[DownloadServiceNotifyType.STOP_ALL.ordinal()] = 13;
        f4584b[DownloadServiceNotifyType.FAILED_STORAGE.ordinal()] = 1;
        f4584b[DownloadServiceNotifyType.FAILED.ordinal()] = 2;
        f4584b[DownloadServiceNotifyType.PAUSE.ordinal()] = 3;
        f4584b[DownloadServiceNotifyType.PAUSE_BY_SYSTEM.ordinal()] = 4;
    }
}
