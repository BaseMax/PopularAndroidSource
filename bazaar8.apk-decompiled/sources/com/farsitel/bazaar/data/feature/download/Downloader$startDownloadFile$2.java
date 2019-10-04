package com.farsitel.bazaar.data.feature.download;

import h.f.a.a;
import h.h;
import i.a.b.x;
import java.io.File;
import kotlin.jvm.internal.Lambda;

/* compiled from: Downloader.kt */
final class Downloader$startDownloadFile$2 extends Lambda implements a<h> {
    public final /* synthetic */ File $destFile;
    public final /* synthetic */ x $downloadStatus;
    public final /* synthetic */ Downloader$startDownloadFile$1 $downloadedFileIsValid$1;
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ Downloader this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Downloader$startDownloadFile$2(Downloader downloader, String str, x xVar, Downloader$startDownloadFile$1 downloader$startDownloadFile$1, File file) {
        super(0);
        this.this$0 = downloader;
        this.$entityId = str;
        this.$downloadStatus = xVar;
        this.$downloadedFileIsValid$1 = downloader$startDownloadFile$1;
        this.$destFile = file;
    }

    public final void invoke() {
        if (this.this$0.f12250e.contains(this.$entityId)) {
            this.this$0.a((x<? super DownloaderDownloadStatus>) this.$downloadStatus, DownloaderDownloadStatus.CHECKING);
            if (this.$downloadedFileIsValid$1.invoke()) {
                this.this$0.a((x<? super DownloaderDownloadStatus>) this.$downloadStatus, DownloaderDownloadStatus.COMPLETED);
            } else {
                this.$destFile.delete();
                this.this$0.a((x<? super DownloaderDownloadStatus>) this.$downloadStatus, DownloaderDownloadStatus.FAILED);
            }
        }
        this.this$0.c(this.$entityId);
    }
}
