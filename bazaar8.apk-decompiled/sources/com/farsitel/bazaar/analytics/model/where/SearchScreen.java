package com.farsitel.bazaar.analytics.model.where;

import com.crashlytics.android.answers.SearchEvent;
import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class SearchScreen extends OtherScreens {
    public final String query;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchScreen(String str) {
        super(SearchEvent.TYPE, null);
        j.b(str, SearchEvent.QUERY_ATTRIBUTE);
        this.query = str;
    }

    public Map<String, String> b() {
        return z.a(f.a(SearchEvent.QUERY_ATTRIBUTE, this.query));
    }
}
