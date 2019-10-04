package com.farsitel.bazaar.data.feature.download;

import h.f.a.a;
import h.h;
import i.a.b.x;
import kotlin.jvm.internal.Lambda;

/* compiled from: Downloader.kt */
final class Downloader$startDownloadFile$3 extends Lambda implements a<h> {
    public final /* synthetic */ x $downloadStatus;
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ Downloader this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Downloader$startDownloadFile$3(Downloader downloader, String str, x xVar) {
        super(0);
        this.this$0 = downloader;
        this.$entityId = str;
        this.$downloadStatus = xVar;
    }

    public final void invoke() {
        this.this$0.c(this.$entityId);
        this.this$0.a((x<? super DownloaderDownloadStatus>) this.$downloadStatus, DownloaderDownloadStatus.FAILED);
    }
}
