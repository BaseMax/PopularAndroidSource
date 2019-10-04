package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class SearchHistoryItemClick extends ItemClick {
    public final String clickedItem;
    public final int position;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchHistoryItemClick(int i2, String str, String str2) {
        super("search_history_item", str2, null);
        j.b(str, "clickedItem");
        j.b(str2, "referrer");
        this.position = i2;
        this.clickedItem = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("clicked_item", this.clickedItem), f.a("clicked_position", Integer.valueOf(this.position))));
        return b2;
    }
}
