package c.c.a.e.d.h.c.a.a;

import c.c.a.c.f.a.h;
import h.f.b.j;

@h("singleRequest.postVideoCommentRequest")
/* compiled from: PostVideoCommentRequestDto.kt */
public final class c {
    @c.e.d.a.c("body")
    public final String comment;
    @c.e.d.a.c("identifier")
    public final String videoId;

    public c(String str, String str2) {
        j.b(str, "videoId");
        this.videoId = str;
        this.comment = str2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.comment, (java.lang.Object) r3.comment) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.h.c.a.a.c
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.h.c.a.a.c r3 = (c.c.a.e.d.h.c.a.a.c) r3
            java.lang.String r0 = r2.videoId
            java.lang.String r1 = r3.videoId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.comment
            java.lang.String r3 = r3.comment
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.c.a.a.c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.videoId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.comment;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "PostVideoCommentRequestDto(videoId=" + this.videoId + ", comment=" + this.comment + ")";
    }
}
