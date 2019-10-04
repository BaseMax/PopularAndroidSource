package com.farsitel.bazaar.analytics.model.what;

import com.farsitel.bazaar.common.model.ui.EntityState;
import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class VideoDownloadClick extends ButtonClick {
    public final EntityState downloadState;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadClick(EntityState entityState, String str) {
        super("video_download", str, null);
        j.b(entityState, "downloadState");
        j.b(str, "referrer");
        this.downloadState = entityState;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("download_state", this.downloadState.getValue())));
        return b2;
    }
}
