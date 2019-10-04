package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class PublisherItemClick extends ItemClick {
    public final String publisherName;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PublisherItemClick(String str, String str2) {
        super("video_publisher", str2, null);
        j.b(str, "publisherName");
        j.b(str2, "referrer");
        this.publisherName = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("video_publisher_name", this.publisherName)));
        return b2;
    }
}
