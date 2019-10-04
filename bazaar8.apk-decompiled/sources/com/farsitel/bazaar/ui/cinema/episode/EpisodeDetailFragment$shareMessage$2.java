package com.farsitel.bazaar.ui.cinema.episode;

import c.c.a.n.j.d.t;
import com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: EpisodeDetailFragment.kt */
final class EpisodeDetailFragment$shareMessage$2 extends Lambda implements a<String> {
    public final /* synthetic */ EpisodeDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EpisodeDetailFragment$shareMessage$2(EpisodeDetailFragment episodeDetailFragment) {
        super(0);
        this.this$0 = episodeDetailFragment;
    }

    public final String invoke() {
        EpisodeInfoItem b2 = t.b(EpisodeDetailFragment.e(this.this$0), null, 1, null);
        if (b2 != null) {
            return b2.getShareMessage();
        }
        return null;
    }
}
