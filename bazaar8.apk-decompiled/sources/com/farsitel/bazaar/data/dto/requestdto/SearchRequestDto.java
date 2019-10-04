package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import com.crashlytics.android.answers.SearchEvent;
import h.f.b.j;

@h("singleRequest.searchRequest")
/* compiled from: SearchRequestDto.kt */
public final class SearchRequestDto {
    @c("language")
    public final String language;
    @c("offset")
    public final int offset;
    @c("query")
    public final String query;
    @c("referrers")
    public final m referrer;
    @c("entities")
    public final String searchToken;

    public SearchRequestDto(String str, String str2, String str3, int i2, m mVar) {
        j.b(str, SearchEvent.QUERY_ATTRIBUTE);
        j.b(str3, "language");
        j.b(mVar, "referrer");
        this.query = str;
        this.searchToken = str2;
        this.language = str3;
        this.offset = i2;
        this.referrer = mVar;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final String getQuery() {
        return this.query;
    }

    public final m getReferrer() {
        return this.referrer;
    }

    public final String getSearchToken() {
        return this.searchToken;
    }
}
