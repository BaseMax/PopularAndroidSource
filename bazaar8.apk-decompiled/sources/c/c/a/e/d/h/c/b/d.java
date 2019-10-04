package c.c.a.e.d.h.c.b;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.getVideoCommentsRequest")
/* compiled from: VideoReviewsRequestDto.kt */
public final class d {
    @c("limit")
    public final int limit;
    @c("offset")
    public final int offset;
    @c("identifier")
    public final String videoId;

    public d(String str, int i2, int i3) {
        j.b(str, "videoId");
        this.videoId = str;
        this.limit = i2;
        this.offset = i3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (j.a((Object) this.videoId, (Object) dVar.videoId)) {
                    if (this.limit == dVar.limit) {
                        if (this.offset == dVar.offset) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.videoId;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.limit) * 31) + this.offset;
    }

    public String toString() {
        return "VideoReviewsRequestDto(videoId=" + this.videoId + ", limit=" + this.limit + ", offset=" + this.offset + ")";
    }
}
