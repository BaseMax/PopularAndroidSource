package com.farsitel.bazaar.ui.cinema.video;

import c.c.a.n.c.d.a.f;
import c.c.a.n.j.k.s;
import com.farsitel.bazaar.analytics.model.what.LoadVideoDetails;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.core.model.ReviewState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDetailFragment.kt */
final class VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends RecyclerData>>, h> {
    public final /* synthetic */ s $this_createViewModel;
    public final /* synthetic */ VideoDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(s sVar, VideoDetailFragment videoDetailFragment) {
        super(1);
        this.$this_createViewModel = sVar;
        this.this$0 = videoDetailFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<? extends RecyclerData>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        ResourceState d2 = resource != null ? resource.d() : null;
        if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            VideoDetailFragment videoDetailFragment = this.this$0;
            c.c.a.n.c.a.b.a(videoDetailFragment, new LoadVideoDetails(VideoDetailFragment.d(videoDetailFragment).a()), null, null, 6, null);
            CinemaInfoItem b2 = s.b(VideoDetailFragment.e(this.this$0), null, 1, null);
            if (b2 != null) {
                f c2 = this.this$0.rb();
                if (c2 != null) {
                    c2.a(b2.getName());
                }
                CinemaActionsItem a2 = s.a(VideoDetailFragment.e(this.this$0), null, 1, null);
                if (a2 != null) {
                    VideoDetailFragment.a(this.this$0).a(a2.getVideoState());
                    VideoDetailFragment.a(this.this$0).b(a2.isFree());
                }
                this.this$0.tb();
            }
            this.$this_createViewModel.o().a(this.this$0.ba(), new g(this));
            this.this$0.a(this.$this_createViewModel.j());
        } else if (j.a((Object) d2, (Object) ReviewState.PostComment.f12181a)) {
            this.this$0.yb();
        }
    }
}
