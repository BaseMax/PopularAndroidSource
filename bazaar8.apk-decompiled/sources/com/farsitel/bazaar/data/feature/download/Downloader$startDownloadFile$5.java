package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.i.l;
import c.c.a.e.d.i.w;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.io.File;
import java.util.List;
import javax.crypto.Cipher;
import kotlin.jvm.internal.Lambda;

/* compiled from: Downloader.kt */
final class Downloader$startDownloadFile$5 extends Lambda implements b<List<? extends w>, h> {
    public final /* synthetic */ File $destFile;
    public final /* synthetic */ Cipher $encryptCipher;
    public final /* synthetic */ Downloader$startDownloadFile$2 $handleCompleteDownload$2;
    public final /* synthetic */ Downloader$startDownloadFile$3 $handleFailDownload$3;
    public final /* synthetic */ Downloader$startDownloadFile$4 $handleFailStorageDownload$4;
    public final /* synthetic */ Downloader this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Downloader$startDownloadFile$5(Downloader downloader, File file, Cipher cipher, Downloader$startDownloadFile$2 downloader$startDownloadFile$2, Downloader$startDownloadFile$3 downloader$startDownloadFile$3, Downloader$startDownloadFile$4 downloader$startDownloadFile$4) {
        super(1);
        this.this$0 = downloader;
        this.$destFile = file;
        this.$encryptCipher = cipher;
        this.$handleCompleteDownload$2 = downloader$startDownloadFile$2;
        this.$handleFailDownload$3 = downloader$startDownloadFile$3;
        this.$handleFailStorageDownload$4 = downloader$startDownloadFile$4;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((List<w>) (List) obj);
        return h.f14579a;
    }

    public final void a(List<w> list) {
        j.b(list, "parts");
        int i2 = l.f5168a[this.this$0.f12254i.a(list, this.$destFile, this.$encryptCipher).ordinal()];
        if (i2 == 1) {
            this.$handleCompleteDownload$2.invoke();
        } else if (i2 == 2) {
            this.$handleFailDownload$3.invoke();
        } else if (i2 == 3) {
            this.$handleFailStorageDownload$4.invoke();
        }
    }
}
