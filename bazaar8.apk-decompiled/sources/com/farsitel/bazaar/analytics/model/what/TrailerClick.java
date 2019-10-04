package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class TrailerClick extends ItemClick {
    public final String previewUrl;
    public final String videoId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public TrailerClick(String str, String str2, String str3) {
        super("trailer", str3, null);
        j.b(str, "previewUrl");
        j.b(str2, "videoId");
        j.b(str3, "referrer");
        this.previewUrl = str;
        this.videoId = str2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("preview_url", this.previewUrl), f.a("entity_id", this.videoId)));
        return b2;
    }
}
