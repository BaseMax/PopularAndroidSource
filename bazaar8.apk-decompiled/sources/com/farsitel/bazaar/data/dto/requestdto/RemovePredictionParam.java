package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.removeHistoryRequest")
/* compiled from: SearchPredictionRequestDto.kt */
public final class RemovePredictionParam {
    @c("text")
    public final String text;

    public RemovePredictionParam(String str) {
        j.b(str, "text");
        this.text = str;
    }

    public static /* synthetic */ RemovePredictionParam copy$default(RemovePredictionParam removePredictionParam, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = removePredictionParam.text;
        }
        return removePredictionParam.copy(str);
    }

    public final String component1() {
        return this.text;
    }

    public final RemovePredictionParam copy(String str) {
        j.b(str, "text");
        return new RemovePredictionParam(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof RemovePredictionParam) && j.a((Object) this.text, (Object) ((RemovePredictionParam) obj).text));
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
        return "RemovePredictionParam(text=" + this.text + ")";
    }
}
