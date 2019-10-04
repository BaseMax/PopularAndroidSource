package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.Article;

/* compiled from: AppDetailResponseDto.kt */
public final class j {
    @c("icon")
    public final String iconUrl;
    @c("pressID")
    public final String id;
    @c("summery")
    public final String summery;
    @c("title")
    public final String title;
    @c("url")
    public final String uri;

    public final Article a() {
        Article article = new Article(this.id, this.title, this.uri, this.summery, this.iconUrl);
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
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.j
            if (r0 == 0) goto L_0x003b
            c.c.a.e.d.c.a.j r3 = (c.c.a.e.d.c.a.j) r3
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.j.equals(java.lang.Object):boolean");
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

    public String toString() {
        return "ArticleDto(id=" + this.id + ", title=" + this.title + ", uri=" + this.uri + ", summery=" + this.summery + ", iconUrl=" + this.iconUrl + ")";
    }
}
