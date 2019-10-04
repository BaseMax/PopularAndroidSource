package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class PostVideoReviewButtonClick extends ButtonClick {
    public final String videoId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PostVideoReviewButtonClick(String str, String str2) {
        super("post_comment", str2, null);
        j.b(str, "videoId");
        j.b(str2, "referrer");
        this.videoId = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("video_id", this.videoId)));
        return b2;
    }
}
