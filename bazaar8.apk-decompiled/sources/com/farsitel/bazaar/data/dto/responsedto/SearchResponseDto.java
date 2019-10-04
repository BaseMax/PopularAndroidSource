package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.data.entity.SearchItems;
import h.a.l;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SearchResponseDto.kt */
public final class SearchResponseDto {
    @c("background")
    public final String background;
    @c("jsonReferrer")
    public final SearchJsonReferrerDto jsonReferrer;
    @c("resultRows")
    public final List<PageRowDto> pageRow;
    @c("ref")
    public final String ref;
    @c("referrerList")
    public final String referrer;
    @c("searchToken")
    public final String searchToken;
    @c("textColor")
    public final String textColor;
    @c("type")
    public final String type;

    public SearchResponseDto(List<PageRowDto> list, String str, String str2, String str3, String str4, String str5, SearchJsonReferrerDto searchJsonReferrerDto, String str6) {
        j.b(list, "pageRow");
        j.b(str, SessionEventTransform.TYPE_KEY);
        j.b(str3, "ref");
        j.b(str4, "background");
        j.b(str5, "textColor");
        j.b(searchJsonReferrerDto, "jsonReferrer");
        j.b(str6, "referrer");
        this.pageRow = list;
        this.type = str;
        this.searchToken = str2;
        this.ref = str3;
        this.background = str4;
        this.textColor = str5;
        this.jsonReferrer = searchJsonReferrerDto;
        this.referrer = str6;
    }

    public static /* synthetic */ SearchResponseDto copy$default(SearchResponseDto searchResponseDto, List list, String str, String str2, String str3, String str4, String str5, SearchJsonReferrerDto searchJsonReferrerDto, String str6, int i2, Object obj) {
        SearchResponseDto searchResponseDto2 = searchResponseDto;
        int i3 = i2;
        return searchResponseDto.copy((i3 & 1) != 0 ? searchResponseDto2.pageRow : list, (i3 & 2) != 0 ? searchResponseDto2.type : str, (i3 & 4) != 0 ? searchResponseDto2.searchToken : str2, (i3 & 8) != 0 ? searchResponseDto2.ref : str3, (i3 & 16) != 0 ? searchResponseDto2.background : str4, (i3 & 32) != 0 ? searchResponseDto2.textColor : str5, (i3 & 64) != 0 ? searchResponseDto2.jsonReferrer : searchJsonReferrerDto, (i3 & 128) != 0 ? searchResponseDto2.referrer : str6);
    }

    public final List<PageRowDto> component1() {
        return this.pageRow;
    }

    public final String component2() {
        return this.type;
    }

    public final String component3() {
        return this.searchToken;
    }

    public final String component4() {
        return this.ref;
    }

    public final String component5() {
        return this.background;
    }

    public final String component6() {
        return this.textColor;
    }

    public final SearchJsonReferrerDto component7() {
        return this.jsonReferrer;
    }

    public final String component8() {
        return this.referrer;
    }

    public final SearchResponseDto copy(List<PageRowDto> list, String str, String str2, String str3, String str4, String str5, SearchJsonReferrerDto searchJsonReferrerDto, String str6) {
        j.b(list, "pageRow");
        j.b(str, SessionEventTransform.TYPE_KEY);
        j.b(str3, "ref");
        j.b(str4, "background");
        String str7 = str5;
        j.b(str7, "textColor");
        SearchJsonReferrerDto searchJsonReferrerDto2 = searchJsonReferrerDto;
        j.b(searchJsonReferrerDto2, "jsonReferrer");
        String str8 = str6;
        j.b(str8, "referrer");
        SearchResponseDto searchResponseDto = new SearchResponseDto(list, str, str2, str3, str4, str7, searchJsonReferrerDto2, str8);
        return searchResponseDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0056, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x005b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x005b
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchResponseDto
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchResponseDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchResponseDto) r3
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.PageRowDto> r0 = r2.pageRow
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.PageRowDto> r1 = r3.pageRow
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.type
            java.lang.String r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.searchToken
            java.lang.String r1 = r3.searchToken
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.ref
            java.lang.String r1 = r3.ref
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.background
            java.lang.String r1 = r3.background
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.textColor
            java.lang.String r1 = r3.textColor
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchJsonReferrerDto r0 = r2.jsonReferrer
            com.farsitel.bazaar.data.dto.responsedto.SearchJsonReferrerDto r1 = r3.jsonReferrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0059
            goto L_0x005b
        L_0x0059:
            r3 = 0
            return r3
        L_0x005b:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchResponseDto.equals(java.lang.Object):boolean");
    }

    public final String getBackground() {
        return this.background;
    }

    public final SearchJsonReferrerDto getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final List<PageRowDto> getPageRow() {
        return this.pageRow;
    }

    public final String getRef() {
        return this.ref;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSearchToken() {
        return this.searchToken;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        List<PageRowDto> list = this.pageRow;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.type;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.searchToken;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.ref;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.background;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.textColor;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        SearchJsonReferrerDto searchJsonReferrerDto = this.jsonReferrer;
        int hashCode7 = (hashCode6 + (searchJsonReferrerDto != null ? searchJsonReferrerDto.hashCode() : 0)) * 31;
        String str6 = this.referrer;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode7 + i2;
    }

    public final SearchItems toSearchItems() {
        List list;
        List<PageRowDto> list2 = this.pageRow;
        if (!(list2 == null || list2.isEmpty())) {
            list = new ArrayList();
            for (PageRowDto pageRowDto : this.pageRow) {
                if (pageRowDto.notEmptyAtLeastOneField()) {
                    list.addAll(pageRowDto.toPageTypeItem());
                }
            }
        } else {
            list = l.a();
        }
        Page page = new Page(null, null, null, list, this.referrer, 7, null);
        return new SearchItems(page, this.searchToken);
    }

    public String toString() {
        return "SearchResponseDto(pageRow=" + this.pageRow + ", type=" + this.type + ", searchToken=" + this.searchToken + ", ref=" + this.ref + ", background=" + this.background + ", textColor=" + this.textColor + ", jsonReferrer=" + this.jsonReferrer + ", referrer=" + this.referrer + ")";
    }
}
