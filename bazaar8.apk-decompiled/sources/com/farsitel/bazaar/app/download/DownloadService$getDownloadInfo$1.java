package com.farsitel.bazaar.app.download;

import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.data.entity.DownloadInfo;
import com.farsitel.bazaar.data.entity.DownloadInfoDiff;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: DownloadService.kt */
final class DownloadService$getDownloadInfo$1 extends Lambda implements b<DownloadInfo, h> {
    public final /* synthetic */ AppDownloaderModel $appDownloadModel;
    public final /* synthetic */ DownloadService this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$getDownloadInfo$1(DownloadService downloadService, AppDownloaderModel appDownloaderModel) {
        super(1);
        this.this$0 = downloadService;
        this.$appDownloadModel = appDownloaderModel;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((DownloadInfo) obj);
        return h.f14579a;
    }

    public final void a(DownloadInfo downloadInfo) {
        DownloadInfo downloadInfo2 = downloadInfo;
        j.b(downloadInfo2, "downloadInfo");
        synchronized (this.this$0.f12111e) {
            if (this.this$0.f12112f.contains(this.$appDownloadModel.getPackageName())) {
                Long installedVersionCode = this.$appDownloadModel.getInstalledVersionCode();
                DownloadInfoDiff downloadInfoDiff = downloadInfo2.getDownloadInfoDiff(installedVersionCode != null ? installedVersionCode.longValue() : -1, downloadInfo2.getVersionCode(this.$appDownloadModel.getVersionCode()));
                String packageName = this.$appDownloadModel.getPackageName();
                String appName = this.$appDownloadModel.getAppName();
                boolean isFree = this.$appDownloadModel.isFree();
                String referrer = this.$appDownloadModel.getReferrer();
                Long valueOf = Long.valueOf(downloadInfo2.getVersionCode(this.$appDownloadModel.getVersionCode()));
                AppDownloaderModel appDownloaderModel = r4;
                AppDownloaderModel appDownloaderModel2 = new AppDownloaderModel(packageName, appName, isFree, referrer, valueOf, this.$appDownloadModel.getInstalledVersionCode(), downloadInfo.getCdnUrls(), downloadInfo.getToken(), downloadInfo.getHash(), downloadInfo.getSize(), downloadInfoDiff != null ? downloadInfoDiff.getToken() : null, downloadInfoDiff != null ? downloadInfoDiff.getHash() : null, downloadInfoDiff != null ? Long.valueOf(downloadInfoDiff.getSize()) : null, downloadInfo.getIpAddress(), Boolean.valueOf(downloadInfo.getMultiConnection()));
                this.this$0.d(appDownloaderModel);
            }
            h hVar = h.f14579a;
        }
    }
}
