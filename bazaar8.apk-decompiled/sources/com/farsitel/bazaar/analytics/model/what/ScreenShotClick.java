package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class ScreenShotClick extends ItemClick {
    public final String productId;
    public final int thumbnailPosition;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ScreenShotClick(String str, int i2, String str2) {
        super("screen_shot", str2, null);
        j.b(str, "productId");
        j.b(str2, "referrer");
        this.productId = str;
        this.thumbnailPosition = i2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("entity_id", this.productId), f.a("thumbnail_position", Integer.valueOf(this.thumbnailPosition))));
        return b2;
    }
}
