package c.c.a.e.d.h.c.a.a;

import c.e.d.a.c;
import h.f.b.j;

@c.c.a.c.f.a.h("singleRequest.reportVideoCommentRequest")
/* compiled from: ReportVideoCommentRequestDto.kt */
public final class h {
    @c("commentId")
    public final String commentId;

    public h(String str) {
        j.b(str, "commentId");
        this.commentId = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof h) && j.a((Object) this.commentId, (Object) ((h) obj).commentId));
    }

    public int hashCode() {
        String str = this.commentId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ReportVideoCommentRequestDto(commentId=" + this.commentId + ")";
    }
}
