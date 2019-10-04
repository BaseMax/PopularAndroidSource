package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.i.A;
import com.farsitel.bazaar.common.model.DownloadStatus;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$submitDownload$1 extends Lambda implements b<Throwable, h> {
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadManager$submitDownload$1(A a2, String str) {
        super(1);
        this.this$0 = a2;
        this.$entityId = str;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Throwable) obj);
        return h.f14579a;
    }

    public final void a(Throwable th) {
        j.b(th, "throwable");
        this.this$0.a(this.$entityId, DownloadStatus.FAILED);
    }
}
