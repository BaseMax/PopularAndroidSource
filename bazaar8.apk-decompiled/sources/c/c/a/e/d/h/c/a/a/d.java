package c.c.a.e.d.h.c.a.a;

import c.e.d.a.c;

/* compiled from: PostVideoCommentResponseDto.kt */
public final class d {
    @c("isPosted")
    public final boolean isPosted;

    public final boolean a() {
        return this.isPosted;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                if (this.isPosted == ((d) obj).isPosted) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.isPosted;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "PostVideoCommentResponseDto(isPosted=" + this.isPosted + ")";
    }
}
