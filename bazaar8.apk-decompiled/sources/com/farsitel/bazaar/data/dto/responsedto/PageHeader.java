package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PageHeader {
    @c("image")
    public final String image;

    public PageHeader(String str) {
        j.b(str, "image");
        this.image = str;
    }

    public static /* synthetic */ PageHeader copy$default(PageHeader pageHeader, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageHeader.image;
        }
        return pageHeader.copy(str);
    }

    public final String component1() {
        return this.image;
    }

    public final PageHeader copy(String str) {
        j.b(str, "image");
        return new PageHeader(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof PageHeader) && j.a((Object) this.image, (Object) ((PageHeader) obj).image));
    }

    public final String getImage() {
        return this.image;
    }

    public int hashCode() {
        String str = this.image;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "PageHeader(image=" + this.image + ")";
    }
}
