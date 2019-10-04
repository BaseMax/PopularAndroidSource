package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class DownloadVideoButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadVideoButtonClick(String str) {
        super("download_video", str, null);
        j.b(str, "referrer");
    }
}
