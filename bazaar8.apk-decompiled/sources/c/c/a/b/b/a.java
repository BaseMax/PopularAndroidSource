package c.c.a.b.b;

import com.farsitel.bazaar.common.model.DownloadStatus;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f4549a = new int[DownloadStatus.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f4550b = new int[DownloadStatus.values().length];

    static {
        f4549a[DownloadStatus.PENDING.ordinal()] = 1;
        f4549a[DownloadStatus.DOWNLOADING.ordinal()] = 2;
        f4549a[DownloadStatus.CONTINUING.ordinal()] = 3;
        f4549a[DownloadStatus.COMPLETED.ordinal()] = 4;
        f4549a[DownloadStatus.PAUSE_BY_SYSTEM.ordinal()] = 5;
        f4549a[DownloadStatus.FAILED.ordinal()] = 6;
        f4549a[DownloadStatus.FAILED_STORAGE.ordinal()] = 7;
        f4549a[DownloadStatus.PAUSE.ordinal()] = 8;
        f4550b[DownloadStatus.PENDING.ordinal()] = 1;
        f4550b[DownloadStatus.DOWNLOADING.ordinal()] = 2;
        f4550b[DownloadStatus.CONTINUING.ordinal()] = 3;
        f4550b[DownloadStatus.CHECKING.ordinal()] = 4;
        f4550b[DownloadStatus.COMPLETED.ordinal()] = 5;
        f4550b[DownloadStatus.PAUSE_BY_SYSTEM.ordinal()] = 6;
        f4550b[DownloadStatus.FAILED.ordinal()] = 7;
        f4550b[DownloadStatus.FAILED_STORAGE.ordinal()] = 8;
        f4550b[DownloadStatus.PAUSE.ordinal()] = 9;
    }
}
