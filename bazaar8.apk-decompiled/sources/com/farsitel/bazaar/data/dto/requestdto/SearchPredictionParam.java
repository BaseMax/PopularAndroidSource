package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.predictionRequest")
/* compiled from: SearchPredictionRequestDto.kt */
public final class SearchPredictionParam {
    @c("text")
    public final String text;

    public SearchPredictionParam(String str) {
        j.b(str, "text");
        this.text = str;
    }

    public static /* synthetic */ SearchPredictionParam copy$default(SearchPredictionParam searchPredictionParam, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchPredictionParam.text;
        }
        return searchPredictionParam.copy(str);
    }

    public final String component1() {
        return this.text;
    }

    public final SearchPredictionParam copy(String str) {
        j.b(str, "text");
        return new SearchPredictionParam(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SearchPredictionParam) && j.a((Object) this.text, (Object) ((SearchPredictionParam) obj).text));
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        String str = this.text;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "SearchPredictionParam(text=" + this.text + ")";
    }
}
