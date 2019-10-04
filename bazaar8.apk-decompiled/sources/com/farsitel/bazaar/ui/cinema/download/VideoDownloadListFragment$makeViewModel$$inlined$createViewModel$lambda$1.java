package com.farsitel.bazaar.ui.cinema.download;

import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadListFragment.kt */
final class VideoDownloadListFragment$makeViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends DownloadedVideoItem>>, h> {
    public final /* synthetic */ VideoDownloadListFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadListFragment$makeViewModel$$inlined$createViewModel$lambda$1(VideoDownloadListFragment videoDownloadListFragment) {
        super(1);
        this.this$0 = videoDownloadListFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<DownloadedVideoItem>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<DownloadedVideoItem>> resource) {
        if (j.a((Object) resource != null ? resource.d() : null, (Object) ResourceState.Success.f12179a)) {
            this.this$0.ub();
        }
    }
}
