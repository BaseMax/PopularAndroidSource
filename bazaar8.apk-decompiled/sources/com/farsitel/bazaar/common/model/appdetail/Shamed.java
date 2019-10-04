package com.farsitel.bazaar.common.model.appdetail;

/* compiled from: AppDetail.kt */
public final class Shamed {
    public final String icon;
    public final String id;
    public final String url;

    public Shamed(String str, String str2, String str3) {
        this.id = str;
        this.url = str2;
        this.icon = str3;
    }

    public static /* synthetic */ Shamed copy$default(Shamed shamed, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = shamed.id;
        }
        if ((i2 & 2) != 0) {
            str2 = shamed.url;
        }
        if ((i2 & 4) != 0) {
            str3 = shamed.icon;
        }
        return shamed.copy(str, str2, str3);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.url;
    }

    public final String component3() {
        return this.icon;
    }

    public final Shamed copy(String str, String str2, String str3) {
        return new Shamed(str, str2, str3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.icon, (java.lang.Object) r3.icon) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.Shamed
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.common.model.appdetail.Shamed r3 = (com.farsitel.bazaar.common.model.appdetail.Shamed) r3
            java.lang.String r0 = r2.id
            java.lang.String r1 = r3.id
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.url
            java.lang.String r1 = r3.url
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.icon
            java.lang.String r3 = r3.icon
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.Shamed.equals(java.lang.Object):boolean");
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.id;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.id;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.url;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.icon;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "Shamed(id=" + this.id + ", url=" + this.url + ", icon=" + this.icon + ")";
    }
}
