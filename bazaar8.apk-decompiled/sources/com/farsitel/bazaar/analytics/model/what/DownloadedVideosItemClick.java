package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class DownloadedVideosItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadedVideosItemClick(String str) {
        super("downloaded_videos", str, null);
        j.b(str, "referrer");
    }
}
