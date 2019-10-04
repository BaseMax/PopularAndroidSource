package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: AppListDto.kt */
public final class SearchRowListDto {
    @c("contents")
    public final List<SearchRowItemDto> contents;
    @c("description")
    public final String description;
    @c("more")
    public final String more;
    @c("searchQuery")
    public final String searchQuery;
    @c("searchToken")
    public final String searchToken;
    @c("title")
    public final String title;

    public SearchRowListDto(String str, String str2, List<SearchRowItemDto> list, String str3, String str4, String str5) {
        j.b(str, "title");
        j.b(list, "contents");
        j.b(str5, "searchQuery");
        this.title = str;
        this.description = str2;
        this.contents = list;
        this.searchToken = str3;
        this.more = str4;
        this.searchQuery = str5;
    }

    public static /* synthetic */ SearchRowListDto copy$default(SearchRowListDto searchRowListDto, String str, String str2, List<SearchRowItemDto> list, String str3, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchRowListDto.title;
        }
        if ((i2 & 2) != 0) {
            str2 = searchRowListDto.description;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            list = searchRowListDto.contents;
        }
        List<SearchRowItemDto> list2 = list;
        if ((i2 & 8) != 0) {
            str3 = searchRowListDto.searchToken;
        }
        String str7 = str3;
        if ((i2 & 16) != 0) {
            str4 = searchRowListDto.more;
        }
        String str8 = str4;
        if ((i2 & 32) != 0) {
            str5 = searchRowListDto.searchQuery;
        }
        return searchRowListDto.copy(str, str6, list2, str7, str8, str5);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.description;
    }

    public final List<SearchRowItemDto> component3() {
        return this.contents;
    }

    public final String component4() {
        return this.searchToken;
    }

    public final String component5() {
        return this.more;
    }

    public final String component6() {
        return this.searchQuery;
    }

    public final SearchRowListDto copy(String str, String str2, List<SearchRowItemDto> list, String str3, String str4, String str5) {
        j.b(str, "title");
        j.b(list, "contents");
        j.b(str5, "searchQuery");
        SearchRowListDto searchRowListDto = new SearchRowListDto(str, str2, list, str3, str4, str5);
        return searchRowListDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.searchQuery, (java.lang.Object) r3.searchQuery) != false) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0047
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.description
            java.lang.String r1 = r3.description
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.SearchRowItemDto> r0 = r2.contents
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.SearchRowItemDto> r1 = r3.contents
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.searchToken
            java.lang.String r1 = r3.searchToken
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.more
            java.lang.String r1 = r3.more
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.searchQuery
            java.lang.String r3 = r3.searchQuery
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto.equals(java.lang.Object):boolean");
    }

    public final List<SearchRowItemDto> getContents() {
        return this.contents;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getMore() {
        return this.more;
    }

    public final String getSearchQuery() {
        return this.searchQuery;
    }

    public final String getSearchToken() {
        return this.searchToken;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<SearchRowItemDto> list = this.contents;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        String str3 = this.searchToken;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.more;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.searchQuery;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode5 + i2;
    }

    public String toString() {
        return "SearchRowListDto(title=" + this.title + ", description=" + this.description + ", contents=" + this.contents + ", searchToken=" + this.searchToken + ", more=" + this.more + ", searchQuery=" + this.searchQuery + ")";
    }
}
