package com.farsitel.bazaar.app.download;

import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: DownloadService.kt */
final class DownloadService$getDownloadInfo$2 extends Lambda implements b<ErrorModel, h> {
    public final /* synthetic */ AppDownloaderModel $appDownloadModel;
    public final /* synthetic */ DownloadService this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$getDownloadInfo$2(DownloadService downloadService, AppDownloaderModel appDownloaderModel) {
        super(1);
        this.this$0 = downloadService;
        this.$appDownloadModel = appDownloaderModel;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((ErrorModel) obj);
        return h.f14579a;
    }

    public final void a(ErrorModel errorModel) {
        j.b(errorModel, "failure");
        this.this$0.a(DownloadServiceNotifyType.FAIL_DOWNLOAD_INFO, this.$appDownloadModel.getPackageName(), Boolean.valueOf(this.$appDownloadModel.isFree()));
        this.this$0.f12112f.remove(this.$appDownloadModel.getPackageName());
    }
}
