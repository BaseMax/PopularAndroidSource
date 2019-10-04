package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: VisitEvent.kt */
public final class VideoDetailVisit extends VisitEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailVisit(String str) {
        super("video", str, null);
        j.b(str, "referrer");
    }
}
