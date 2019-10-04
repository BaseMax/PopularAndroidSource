package com.farsitel.bazaar.data.feature.download;

import h.f.a.b;
import h.i.e;
import java.math.BigInteger;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: DownloadManager.kt */
final /* synthetic */ class DownloadManager$startDownloadProcess$3 extends FunctionReference implements b<BigInteger, Boolean> {
    public final /* synthetic */ DownloadManager$startDownloadProcess$2 $downloadDiffHandler$2;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadManager$startDownloadProcess$3(DownloadManager$startDownloadProcess$2 downloadManager$startDownloadProcess$2) {
        super(1);
        this.$downloadDiffHandler$2 = downloadManager$startDownloadProcess$2;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((BigInteger) obj));
    }

    public final e e() {
        return null;
    }

    public final String g() {
        return "invoke(Ljava/math/BigInteger;)Z";
    }

    public final String getName() {
        return "downloadDiffHandler";
    }

    public final boolean a(BigInteger bigInteger) {
        return this.$downloadDiffHandler$2.a(bigInteger);
    }
}
