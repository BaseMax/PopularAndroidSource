package com.farsitel.bazaar.common.model.page;

import h.f.b.j;
import java.util.List;

/* compiled from: PageItem.kt */
public final class PageItem {
    public final List<PageTypeItem> items;
    public final String jsonReferrer;
    public final PageViewConfigItem pageViewConfigItem;
    public final String referrer;

    public PageItem(PageViewConfigItem pageViewConfigItem2, String str, String str2, List<? extends PageTypeItem> list) {
        j.b(pageViewConfigItem2, "pageViewConfigItem");
        j.b(list, "items");
        this.pageViewConfigItem = pageViewConfigItem2;
        this.referrer = str;
        this.jsonReferrer = str2;
        this.items = list;
    }

    public static /* synthetic */ PageItem copy$default(PageItem pageItem, PageViewConfigItem pageViewConfigItem2, String str, String str2, List<PageTypeItem> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            pageViewConfigItem2 = pageItem.pageViewConfigItem;
        }
        if ((i2 & 2) != 0) {
            str = pageItem.referrer;
        }
        if ((i2 & 4) != 0) {
            str2 = pageItem.jsonReferrer;
        }
        if ((i2 & 8) != 0) {
            list = pageItem.items;
        }
        return pageItem.copy(pageViewConfigItem2, str, str2, list);
    }

    public final PageViewConfigItem component1() {
        return this.pageViewConfigItem;
    }

    public final String component2() {
        return this.referrer;
    }

    public final String component3() {
        return this.jsonReferrer;
    }

    public final List<PageTypeItem> component4() {
        return this.items;
    }

    public final PageItem copy(PageViewConfigItem pageViewConfigItem2, String str, String str2, List<? extends PageTypeItem> list) {
        j.b(pageViewConfigItem2, "pageViewConfigItem");
        j.b(list, "items");
        return new PageItem(pageViewConfigItem2, str, str2, list);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.items, (java.lang.Object) r3.items) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.PageItem
            if (r0 == 0) goto L_0x0031
            com.farsitel.bazaar.common.model.page.PageItem r3 = (com.farsitel.bazaar.common.model.page.PageItem) r3
            com.farsitel.bazaar.common.model.page.PageViewConfigItem r0 = r2.pageViewConfigItem
            com.farsitel.bazaar.common.model.page.PageViewConfigItem r1 = r3.pageViewConfigItem
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.referrer
            java.lang.String r1 = r3.referrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.jsonReferrer
            java.lang.String r1 = r3.jsonReferrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.util.List<com.farsitel.bazaar.common.model.page.PageTypeItem> r0 = r2.items
            java.util.List<com.farsitel.bazaar.common.model.page.PageTypeItem> r3 = r3.items
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.PageItem.equals(java.lang.Object):boolean");
    }

    public final List<PageTypeItem> getItems() {
        return this.items;
    }

    public final String getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final PageViewConfigItem getPageViewConfigItem() {
        return this.pageViewConfigItem;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public int hashCode() {
        PageViewConfigItem pageViewConfigItem2 = this.pageViewConfigItem;
        int i2 = 0;
        int hashCode = (pageViewConfigItem2 != null ? pageViewConfigItem2.hashCode() : 0) * 31;
        String str = this.referrer;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.jsonReferrer;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<PageTypeItem> list = this.items;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "PageItem(pageViewConfigItem=" + this.pageViewConfigItem + ", referrer=" + this.referrer + ", jsonReferrer=" + this.jsonReferrer + ", items=" + this.items + ")";
    }
}
