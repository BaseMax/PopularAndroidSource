package com.farsitel.bazaar.ui.appdetail;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: ToolbarInfoModel.kt */
public final class ToolbarInfoModel implements Serializable {
    public final String appName;
    public final String iconUrl;
    public final String pageName;

    public ToolbarInfoModel(String str, String str2, String str3) {
        j.b(str, "iconUrl");
        j.b(str2, "appName");
        j.b(str3, "pageName");
        this.iconUrl = str;
        this.appName = str2;
        this.pageName = str3;
    }

    public final String a() {
        return this.appName;
    }

    public final String b() {
        return this.iconUrl;
    }

    public final String c() {
        return this.pageName;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.pageName, (java.lang.Object) r3.pageName) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r3 = (com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel) r3
            java.lang.String r0 = r2.iconUrl
            java.lang.String r1 = r3.iconUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.appName
            java.lang.String r1 = r3.appName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.pageName
            java.lang.String r3 = r3.pageName
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.iconUrl;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.appName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.pageName;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "ToolbarInfoModel(iconUrl=" + this.iconUrl + ", appName=" + this.appName + ", pageName=" + this.pageName + ")";
    }
}
