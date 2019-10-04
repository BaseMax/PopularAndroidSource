package c.c.a.e.d.h.c.a.a;

import c.e.d.a.c;

/* compiled from: ReportVideoCommentResponseDto.kt */
public final class i {
    @c("isReported")
    public final boolean isReported;

    public final boolean a() {
        return this.isReported;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                if (this.isReported == ((i) obj).isReported) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.isReported;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "ReportVideoCommentResponseDto(isReported=" + this.isReported + ")";
    }
}
