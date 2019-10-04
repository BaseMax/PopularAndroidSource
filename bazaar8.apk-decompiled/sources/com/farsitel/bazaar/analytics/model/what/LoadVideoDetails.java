package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: LoadEvent.kt */
public final class LoadVideoDetails extends LoadEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LoadVideoDetails(String str) {
        super("video_details", str, null);
        j.b(str, "referrer");
    }
}
