package c.c.a.e.d.h.d.a.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails;
import com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto;

/* compiled from: ResponseDto.kt */
public final class i {
    @c("shortInfo")
    public final ShortInfoDto shortInfo;
    @c("title")
    public final String title;

    public final PlayedVideoDetails a() {
        return new PlayedVideoDetails(this.title, this.shortInfo.toShortInfo());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.shortInfo, (java.lang.Object) r3.shortInfo) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.h.d.a.a.i
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.h.d.a.a.i r3 = (c.c.a.e.d.h.d.a.a.i) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto r0 = r2.shortInfo
            com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto r3 = r3.shortInfo
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.a.a.i.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        ShortInfoDto shortInfoDto = this.shortInfo;
        if (shortInfoDto != null) {
            i2 = shortInfoDto.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "PlayedVideoDetailDto(title=" + this.title + ", shortInfo=" + this.shortInfo + ")";
    }
}
