package c.c.a.l.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import com.crashlytics.android.core.CrashlyticsController;
import h.f.b.j;

@h("singleRequest.userStreamingErrorsRequest")
/* compiled from: RequestDto.kt */
public final class a {
    @c("error")
    public final String error;
    @c("videoId")
    public final String videoId;
    @c("videoUrl")
    public final String videoUrl;

    public a(String str, String str2, String str3) {
        j.b(str, "videoId");
        j.b(str2, "videoUrl");
        j.b(str3, CrashlyticsController.EVENT_TYPE_LOGGED);
        this.videoId = str;
        this.videoUrl = str2;
        this.error = str3;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.error, (java.lang.Object) r3.error) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.l.b.a.a
            if (r0 == 0) goto L_0x0027
            c.c.a.l.b.a.a r3 = (c.c.a.l.b.a.a) r3
            java.lang.String r0 = r2.videoId
            java.lang.String r1 = r3.videoId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.videoUrl
            java.lang.String r1 = r3.videoUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.error
            java.lang.String r3 = r3.error
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.l.b.a.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.videoId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.videoUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.error;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "GetUserStreamingErrorRequestDto(videoId=" + this.videoId + ", videoUrl=" + this.videoUrl + ", error=" + this.error + ")";
    }
}
