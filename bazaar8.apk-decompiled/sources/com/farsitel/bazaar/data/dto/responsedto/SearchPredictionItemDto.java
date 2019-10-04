package com.farsitel.bazaar.data.dto.responsedto;

import c.c.a.c.d.e;
import c.e.d.a.c;
import h.f.b.f;
import h.f.b.j;

/* compiled from: SearchPredictionResponseDto.kt */
public final class SearchPredictionItemDto {
    @c("referrerList")
    public final String referrer;
    @c("subtitle")
    public final String subtitle;
    @c("title")
    public final String title;
    @c("type")
    public final String type;

    public SearchPredictionItemDto(String str, String str2, String str3, String str4) {
        j.b(str, "title");
        this.title = str;
        this.subtitle = str2;
        this.type = str3;
        this.referrer = str4;
    }

    public static /* synthetic */ SearchPredictionItemDto copy$default(SearchPredictionItemDto searchPredictionItemDto, String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchPredictionItemDto.title;
        }
        if ((i2 & 2) != 0) {
            str2 = searchPredictionItemDto.subtitle;
        }
        if ((i2 & 4) != 0) {
            str3 = searchPredictionItemDto.type;
        }
        if ((i2 & 8) != 0) {
            str4 = searchPredictionItemDto.referrer;
        }
        return searchPredictionItemDto.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.subtitle;
    }

    public final String component3() {
        return this.type;
    }

    public final String component4() {
        return this.referrer;
    }

    public final SearchPredictionItemDto copy(String str, String str2, String str3, String str4) {
        j.b(str, "title");
        return new SearchPredictionItemDto(str, str2, str3, str4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchPredictionItemDto
            if (r0 == 0) goto L_0x0031
            com.farsitel.bazaar.data.dto.responsedto.SearchPredictionItemDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchPredictionItemDto) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.subtitle
            java.lang.String r1 = r3.subtitle
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.type
            java.lang.String r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchPredictionItemDto.equals(java.lang.Object):boolean");
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.subtitle;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.type;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "SearchPredictionItemDto(title=" + this.title + ", subtitle=" + this.subtitle + ", type=" + this.type + ", referrer=" + this.referrer + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SearchPredictionItemDto(String str, String str2, String str3, String str4, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? e.a() : str4);
    }
}
