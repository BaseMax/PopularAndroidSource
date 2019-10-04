package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: SearchJsonReferrerDto.kt */
public final class SearchJsonReferrerDto {
    @c("searchQuery")
    public final String searchQuery;
    @c("slug")
    public final String slug;

    public SearchJsonReferrerDto(String str, String str2) {
        j.b(str, "searchQuery");
        j.b(str2, "slug");
        this.searchQuery = str;
        this.slug = str2;
    }

    public static /* synthetic */ SearchJsonReferrerDto copy$default(SearchJsonReferrerDto searchJsonReferrerDto, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchJsonReferrerDto.searchQuery;
        }
        if ((i2 & 2) != 0) {
            str2 = searchJsonReferrerDto.slug;
        }
        return searchJsonReferrerDto.copy(str, str2);
    }

    public final String component1() {
        return this.searchQuery;
    }

    public final String component2() {
        return this.slug;
    }

    public final SearchJsonReferrerDto copy(String str, String str2) {
        j.b(str, "searchQuery");
        j.b(str2, "slug");
        return new SearchJsonReferrerDto(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.slug, (java.lang.Object) r3.slug) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchJsonReferrerDto
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.dto.responsedto.SearchJsonReferrerDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchJsonReferrerDto) r3
            java.lang.String r0 = r2.searchQuery
            java.lang.String r1 = r3.searchQuery
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.slug
            java.lang.String r3 = r3.slug
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchJsonReferrerDto.equals(java.lang.Object):boolean");
    }

    public final String getSearchQuery() {
        return this.searchQuery;
    }

    public final String getSlug() {
        return this.slug;
    }

    public int hashCode() {
        String str = this.searchQuery;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.slug;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SearchJsonReferrerDto(searchQuery=" + this.searchQuery + ", slug=" + this.slug + ")";
    }
}
