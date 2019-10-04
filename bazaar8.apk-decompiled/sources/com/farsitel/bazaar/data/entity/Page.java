package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: Page.kt */
public final class Page {
    public final String action;
    public final String description;
    public final List<PageItem> items;
    public final PageProperties properties;
    public final String slug;
    public final String title;

    public Page(String str, String str2, String str3, String str4, List<? extends PageItem> list, PageProperties pageProperties) {
        j.b(str4, "slug");
        j.b(list, "items");
        j.b(pageProperties, "properties");
        this.title = str;
        this.description = str2;
        this.action = str3;
        this.slug = str4;
        this.items = list;
        this.properties = pageProperties;
    }

    public static /* synthetic */ Page copy$default(Page page, String str, String str2, String str3, String str4, List<PageItem> list, PageProperties pageProperties, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = page.title;
        }
        if ((i2 & 2) != 0) {
            str2 = page.description;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            str3 = page.action;
        }
        String str6 = str3;
        if ((i2 & 8) != 0) {
            str4 = page.slug;
        }
        String str7 = str4;
        if ((i2 & 16) != 0) {
            list = page.items;
        }
        List<PageItem> list2 = list;
        if ((i2 & 32) != 0) {
            pageProperties = page.properties;
        }
        return page.copy(str, str5, str6, str7, list2, pageProperties);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.description;
    }

    public final String component3() {
        return this.action;
    }

    public final String component4() {
        return this.slug;
    }

    public final List<PageItem> component5() {
        return this.items;
    }

    public final PageProperties component6() {
        return this.properties;
    }

    public final Page copy(String str, String str2, String str3, String str4, List<? extends PageItem> list, PageProperties pageProperties) {
        j.b(str4, "slug");
        j.b(list, "items");
        j.b(pageProperties, "properties");
        Page page = new Page(str, str2, str3, str4, list, pageProperties);
        return page;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.properties, (java.lang.Object) r3.properties) != false) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0047
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.Page
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.data.entity.Page r3 = (com.farsitel.bazaar.data.entity.Page) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.description
            java.lang.String r1 = r3.description
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.action
            java.lang.String r1 = r3.action
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.slug
            java.lang.String r1 = r3.slug
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.util.List<com.farsitel.bazaar.data.entity.PageItem> r0 = r2.items
            java.util.List<com.farsitel.bazaar.data.entity.PageItem> r1 = r3.items
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.data.entity.PageProperties r0 = r2.properties
            com.farsitel.bazaar.data.entity.PageProperties r3 = r3.properties
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.Page.equals(java.lang.Object):boolean");
    }

    public final String getAction() {
        return this.action;
    }

    public final String getDescription() {
        return this.description;
    }

    public final List<PageItem> getItems() {
        return this.items;
    }

    public final PageProperties getProperties() {
        return this.properties;
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
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.action;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.slug;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        List<PageItem> list = this.items;
        int hashCode5 = (hashCode4 + (list != null ? list.hashCode() : 0)) * 31;
        PageProperties pageProperties = this.properties;
        if (pageProperties != null) {
            i2 = pageProperties.hashCode();
        }
        return hashCode5 + i2;
    }

    public String toString() {
        return "Page(title=" + this.title + ", description=" + this.description + ", action=" + this.action + ", slug=" + this.slug + ", items=" + this.items + ", properties=" + this.properties + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Page(String str, String str2, String str3, String str4, List list, PageProperties pageProperties, int i2, f fVar) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, str4, list, pageProperties);
    }
}
