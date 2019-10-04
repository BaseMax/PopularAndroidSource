package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.common.model.appdetail.Screenshot;
import java.util.List;

/* compiled from: Page.kt */
public final class MiniAppDetailInfo {
    public final String category;
    public final String installCountVerbose;
    public final String installCountVerboseDescription;
    public final String installCountVerboseLabel;
    public final List<Screenshot> screenshots;
    public final String shortDescription;

    public MiniAppDetailInfo(String str, String str2, String str3, String str4, String str5, List<Screenshot> list) {
        this.category = str;
        this.shortDescription = str2;
        this.installCountVerbose = str3;
        this.installCountVerboseLabel = str4;
        this.installCountVerboseDescription = str5;
        this.screenshots = list;
    }

    public static /* synthetic */ MiniAppDetailInfo copy$default(MiniAppDetailInfo miniAppDetailInfo, String str, String str2, String str3, String str4, String str5, List<Screenshot> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = miniAppDetailInfo.category;
        }
        if ((i2 & 2) != 0) {
            str2 = miniAppDetailInfo.shortDescription;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = miniAppDetailInfo.installCountVerbose;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            str4 = miniAppDetailInfo.installCountVerboseLabel;
        }
        String str8 = str4;
        if ((i2 & 16) != 0) {
            str5 = miniAppDetailInfo.installCountVerboseDescription;
        }
        String str9 = str5;
        if ((i2 & 32) != 0) {
            list = miniAppDetailInfo.screenshots;
        }
        return miniAppDetailInfo.copy(str, str6, str7, str8, str9, list);
    }

    public final String component1() {
        return this.category;
    }

    public final String component2() {
        return this.shortDescription;
    }

    public final String component3() {
        return this.installCountVerbose;
    }

    public final String component4() {
        return this.installCountVerboseLabel;
    }

    public final String component5() {
        return this.installCountVerboseDescription;
    }

    public final List<Screenshot> component6() {
        return this.screenshots;
    }

    public final MiniAppDetailInfo copy(String str, String str2, String str3, String str4, String str5, List<Screenshot> list) {
        MiniAppDetailInfo miniAppDetailInfo = new MiniAppDetailInfo(str, str2, str3, str4, str5, list);
        return miniAppDetailInfo;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.screenshots, (java.lang.Object) r3.screenshots) != false) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0047
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.MiniAppDetailInfo
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.data.entity.MiniAppDetailInfo r3 = (com.farsitel.bazaar.data.entity.MiniAppDetailInfo) r3
            java.lang.String r0 = r2.category
            java.lang.String r1 = r3.category
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.shortDescription
            java.lang.String r1 = r3.shortDescription
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.installCountVerbose
            java.lang.String r1 = r3.installCountVerbose
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.installCountVerboseLabel
            java.lang.String r1 = r3.installCountVerboseLabel
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.installCountVerboseDescription
            java.lang.String r1 = r3.installCountVerboseDescription
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.util.List<com.farsitel.bazaar.common.model.appdetail.Screenshot> r0 = r2.screenshots
            java.util.List<com.farsitel.bazaar.common.model.appdetail.Screenshot> r3 = r3.screenshots
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.MiniAppDetailInfo.equals(java.lang.Object):boolean");
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getInstallCountVerbose() {
        return this.installCountVerbose;
    }

    public final String getInstallCountVerboseDescription() {
        return this.installCountVerboseDescription;
    }

    public final String getInstallCountVerboseLabel() {
        return this.installCountVerboseLabel;
    }

    public final List<Screenshot> getScreenshots() {
        return this.screenshots;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public int hashCode() {
        String str = this.category;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.shortDescription;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.installCountVerbose;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.installCountVerboseLabel;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.installCountVerboseDescription;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        List<Screenshot> list = this.screenshots;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode5 + i2;
    }

    public String toString() {
        return "MiniAppDetailInfo(category=" + this.category + ", shortDescription=" + this.shortDescription + ", installCountVerbose=" + this.installCountVerbose + ", installCountVerboseLabel=" + this.installCountVerboseLabel + ", installCountVerboseDescription=" + this.installCountVerboseDescription + ", screenshots=" + this.screenshots + ")";
    }
}
