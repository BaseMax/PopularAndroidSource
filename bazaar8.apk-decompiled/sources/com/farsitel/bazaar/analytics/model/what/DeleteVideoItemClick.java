package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class DeleteVideoItemClick extends ItemClick {
    public final String videoId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeleteVideoItemClick(String str, String str2) {
        super("delete_from_video_download_list", str2, null);
        j.b(str, "videoId");
        j.b(str2, "referrer");
        this.videoId = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("entity_id", this.videoId)));
        return b2;
    }
}
