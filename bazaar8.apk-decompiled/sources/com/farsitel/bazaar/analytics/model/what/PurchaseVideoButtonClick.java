package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class PurchaseVideoButtonClick extends ButtonClick {
    public final String downloadDescription;
    public final String entityId;
    public final long price;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PurchaseVideoButtonClick(String str, String str2, long j2, String str3) {
        super("purchase_video", str3, null);
        j.b(str, "entityId");
        j.b(str2, "downloadDescription");
        j.b(str3, "referrer");
        this.entityId = str;
        this.downloadDescription = str2;
        this.price = j2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("entity_id", this.entityId), f.a("download_description", this.downloadDescription), f.a("price", Long.valueOf(this.price))));
        return b2;
    }
}
