package com.farsitel.bazaar.ui.search;

import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: SearchHistoryItem.kt */
public final class SearchHistoryItem implements RecyclerData {
    public final String referrer;
    public final String subtitle;
    public final String title;
    public SearchHistoryType type;

    public SearchHistoryItem(String str, String str2, String str3, SearchHistoryType searchHistoryType) {
        j.b(str, "title");
        j.b(searchHistoryType, SessionEventTransform.TYPE_KEY);
        this.title = str;
        this.subtitle = str2;
        this.referrer = str3;
        this.type = searchHistoryType;
    }

    public final String a() {
        return this.title;
    }

    public final SearchHistoryType b() {
        return this.type;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public int getViewType() {
        return this.type.ordinal();
    }
}
