package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.ShortInfo;
import h.f.b.j;

/* compiled from: ShortInfoDto.kt */
public final class ShortInfoDto {
    @c("info1")
    public final String info;
    @c("info2")
    public final String moreInfo;

    public ShortInfoDto(String str, String str2) {
        j.b(str, "info");
        j.b(str2, "moreInfo");
        this.info = str;
        this.moreInfo = str2;
    }

    public static /* synthetic */ ShortInfoDto copy$default(ShortInfoDto shortInfoDto, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = shortInfoDto.info;
        }
        if ((i2 & 2) != 0) {
            str2 = shortInfoDto.moreInfo;
        }
        return shortInfoDto.copy(str, str2);
    }

    public final String component1() {
        return this.info;
    }

    public final String component2() {
        return this.moreInfo;
    }

    public final ShortInfoDto copy(String str, String str2) {
        j.b(str, "info");
        j.b(str2, "moreInfo");
        return new ShortInfoDto(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.moreInfo, (java.lang.Object) r3.moreInfo) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto r3 = (com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto) r3
            java.lang.String r0 = r2.info
            java.lang.String r1 = r3.info
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.moreInfo
            java.lang.String r3 = r3.moreInfo
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto.equals(java.lang.Object):boolean");
    }

    public final String getInfo() {
        return this.info;
    }

    public final String getMoreInfo() {
        return this.moreInfo;
    }

    public int hashCode() {
        String str = this.info;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.moreInfo;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public final ShortInfo toShortInfo() {
        return new ShortInfo(this.info, this.moreInfo);
    }

    public String toString() {
        return "ShortInfoDto(info=" + this.info + ", moreInfo=" + this.moreInfo + ")";
    }
}
