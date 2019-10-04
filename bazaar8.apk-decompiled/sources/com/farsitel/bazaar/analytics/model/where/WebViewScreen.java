package com.farsitel.bazaar.analytics.model.where;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class WebViewScreen extends OtherScreens {
    public final String url;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public WebViewScreen(String str) {
        super("web_view", null);
        j.b(str, "url");
        this.url = str;
    }

    public Map<String, String> b() {
        return z.a(f.a("url", this.url));
    }
}
