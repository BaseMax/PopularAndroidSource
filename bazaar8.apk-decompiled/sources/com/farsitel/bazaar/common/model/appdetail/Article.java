package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;

/* compiled from: AppDetail.kt */
public final class Article {
    public final String iconUrl;
    public final String id;
    public final String summery;
    public final String title;
    public final String uri;

    public Article(String str, String str2, String str3, String str4, String str5) {
        j.b(str, "id");
        j.b(str2, "title");
        j.b(str3, "uri");
        j.b(str5, "iconUrl");
        this.id = str;
        this.title = str2;
        this.uri = str3;
        this.summery = str4;
        this.iconUrl = str5;
    }

    public static /* synthetic */ Article copy$default(Article article, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = article.id;
        }
        if ((i2 & 2) != 0) {
            str2 = article.title;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = article.uri;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            str4 = article.summery;
        }
        String str8 = str4;
        if ((i2 & 16) != 0) {
            str5 = article.iconUrl;
        }
        return article.copy(str, str6, str7, str8, str5);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.uri;
    }

    public final String component4() {
        return this.summery;
    }

    public final String component5() {
        return this.iconUrl;
    }

    public final Article copy(String str, String str2, String str3, String str4, String str5) {
        j.b(str, "id");
        j.b(str2, "title");
        j.b(str3, "uri");
        j.b(str5, "iconUrl");
        Article article = new Article(str, str2, str3, str4, str5);
        return article;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.iconUrl, (java.lang.Object) r3.iconUrl) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.Article
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.common.model.appdetail.Article r3 = (com.farsitel.bazaar.common.model.appdetail.Article) r3
            java.lang.String r0 = r2.id
            java.lang.String r1 = r3.id
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.uri
            java.lang.String r1 = r3.uri
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.summery
            java.lang.String r1 = r3.summery
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.iconUrl
            java.lang.String r3 = r3.iconUrl
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.Article.equals(java.lang.Object):boolean");
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getId() {
        return this.id;
    }

    public final String getSummery() {
        return this.summery;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUri() {
        return this.uri;
    }

    public int hashCode() {
        String str = this.id;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.uri;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.summery;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.iconUrl;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }

    public final ArticleItem toArticleItem() {
        ArticleItem articleItem = new ArticleItem(this.id, this.title, this.uri, this.summery, this.iconUrl);
        return articleItem;
    }

    public String toString() {
        return "Article(id=" + this.id + ", title=" + this.title + ", uri=" + this.uri + ", summery=" + this.summery + ", iconUrl=" + this.iconUrl + ")";
    }
}
