package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import java.io.Serializable;

/* compiled from: ViewHolderItem.kt */
public final class DeveloperInfoSectionItem implements RecyclerData, Serializable {
    public final String appEmail;
    public final String appPhone;
    public final String homepage;
    public final boolean showEmailDivider;
    public final boolean showPhoneDivider;
    public final int viewType = AppDetailViewItemType.DEVELOPER_INFO.ordinal();

    public DeveloperInfoSectionItem(String str, String str2, String str3) {
        this.appEmail = str;
        this.appPhone = str2;
        this.homepage = str3;
        boolean z = true;
        this.showEmailDivider = (this.appEmail == null || (this.appPhone == null && this.homepage == null)) ? false : true;
        this.showPhoneDivider = (this.homepage == null || this.appPhone == null) ? false : z;
    }

    public static /* synthetic */ DeveloperInfoSectionItem copy$default(DeveloperInfoSectionItem developerInfoSectionItem, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = developerInfoSectionItem.appEmail;
        }
        if ((i2 & 2) != 0) {
            str2 = developerInfoSectionItem.appPhone;
        }
        if ((i2 & 4) != 0) {
            str3 = developerInfoSectionItem.homepage;
        }
        return developerInfoSectionItem.copy(str, str2, str3);
    }

    public final String component1() {
        return this.appEmail;
    }

    public final String component2() {
        return this.appPhone;
    }

    public final String component3() {
        return this.homepage;
    }

    public final DeveloperInfoSectionItem copy(String str, String str2, String str3) {
        return new DeveloperInfoSectionItem(str, str2, str3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.homepage, (java.lang.Object) r3.homepage) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem r3 = (com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem) r3
            java.lang.String r0 = r2.appEmail
            java.lang.String r1 = r3.appEmail
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.appPhone
            java.lang.String r1 = r3.appPhone
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.homepage
            java.lang.String r3 = r3.homepage
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem.equals(java.lang.Object):boolean");
    }

    public final String getAppEmail() {
        return this.appEmail;
    }

    public final String getAppPhone() {
        return this.appPhone;
    }

    public final String getHomepage() {
        return this.homepage;
    }

    public final boolean getShowEmailDivider() {
        return this.showEmailDivider;
    }

    public final boolean getShowPhoneDivider() {
        return this.showPhoneDivider;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.appEmail;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.appPhone;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.homepage;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "DeveloperInfoSectionItem(appEmail=" + this.appEmail + ", appPhone=" + this.appPhone + ", homepage=" + this.homepage + ")";
    }
}
