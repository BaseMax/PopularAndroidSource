package com.farsitel.bazaar.analytics.model.where;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class PageScreen extends OtherScreens {
    public final String slug;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PageScreen(String str) {
        super("page", null);
        j.b(str, "slug");
        this.slug = str;
    }

    public Map<String, String> b() {
        return z.a(f.a("slug", this.slug));
    }
}
