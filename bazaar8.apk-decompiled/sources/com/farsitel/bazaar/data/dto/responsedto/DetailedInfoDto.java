package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import java.util.List;

/* compiled from: DetailedInfoDto.kt */
public final class DetailedInfoDto {
    @c("category")
    public final String category;
    @c("installCountVerbose")
    public final String installCountVerbose;
    @c("installCountVerboseDescription")
    public final String installCountVerboseDescription;
    @c("installCountVerboseLabel")
    public final String installCountVerboseLabel;
    @c("screenshots")
    public final List<DetailInfoScreenshotDto> screenshots;
    @c("shortDescription")
    public final String shortDescription;

    public DetailedInfoDto(String str, String str2, String str3, String str4, String str5, List<DetailInfoScreenshotDto> list) {
        this.category = str;
        this.shortDescription = str2;
        this.installCountVerbose = str3;
        this.installCountVerboseLabel = str4;
        this.installCountVerboseDescription = str5;
        this.screenshots = list;
    }

    public static /* synthetic */ DetailedInfoDto copy$default(DetailedInfoDto detailedInfoDto, String str, String str2, String str3, String str4, String str5, List<DetailInfoScreenshotDto> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = detailedInfoDto.category;
        }
        if ((i2 & 2) != 0) {
            str2 = detailedInfoDto.shortDescription;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = detailedInfoDto.installCountVerbose;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            str4 = detailedInfoDto.installCountVerboseLabel;
        }
        String str8 = str4;
        if ((i2 & 16) != 0) {
            str5 = detailedInfoDto.installCountVerboseDescription;
        }
        String str9 = str5;
        if ((i2 & 32) != 0) {
            list = detailedInfoDto.screenshots;
        }
        return detailedInfoDto.copy(str, str6, str7, str8, str9, list);
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

    public final List<DetailInfoScreenshotDto> component6() {
        return this.screenshots;
    }

    public final DetailedInfoDto copy(String str, String str2, String str3, String str4, String str5, List<DetailInfoScreenshotDto> list) {
        DetailedInfoDto detailedInfoDto = new DetailedInfoDto(str, str2, str3, str4, str5, list);
        return detailedInfoDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.screenshots, (java.lang.Object) r3.screenshots) != false) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0047
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.DetailedInfoDto
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.data.dto.responsedto.DetailedInfoDto r3 = (com.farsitel.bazaar.data.dto.responsedto.DetailedInfoDto) r3
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
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.DetailInfoScreenshotDto> r0 = r2.screenshots
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.DetailInfoScreenshotDto> r3 = r3.screenshots
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.DetailedInfoDto.equals(java.lang.Object):boolean");
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

    public final List<DetailInfoScreenshotDto> getScreenshots() {
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
        List<DetailInfoScreenshotDto> list = this.screenshots;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode5 + i2;
    }

    public String toString() {
        return "DetailedInfoDto(category=" + this.category + ", shortDescription=" + this.shortDescription + ", installCountVerbose=" + this.installCountVerbose + ", installCountVerboseLabel=" + this.installCountVerboseLabel + ", installCountVerboseDescription=" + this.installCountVerboseDescription + ", screenshots=" + this.screenshots + ")";
    }
}
