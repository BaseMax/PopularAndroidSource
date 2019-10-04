package c.c.a.l.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.setVideoStatsRequest")
/* compiled from: RequestDto.kt */
public final class b {
    @c("error_data")
    public final String errorData;
    @c("stats")
    public final String stats;
    @c("status_code")
    public final String statusCode;
    @c("vendor_response")
    public final String vendorResponse;

    public b(String str, String str2, String str3, String str4) {
        j.b(str, "stats");
        j.b(str4, "statusCode");
        this.stats = str;
        this.vendorResponse = str2;
        this.errorData = str3;
        this.statusCode = str4;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.statusCode, (java.lang.Object) r3.statusCode) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof c.c.a.l.b.a.b
            if (r0 == 0) goto L_0x0031
            c.c.a.l.b.a.b r3 = (c.c.a.l.b.a.b) r3
            java.lang.String r0 = r2.stats
            java.lang.String r1 = r3.stats
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.vendorResponse
            java.lang.String r1 = r3.vendorResponse
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.errorData
            java.lang.String r1 = r3.errorData
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.statusCode
            java.lang.String r3 = r3.statusCode
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.l.b.a.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.stats;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.vendorResponse;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.errorData;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.statusCode;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "GetVideoStatsRequestDto(stats=" + this.stats + ", vendorResponse=" + this.vendorResponse + ", errorData=" + this.errorData + ", statusCode=" + this.statusCode + ")";
    }
}
