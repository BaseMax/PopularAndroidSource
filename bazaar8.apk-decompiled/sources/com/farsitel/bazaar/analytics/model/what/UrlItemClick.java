package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class UrlItemClick extends ItemClick {
    public final String url;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UrlItemClick(String str, String str2) {
        super("url", str2, null);
        j.b(str, "url");
        j.b(str2, "referrer");
        this.url = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("url", this.url)));
        return b2;
    }
}
