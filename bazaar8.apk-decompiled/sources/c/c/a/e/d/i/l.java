package c.c.a.e.d.i;

import com.farsitel.bazaar.data.feature.download.Downloader;

public final /* synthetic */ class l {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f5168a = new int[Downloader.MergeDownloadPartState.values().length];

    static {
        f5168a[Downloader.MergeDownloadPartState.SUCCESS.ordinal()] = 1;
        f5168a[Downloader.MergeDownloadPartState.FAILED.ordinal()] = 2;
        f5168a[Downloader.MergeDownloadPartState.FAILED_STORAGE.ordinal()] = 3;
    }
}
