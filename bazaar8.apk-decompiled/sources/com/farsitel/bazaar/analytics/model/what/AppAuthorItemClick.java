package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class AppAuthorItemClick extends ItemClick {
    public final String authorName;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppAuthorItemClick(String str, String str2) {
        super("app_author", str2, null);
        j.b(str, "authorName");
        j.b(str2, "referrer");
        this.authorName = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("author_name", this.authorName)));
        return b2;
    }
}
