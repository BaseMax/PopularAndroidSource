package com.farsitel.bazaar.analytics.model.what;

import com.crashlytics.android.answers.SearchEvent;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class SearchPredictionItemClick extends ItemClick {
    public final int position;
    public final String query;
    public final String suggestedText;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchPredictionItemClick(String str, String str2, int i2, String str3) {
        super("search_prediction_item", str3, null);
        j.b(str, SearchEvent.QUERY_ATTRIBUTE);
        j.b(str2, "suggestedText");
        j.b(str3, "referrer");
        this.query = str;
        this.suggestedText = str2;
        this.position = i2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a(SearchEvent.QUERY_ATTRIBUTE, this.query), f.a("suggested_text", this.suggestedText), f.a("position", Integer.valueOf(this.position))));
        return b2;
    }
}
