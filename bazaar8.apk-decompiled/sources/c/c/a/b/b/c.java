package c.c.a.b.b;

import com.farsitel.bazaar.common.model.DownloadStatus;

public final /* synthetic */ class c {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f4554a = new int[DownloadStatus.values().length];

    static {
        f4554a[DownloadStatus.FAILED.ordinal()] = 1;
        f4554a[DownloadStatus.FAILED_STORAGE.ordinal()] = 2;
        f4554a[DownloadStatus.PAUSE.ordinal()] = 3;
        f4554a[DownloadStatus.PAUSE_BY_SYSTEM.ordinal()] = 4;
        f4554a[DownloadStatus.CHECKING.ordinal()] = 5;
        f4554a[DownloadStatus.COMPLETED.ordinal()] = 6;
        f4554a[DownloadStatus.CONTINUING.ordinal()] = 7;
    }
}
