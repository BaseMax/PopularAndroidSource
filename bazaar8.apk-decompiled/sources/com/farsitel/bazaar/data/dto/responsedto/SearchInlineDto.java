package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import c.e.d.p;
import h.f.b.j;

/* compiled from: AppListDto.kt */
public final class SearchInlineDto {
    @c("jsonReferrer")
    public final p jsonReferrer;
    @c("link")
    public final String link;
    @c("promoType")
    public final String promoType;
    @c("referrer")
    public final Integer referrer;
    @c("title")
    public final String title;
    @c("xml")
    public final String xml;

    public SearchInlineDto(String str, String str2, String str3, String str4, p pVar, Integer num) {
        j.b(str, "link");
        j.b(str2, "title");
        j.b(str3, "xml");
        this.link = str;
        this.title = str2;
        this.xml = str3;
        this.promoType = str4;
        this.jsonReferrer = pVar;
        this.referrer = num;
    }

    public static /* synthetic */ SearchInlineDto copy$default(SearchInlineDto searchInlineDto, String str, String str2, String str3, String str4, p pVar, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchInlineDto.link;
        }
        if ((i2 & 2) != 0) {
            str2 = searchInlineDto.title;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            str3 = searchInlineDto.xml;
        }
        String str6 = str3;
        if ((i2 & 8) != 0) {
            str4 = searchInlineDto.promoType;
        }
        String str7 = str4;
        if ((i2 & 16) != 0) {
            pVar = searchInlineDto.jsonReferrer;
        }
        p pVar2 = pVar;
        if ((i2 & 32) != 0) {
            num = searchInlineDto.referrer;
        }
        return searchInlineDto.copy(str, str5, str6, str7, pVar2, num);
    }

    public final String component1() {
        return this.link;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.xml;
    }

    public final String component4() {
        return this.promoType;
    }

    public final p component5() {
        return this.jsonReferrer;
    }

    public final Integer component6() {
        return this.referrer;
    }

    public final SearchInlineDto copy(String str, String str2, String str3, String str4, p pVar, Integer num) {
        j.b(str, "link");
        j.b(str2, "title");
        j.b(str3, "xml");
        SearchInlineDto searchInlineDto = new SearchInlineDto(str, str2, str3, str4, pVar, num);
        return searchInlineDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0047
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchInlineDto
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.data.dto.responsedto.SearchInlineDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchInlineDto) r3
            java.lang.String r0 = r2.link
            java.lang.String r1 = r3.link
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.xml
            java.lang.String r1 = r3.xml
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.promoType
            java.lang.String r1 = r3.promoType
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            c.e.d.p r0 = r2.jsonReferrer
            c.e.d.p r1 = r3.jsonReferrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.Integer r0 = r2.referrer
            java.lang.Integer r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0045
            goto L_0x0047
        L_0x0045:
            r3 = 0
            return r3
        L_0x0047:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchInlineDto.equals(java.lang.Object):boolean");
    }

    public final p getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getPromoType() {
        return this.promoType;
    }

    public final Integer getReferrer() {
        return this.referrer;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getXml() {
        return this.xml;
    }

    public int hashCode() {
        String str = this.link;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.xml;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.promoType;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        p pVar = this.jsonReferrer;
        int hashCode5 = (hashCode4 + (pVar != null ? pVar.hashCode() : 0)) * 31;
        Integer num = this.referrer;
        if (num != null) {
            i2 = num.hashCode();
        }
        return hashCode5 + i2;
    }

    public String toString() {
        return "SearchInlineDto(link=" + this.link + ", title=" + this.title + ", xml=" + this.xml + ", promoType=" + this.promoType + ", jsonReferrer=" + this.jsonReferrer + ", referrer=" + this.referrer + ")";
    }
}
