package com.farsitel.bazaar.ui.cinema.download;

import c.c.a.n.j.c.l;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadListViewModel.kt */
final class VideoDownloadListViewModel$handleVideoDownloaded$1 extends Lambda implements b<List<? extends DownloadedVideoModel>, List<? extends DownloadedVideoItem>> {
    public final /* synthetic */ l this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadListViewModel$handleVideoDownloaded$1(l lVar) {
        super(1);
        this.this$0 = lVar;
    }

    public final List<DownloadedVideoItem> a(List<DownloadedVideoModel> list) {
        j.b(list, "it");
        return this.this$0.b(list);
    }
}
