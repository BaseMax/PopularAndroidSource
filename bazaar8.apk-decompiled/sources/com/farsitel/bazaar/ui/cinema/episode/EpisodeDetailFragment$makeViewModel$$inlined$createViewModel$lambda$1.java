package com.farsitel.bazaar.ui.cinema.episode;

import c.c.a.n.c.d.a.f;
import c.c.a.n.j.d.t;
import com.farsitel.bazaar.analytics.model.what.LoadEpisodesEvent;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.core.model.ReviewState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: EpisodeDetailFragment.kt */
final class EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends RecyclerData>>, h> {
    public final /* synthetic */ t $this_createViewModel;
    public final /* synthetic */ EpisodeDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(t tVar, EpisodeDetailFragment episodeDetailFragment) {
        super(1);
        this.$this_createViewModel = tVar;
        this.this$0 = episodeDetailFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<? extends RecyclerData>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        ResourceState d2 = resource != null ? resource.d() : null;
        if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            EpisodeDetailFragment episodeDetailFragment = this.this$0;
            c.c.a.n.c.a.b.a(episodeDetailFragment, new LoadEpisodesEvent(EpisodeDetailFragment.a(episodeDetailFragment).c(), EpisodeDetailFragment.a(this.this$0).b()), null, null, 6, null);
            EpisodeInfoItem b2 = t.b(EpisodeDetailFragment.e(this.this$0), null, 1, null);
            if (b2 != null) {
                if (this.$this_createViewModel.u()) {
                    f d3 = this.this$0.rb();
                    if (d3 != null) {
                        d3.a(0);
                    }
                }
                f d4 = this.this$0.rb();
                if (d4 != null) {
                    d4.a(b2.getName());
                }
            }
        } else if (j.a((Object) d2, (Object) ReviewState.PostComment.f12181a)) {
            this.this$0.xb();
        }
    }
}
