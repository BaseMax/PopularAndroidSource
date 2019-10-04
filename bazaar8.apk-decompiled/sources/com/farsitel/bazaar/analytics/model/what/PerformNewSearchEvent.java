package com.farsitel.bazaar.analytics.model.what;

import com.crashlytics.android.answers.SearchEvent;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class PerformNewSearchEvent extends ReferrerNeededEvent {
    public final String name = SearchEvent.TYPE;
    public final String newQuery;
    public final String searchToken;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PerformNewSearchEvent(String str, String str2, String str3) {
        super(str3);
        j.b(str, "newQuery");
        j.b(str2, "searchToken");
        j.b(str3, "referrer");
        this.newQuery = str;
        this.searchToken = str2;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = super.c();
        c2.putAll(A.b(f.a("new_query", this.newQuery), f.a("search_token", this.searchToken)));
        return c2;
    }
}
