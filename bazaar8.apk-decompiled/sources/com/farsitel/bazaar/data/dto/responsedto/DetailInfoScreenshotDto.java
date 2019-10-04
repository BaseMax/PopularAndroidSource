package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: DetailInfoScreenshotDto.kt */
public final class DetailInfoScreenshotDto {
    @c("fullSize")
    public final String fullName;
    @c("thumbnail")
    public final String thumbnail;

    public DetailInfoScreenshotDto(String str, String str2) {
        j.b(str, "fullName");
        j.b(str2, "thumbnail");
        this.fullName = str;
        this.thumbnail = str2;
    }

    public static /* synthetic */ DetailInfoScreenshotDto copy$default(DetailInfoScreenshotDto detailInfoScreenshotDto, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = detailInfoScreenshotDto.fullName;
        }
        if ((i2 & 2) != 0) {
            str2 = detailInfoScreenshotDto.thumbnail;
        }
        return detailInfoScreenshotDto.copy(str, str2);
    }

    public final String component1() {
        return this.fullName;
    }

    public final String component2() {
        return this.thumbnail;
    }

    public final DetailInfoScreenshotDto copy(String str, String str2) {
        j.b(str, "fullName");
        j.b(str2, "thumbnail");
        return new DetailInfoScreenshotDto(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.thumbnail, (java.lang.Object) r3.thumbnail) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.DetailInfoScreenshotDto
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.dto.responsedto.DetailInfoScreenshotDto r3 = (com.farsitel.bazaar.data.dto.responsedto.DetailInfoScreenshotDto) r3
            java.lang.String r0 = r2.fullName
            java.lang.String r1 = r3.fullName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.thumbnail
            java.lang.String r3 = r3.thumbnail
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.DetailInfoScreenshotDto.equals(java.lang.Object):boolean");
    }

    public final String getFullName() {
        return this.fullName;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public int hashCode() {
        String str = this.fullName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.thumbnail;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "DetailInfoScreenshotDto(fullName=" + this.fullName + ", thumbnail=" + this.thumbnail + ")";
    }
}
