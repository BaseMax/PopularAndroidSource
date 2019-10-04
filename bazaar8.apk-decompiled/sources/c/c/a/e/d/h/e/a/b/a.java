package c.c.a.e.d.h.e.a.b;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import h.f.b.j;

@h("singleRequest.videoDownloadInfoRequest")
/* compiled from: DownloadQualityRequestDto.kt */
public final class a {
    @c("referrers")
    public final m referrers;
    @c("identifier")
    public final String videoId;

    public a(String str, m mVar) {
        j.b(str, "videoId");
        j.b(mVar, "referrers");
        this.videoId = str;
        this.referrers = mVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrers, (java.lang.Object) r3.referrers) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.h.e.a.b.a
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.h.e.a.b.a r3 = (c.c.a.e.d.h.e.a.b.a) r3
            java.lang.String r0 = r2.videoId
            java.lang.String r1 = r3.videoId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            c.e.d.m r0 = r2.referrers
            c.e.d.m r3 = r3.referrers
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.b.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.videoId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        m mVar = this.referrers;
        if (mVar != null) {
            i2 = mVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "DownloadQualityRequestDto(videoId=" + this.videoId + ", referrers=" + this.referrers + ")";
    }
}
