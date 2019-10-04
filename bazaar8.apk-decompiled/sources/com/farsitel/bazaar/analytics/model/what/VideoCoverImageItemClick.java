package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class VideoCoverImageItemClick extends ItemClick {
    public final String mainUrl;
    public final String thumbnailUrl;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoCoverImageItemClick(String str, String str2, String str3) {
        super("cover_image", str3, null);
        j.b(str, "mainUrl");
        j.b(str2, "thumbnailUrl");
        j.b(str3, "referrer");
        this.mainUrl = str;
        this.thumbnailUrl = str2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("main_url", this.mainUrl), f.a("thumbnail_url", this.thumbnailUrl)));
        return b2;
    }
}
