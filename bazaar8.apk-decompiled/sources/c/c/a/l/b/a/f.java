package c.c.a.l.b.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.VideoStatsResult;
import java.util.Map;

/* compiled from: ResponseDto.kt */
public final class f {
    @c("data")
    public final String data;
    @c("header")
    public final Map<String, String> header;
    @c("url")
    public final String url;

    public final VideoStatsResult a() {
        return new VideoStatsResult(this.url, this.data, this.header);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.header, (java.lang.Object) r3.header) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.l.b.a.f
            if (r0 == 0) goto L_0x0027
            c.c.a.l.b.a.f r3 = (c.c.a.l.b.a.f) r3
            java.lang.String r0 = r2.url
            java.lang.String r1 = r3.url
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.data
            java.lang.String r1 = r3.data
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.util.Map<java.lang.String, java.lang.String> r0 = r2.header
            java.util.Map<java.lang.String, java.lang.String> r3 = r3.header
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.l.b.a.f.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.url;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.data;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map<String, String> map = this.header;
        if (map != null) {
            i2 = map.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "VideoStatsResponseDto(url=" + this.url + ", data=" + this.data + ", header=" + this.header + ")";
    }
}
