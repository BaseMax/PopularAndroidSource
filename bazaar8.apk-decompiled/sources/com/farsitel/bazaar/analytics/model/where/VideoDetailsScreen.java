package com.farsitel.bazaar.analytics.model.where;

import h.f.b.j;

/* compiled from: DetailsScreen.kt */
public final class VideoDetailsScreen extends DetailsScreen {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailsScreen(String str, long j2) {
        super("video", str, Long.valueOf(j2), null);
        j.b(str, "videoId");
    }
}
