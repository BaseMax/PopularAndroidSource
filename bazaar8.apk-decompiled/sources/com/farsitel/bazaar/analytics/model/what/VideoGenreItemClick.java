package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class VideoGenreItemClick extends ItemClick {
    public final String genreName;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoGenreItemClick(String str, String str2) {
        super("video_genre", str2, null);
        j.b(str, "genreName");
        j.b(str2, "referrer");
        this.genreName = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("video_genre_name", this.genreName)));
        return b2;
    }
}
