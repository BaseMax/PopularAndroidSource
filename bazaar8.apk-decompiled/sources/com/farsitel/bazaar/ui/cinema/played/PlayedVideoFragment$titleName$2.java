package com.farsitel.bazaar.ui.cinema.played;

import com.farsitel.bazaar.R;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: PlayedVideoFragment.kt */
final class PlayedVideoFragment$titleName$2 extends Lambda implements a<String> {
    public final /* synthetic */ PlayedVideoFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayedVideoFragment$titleName$2(PlayedVideoFragment playedVideoFragment) {
        super(0);
        this.this$0 = playedVideoFragment;
    }

    public final String invoke() {
        return this.this$0.b((int) R.string.video_play_history);
    }
}
