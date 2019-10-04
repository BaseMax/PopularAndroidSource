package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import c.e.d.p;
import h.f.b.j;

/* compiled from: AppListDto.kt */
public final class SearchPromoDto {
    @c("imageUrl")
    public final String imageUrl;
    @c("jsonReferrer")
    public final p jsonReferrer;
    @c("link")
    public final String link;
    @c("referrer")
    public final Integer referrer;
    @c("title")
    public final String title;

    public SearchPromoDto(String str, String str2, String str3, p pVar, Integer num) {
        j.b(str, "title");
        j.b(str2, "imageUrl");
        j.b(str3, "link");
        this.title = str;
        this.imageUrl = str2;
        this.link = str3;
        this.jsonReferrer = pVar;
        this.referrer = num;
    }

    public static /* synthetic */ SearchPromoDto copy$default(SearchPromoDto searchPromoDto, String str, String str2, String str3, p pVar, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchPromoDto.title;
        }
        if ((i2 & 2) != 0) {
            str2 = searchPromoDto.imageUrl;
        }
        String str4 = str2;
        if ((i2 & 4) != 0) {
            str3 = searchPromoDto.link;
        }
        String str5 = str3;
        if ((i2 & 8) != 0) {
            pVar = searchPromoDto.jsonReferrer;
        }
        p pVar2 = pVar;
        if ((i2 & 16) != 0) {
            num = searchPromoDto.referrer;
        }
        return searchPromoDto.copy(str, str4, str5, pVar2, num);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.imageUrl;
    }

    public final String component3() {
        return this.link;
    }

    public final p component4() {
        return this.jsonReferrer;
    }

    public final Integer component5() {
        return this.referrer;
    }

    public final SearchPromoDto copy(String str, String str2, String str3, p pVar, Integer num) {
        j.b(str, "title");
        j.b(str2, "imageUrl");
        j.b(str3, "link");
        SearchPromoDto searchPromoDto = new SearchPromoDto(str, str2, str3, pVar, num);
        return searchPromoDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.imageUrl
            java.lang.String r1 = r3.imageUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.link
            java.lang.String r1 = r3.link
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            c.e.d.p r0 = r2.jsonReferrer
            c.e.d.p r1 = r3.jsonReferrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.Integer r0 = r2.referrer
            java.lang.Integer r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x003b
            goto L_0x003d
        L_0x003b:
            r3 = 0
            return r3
        L_0x003d:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto.equals(java.lang.Object):boolean");
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final p getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final String getLink() {
        return this.link;
    }

    public final Integer getReferrer() {
        return this.referrer;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.imageUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.link;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        p pVar = this.jsonReferrer;
        int hashCode4 = (hashCode3 + (pVar != null ? pVar.hashCode() : 0)) * 31;
        Integer num = this.referrer;
        if (num != null) {
            i2 = num.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "SearchPromoDto(title=" + this.title + ", imageUrl=" + this.imageUrl + ", link=" + this.link + ", jsonReferrer=" + this.jsonReferrer + ", referrer=" + this.referrer + ")";
    }
}
