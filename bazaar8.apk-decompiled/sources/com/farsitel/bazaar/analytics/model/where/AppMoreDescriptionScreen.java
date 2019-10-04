package com.farsitel.bazaar.analytics.model.where;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class AppMoreDescriptionScreen extends OtherScreens {
    public final String packageName;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppMoreDescriptionScreen(String str) {
        super("app_more_description", null);
        j.b(str, "packageName");
        this.packageName = str;
    }

    public Map<String, String> b() {
        return z.a(f.a("entity_id", this.packageName));
    }
}
