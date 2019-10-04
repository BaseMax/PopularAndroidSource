package com.farsitel.bazaar.data.entity;

/* compiled from: Page.kt */
public final class PageProperties {
    public final String backgroundColor;
    public final String textColor;

    public PageProperties(String str, String str2) {
        this.backgroundColor = str;
        this.textColor = str2;
    }

    public static /* synthetic */ PageProperties copy$default(PageProperties pageProperties, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageProperties.backgroundColor;
        }
        if ((i2 & 2) != 0) {
            str2 = pageProperties.textColor;
        }
        return pageProperties.copy(str, str2);
    }

    public final String component1() {
        return this.backgroundColor;
    }

    public final String component2() {
        return this.textColor;
    }

    public final PageProperties copy(String str, String str2) {
        return new PageProperties(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.textColor, (java.lang.Object) r3.textColor) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageProperties
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.entity.PageProperties r3 = (com.farsitel.bazaar.data.entity.PageProperties) r3
            java.lang.String r0 = r2.backgroundColor
            java.lang.String r1 = r3.backgroundColor
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.textColor
            java.lang.String r3 = r3.textColor
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageProperties.equals(java.lang.Object):boolean");
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        String str = this.backgroundColor;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.textColor;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "PageProperties(backgroundColor=" + this.backgroundColor + ", textColor=" + this.textColor + ")";
    }
}
