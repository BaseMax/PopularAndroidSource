package com.farsitel.bazaar.analytics.model.where;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class CastPageScreen extends OtherScreens {
    public final String castId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CastPageScreen(String str) {
        super("cast_page", null);
        j.b(str, "castId");
        this.castId = str;
    }

    public Map<String, String> b() {
        return z.a(f.a("cast_id", this.castId));
    }
}
