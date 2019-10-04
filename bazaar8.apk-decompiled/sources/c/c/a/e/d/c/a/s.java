package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.VideoShot;

/* compiled from: AppDetailResponseDto.kt */
public final class s {
    @c("poster")
    public final String poster;
    @c("sourceType")
    public final String sourceType;
    @c("token")
    public final String token;

    public final VideoShot a() {
        return new VideoShot(this.token, this.poster, this.sourceType);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.sourceType, (java.lang.Object) r3.sourceType) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.s
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.c.a.s r3 = (c.c.a.e.d.c.a.s) r3
            java.lang.String r0 = r2.token
            java.lang.String r1 = r3.token
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.poster
            java.lang.String r1 = r3.poster
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.sourceType
            java.lang.String r3 = r3.sourceType
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.s.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.token;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.poster;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.sourceType;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "VideoShotDto(token=" + this.token + ", poster=" + this.poster + ", sourceType=" + this.sourceType + ")";
    }
}
