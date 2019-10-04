package com.farsitel.bazaar.common.model.page;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: GenreItem.kt */
public final class GenreItem implements Serializable {
    public final String icon;
    public final String info;
    public final String jsonReferer;
    public final String slug;
    public final String title;

    public GenreItem(String str, String str2, String str3, String str4, String str5) {
        j.b(str, "icon");
        j.b(str2, "title");
        j.b(str5, "slug");
        this.icon = str;
        this.title = str2;
        this.info = str3;
        this.jsonReferer = str4;
        this.slug = str5;
    }

    public static /* synthetic */ GenreItem copy$default(GenreItem genreItem, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = genreItem.icon;
        }
        if ((i2 & 2) != 0) {
            str2 = genreItem.title;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = genreItem.info;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            str4 = genreItem.jsonReferer;
        }
        String str8 = str4;
        if ((i2 & 16) != 0) {
            str5 = genreItem.slug;
        }
        return genreItem.copy(str, str6, str7, str8, str5);
    }

    public final String component1() {
        return this.icon;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.info;
    }

    public final String component4() {
        return this.jsonReferer;
    }

    public final String component5() {
        return this.slug;
    }

    public final GenreItem copy(String str, String str2, String str3, String str4, String str5) {
        j.b(str, "icon");
        j.b(str2, "title");
        j.b(str5, "slug");
        GenreItem genreItem = new GenreItem(str, str2, str3, str4, str5);
        return genreItem;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.slug, (java.lang.Object) r3.slug) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.GenreItem
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.common.model.page.GenreItem r3 = (com.farsitel.bazaar.common.model.page.GenreItem) r3
            java.lang.String r0 = r2.icon
            java.lang.String r1 = r3.icon
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.info
            java.lang.String r1 = r3.info
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.jsonReferer
            java.lang.String r1 = r3.jsonReferer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.slug
            java.lang.String r3 = r3.slug
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.GenreItem.equals(java.lang.Object):boolean");
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getInfo() {
        return this.info;
    }

    public final String getJsonReferer() {
        return this.jsonReferer;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.icon;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.info;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.jsonReferer;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.slug;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "GenreItem(icon=" + this.icon + ", title=" + this.title + ", info=" + this.info + ", jsonReferer=" + this.jsonReferer + ", slug=" + this.slug + ")";
    }
}
