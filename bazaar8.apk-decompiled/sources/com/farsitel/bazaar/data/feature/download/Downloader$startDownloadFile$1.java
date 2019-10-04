package com.farsitel.bazaar.data.feature.download;

import c.c.a.c.b.d;
import h.f.a.a;
import h.f.a.b;
import java.io.File;
import java.math.BigInteger;
import kotlin.jvm.internal.Lambda;

/* compiled from: Downloader.kt */
final class Downloader$startDownloadFile$1 extends Lambda implements a<Boolean> {
    public final /* synthetic */ File $destFile;
    public final /* synthetic */ b $downloadDiffHandler;
    public final /* synthetic */ BigInteger $downloadHash;
    public final /* synthetic */ BigInteger $finalizeDownloadHash;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Downloader$startDownloadFile$1(File file, BigInteger bigInteger, b bVar, BigInteger bigInteger2) {
        super(0);
        this.$destFile = file;
        this.$downloadHash = bigInteger;
        this.$downloadDiffHandler = bVar;
        this.$finalizeDownloadHash = bigInteger2;
    }

    public final boolean invoke() {
        return d.a(this.$destFile, this.$downloadHash) && ((Boolean) this.$downloadDiffHandler.a(this.$finalizeDownloadHash)).booleanValue();
    }
}
