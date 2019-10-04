package c.c.a.e.d.h.c.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.f.b.j;

/* compiled from: VideoReviewsResponseDto.kt */
public final class a {
    @c("authorName")
    public final String authorName;
    @c("body")
    public final String body;
    @c("commentId")
    public final int commentId;
    @c("createdAt")
    public final String createdAt;

    public final ReviewItem a() {
        ReviewItem reviewItem = new ReviewItem(this.commentId, this.authorName, null, this.body, this.createdAt, null, null, null, null, null, false, false, false, null, 10240, null);
        return reviewItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (!(this.commentId == aVar.commentId) || !j.a((Object) this.authorName, (Object) aVar.authorName) || !j.a((Object) this.body, (Object) aVar.body) || !j.a((Object) this.createdAt, (Object) aVar.createdAt)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.commentId * 31;
        String str = this.authorName;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.body;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.createdAt;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return hashCode2 + i3;
    }

    public String toString() {
        return "VideoCommentDto(commentId=" + this.commentId + ", authorName=" + this.authorName + ", body=" + this.body + ", createdAt=" + this.createdAt + ")";
    }
}
