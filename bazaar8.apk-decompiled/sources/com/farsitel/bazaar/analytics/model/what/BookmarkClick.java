package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class BookmarkClick extends ButtonClick {
    public final boolean state;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkClick(boolean z, String str) {
        super("bookmark", str, null);
        j.b(str, "referrer");
        this.state = z;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("state", this.state ? "added" : "removed")));
        return b2;
    }
}
