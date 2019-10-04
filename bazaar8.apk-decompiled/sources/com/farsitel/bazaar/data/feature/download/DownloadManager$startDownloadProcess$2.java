package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.g.c;
import h.f.a.b;
import java.io.File;
import java.math.BigInteger;
import kotlin.jvm.internal.Lambda;

/* compiled from: DownloadManager.kt */
final class DownloadManager$startDownloadProcess$2 extends Lambda implements b<BigInteger, Boolean> {
    public final /* synthetic */ File $destFile;
    public final /* synthetic */ c $downloadInfoModel;
    public final /* synthetic */ DownloadManager this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadManager$startDownloadProcess$2(DownloadManager downloadManager, c cVar, File file) {
        super(1);
        this.this$0 = downloadManager;
        this.$downloadInfoModel = cVar;
        this.$destFile = file;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((BigInteger) obj));
    }

    public final boolean a(BigInteger bigInteger) {
        if (this.$downloadInfoModel.h()) {
            return true;
        }
        return this.this$0.a(this.$destFile, this.$downloadInfoModel, bigInteger);
    }
}
