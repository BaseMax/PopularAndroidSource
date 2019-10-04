package com.farsitel.bazaar.ui.cinema.played;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: PlayedVideoViewModel.kt */
final class PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1 extends Lambda implements b<List<? extends ListItem>, Page> {
    public final /* synthetic */ PlayedVideoViewModel$makeData$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(PlayedVideoViewModel$makeData$1 playedVideoViewModel$makeData$1) {
        super(1);
        this.this$0 = playedVideoViewModel$makeData$1;
    }

    public final Page a(List<? extends ListItem> list) {
        j.b(list, "it");
        Page page = new Page(this.this$0.this$0.y.getString(R.string.video_play_history), null, null, list, d.a(new c.i(), null, 1, null), 6, null);
        return page;
    }
}
