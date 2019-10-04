package com.farsitel.bazaar.analytics.model.what;

import com.farsitel.bazaar.common.model.PlayedVideoType;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class PlayVideoButtonClick extends ButtonClick {
    public final String entityId;
    public final PlayedVideoType playedVideoType;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayVideoButtonClick(String str, PlayedVideoType playedVideoType2, String str2) {
        super("play_video", str2, null);
        j.b(str, "entityId");
        j.b(playedVideoType2, "playedVideoType");
        j.b(str2, "referrer");
        this.entityId = str;
        this.playedVideoType = playedVideoType2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("entity_id", this.entityId), f.a("video_type", this.playedVideoType.getValue())));
        return b2;
    }
}
