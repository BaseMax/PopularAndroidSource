package com.farsitel.bazaar.app.download;

import c.c.a.b.b.c;
import com.farsitel.bazaar.common.model.DownloadStatus;
import h.f.b.f;
import h.f.b.j;

/* compiled from: DownloadServiceNotifyModel.kt */
public enum DownloadServiceNotifyType {
    STOP("stop"),
    FAIL_DOWNLOAD_INFO("fail_download_info"),
    SUCCESS_DOWNLOAD_INFO("success_download_info"),
    INCOMPATIBLE("incompatible"),
    UNKNOWN_ERROR("unknown_error"),
    SUCCESS_DOWNLOAD("success_download"),
    CONTINUING("continue_download"),
    CHECKING("checking"),
    DOWNLOADING("downloading"),
    PAUSE("pause"),
    PAUSE_BY_SYSTEM("pause_by_system"),
    FAILED("failed"),
    FAILED_STORAGE("failed_storage"),
    STOP_ALL("stop_all");
    
    public static final a Companion = null;
    public final String actionLogValue;

    /* compiled from: DownloadServiceNotifyModel.kt */
    public static final class a {
        public a() {
        }

        public final DownloadServiceNotifyType a(DownloadStatus downloadStatus) {
            j.b(downloadStatus, "downloadState");
            switch (c.f4554a[downloadStatus.ordinal()]) {
                case 1:
                    return DownloadServiceNotifyType.FAILED;
                case 2:
                    return DownloadServiceNotifyType.FAILED_STORAGE;
                case 3:
                    return DownloadServiceNotifyType.PAUSE;
                case 4:
                    return DownloadServiceNotifyType.PAUSE_BY_SYSTEM;
                case 5:
                    return DownloadServiceNotifyType.CHECKING;
                case 6:
                    return DownloadServiceNotifyType.SUCCESS_DOWNLOAD;
                case 7:
                    return DownloadServiceNotifyType.CONTINUING;
                default:
                    return DownloadServiceNotifyType.DOWNLOADING;
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        Companion = new a(null);
    }

    /* access modifiers changed from: public */
    DownloadServiceNotifyType(String str) {
        this.actionLogValue = str;
    }

    public final String f() {
        return this.actionLogValue;
    }
}
