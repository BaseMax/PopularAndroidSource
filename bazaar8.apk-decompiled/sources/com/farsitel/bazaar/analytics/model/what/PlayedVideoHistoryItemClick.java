package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class PlayedVideoHistoryItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayedVideoHistoryItemClick(String str) {
        super("playedVideo_history", str, null);
        j.b(str, "referrer");
    }
}
