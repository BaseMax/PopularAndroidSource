package com.farsitel.bazaar.common.model;

import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: Page.kt */
public final class Page {
    public final String action;
    public final List<PageTypeItem> items;
    public final String referrer;
    public final String slug;
    public final String title;

    public Page(String str, String str2, String str3, List<? extends PageTypeItem> list, String str4) {
        j.b(list, "items");
        this.title = str;
        this.action = str2;
        this.slug = str3;
        this.items = list;
        this.referrer = str4;
    }

    public static /* synthetic */ Page copy$default(Page page, String str, String str2, String str3, List<PageTypeItem> list, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = page.title;
        }
        if ((i2 & 2) != 0) {
            str2 = page.action;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            str3 = page.slug;
        }
        String str6 = str3;
        if ((i2 & 8) != 0) {
            list = page.items;
        }
        List<PageTypeItem> list2 = list;
        if ((i2 & 16) != 0) {
            str4 = page.referrer;
        }
        return page.copy(str, str5, str6, list2, str4);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.action;
    }

    public final String component3() {
        return this.slug;
    }

    public final List<PageTypeItem> component4() {
        return this.items;
    }

    public final String component5() {
        return this.referrer;
    }

    public final Page copy(String str, String str2, String str3, List<? extends PageTypeItem> list, String str4) {
        j.b(list, "items");
        Page page = new Page(str, str2, str3, list, str4);
        return page;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.Page
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.common.model.Page r3 = (com.farsitel.bazaar.common.model.Page) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.action
            java.lang.String r1 = r3.action
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.slug
            java.lang.String r1 = r3.slug
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.util.List<com.farsitel.bazaar.common.model.page.PageTypeItem> r0 = r2.items
            java.util.List<com.farsitel.bazaar.common.model.page.PageTypeItem> r1 = r3.items
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.Page.equals(java.lang.Object):boolean");
    }

    public final String getAction() {
        return this.action;
    }

    public final List<PageTypeItem> getItems() {
        return this.items;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.action;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.slug;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<PageTypeItem> list = this.items;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "Page(title=" + this.title + ", action=" + this.action + ", slug=" + this.slug + ", items=" + this.items + ", referrer=" + this.referrer + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Page(String str, String str2, String str3, List list, String str4, int i2, f fVar) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, list, (i2 & 16) != 0 ? null : str4);
    }
}
