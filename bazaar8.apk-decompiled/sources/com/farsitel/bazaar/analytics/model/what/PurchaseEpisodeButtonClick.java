package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class PurchaseEpisodeButtonClick extends ButtonClick {
    public final String entityId;
    public final int episodeId;
    public final String fullName;
    public final long price;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PurchaseEpisodeButtonClick(String str, String str2, int i2, long j2, String str3) {
        super("purchase_episode", str3, null);
        j.b(str, "entityId");
        j.b(str2, "fullName");
        j.b(str3, "referrer");
        this.entityId = str;
        this.fullName = str2;
        this.episodeId = i2;
        this.price = j2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("entity_id", this.entityId), f.a("full_name", this.fullName), f.a("episode_id", Integer.valueOf(this.episodeId)), f.a("price", Long.valueOf(this.price))));
        return b2;
    }
}
