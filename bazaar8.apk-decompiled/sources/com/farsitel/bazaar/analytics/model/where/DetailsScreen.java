package com.farsitel.bazaar.analytics.model.where;

import h.a.A;
import h.f.b.f;
import java.util.Map;

/* compiled from: DetailsScreen.kt */
public abstract class DetailsScreen extends WhereType {
    public final String entityId;
    public final String name;
    public final Long price;
    public final String type;

    public /* synthetic */ DetailsScreen(String str, String str2, Long l2, f fVar) {
        this(str, str2, l2);
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = A.c(h.f.a("entity_id", this.entityId));
        Long l2 = this.price;
        if (l2 != null) {
            c2.put("price", Long.valueOf(l2.longValue()));
        }
        return c2;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DetailsScreen(String str, String str2, Long l2, int i2, f fVar) {
        this(str, str2, (i2 & 4) != 0 ? null : l2);
    }

    public DetailsScreen(String str, String str2, Long l2) {
        this.type = str;
        this.entityId = str2;
        this.price = l2;
        this.name = this.type + "_details_screen";
    }
}
