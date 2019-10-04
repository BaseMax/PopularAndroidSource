package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.common.model.Page;
import h.f.b.j;

/* compiled from: Search.kt */
public final class SearchItems {
    public final Page page;
    public final String searchToken;

    public SearchItems(Page page2, String str) {
        j.b(page2, "page");
        this.page = page2;
        this.searchToken = str;
    }

    public static /* synthetic */ SearchItems copy$default(SearchItems searchItems, Page page2, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            page2 = searchItems.page;
        }
        if ((i2 & 2) != 0) {
            str = searchItems.searchToken;
        }
        return searchItems.copy(page2, str);
    }

    public final Page component1() {
        return this.page;
    }

    public final String component2() {
        return this.searchToken;
    }

    public final SearchItems copy(Page page2, String str) {
        j.b(page2, "page");
        return new SearchItems(page2, str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.searchToken, (java.lang.Object) r3.searchToken) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.SearchItems
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.entity.SearchItems r3 = (com.farsitel.bazaar.data.entity.SearchItems) r3
            com.farsitel.bazaar.common.model.Page r0 = r2.page
            com.farsitel.bazaar.common.model.Page r1 = r3.page
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.searchToken
            java.lang.String r3 = r3.searchToken
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.SearchItems.equals(java.lang.Object):boolean");
    }

    public final Page getPage() {
        return this.page;
    }

    public final String getSearchToken() {
        return this.searchToken;
    }

    public int hashCode() {
        Page page2 = this.page;
        int i2 = 0;
        int hashCode = (page2 != null ? page2.hashCode() : 0) * 31;
        String str = this.searchToken;
        if (str != null) {
            i2 = str.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SearchItems(page=" + this.page + ", searchToken=" + this.searchToken + ")";
    }
}
