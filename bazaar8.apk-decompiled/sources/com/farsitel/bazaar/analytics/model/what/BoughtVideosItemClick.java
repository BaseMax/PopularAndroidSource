package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class BoughtVideosItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BoughtVideosItemClick(String str) {
        super("bought_videos", str, null);
        j.b(str, "referrer");
    }
}
