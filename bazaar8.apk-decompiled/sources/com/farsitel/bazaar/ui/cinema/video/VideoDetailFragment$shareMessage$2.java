package com.farsitel.bazaar.ui.cinema.video;

import c.c.a.n.j.k.s;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDetailFragment.kt */
final class VideoDetailFragment$shareMessage$2 extends Lambda implements a<String> {
    public final /* synthetic */ VideoDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailFragment$shareMessage$2(VideoDetailFragment videoDetailFragment) {
        super(0);
        this.this$0 = videoDetailFragment;
    }

    public final String invoke() {
        CinemaInfoItem b2 = s.b(VideoDetailFragment.e(this.this$0), null, 1, null);
        if (b2 != null) {
            return b2.getShareMessage();
        }
        return null;
    }
}
