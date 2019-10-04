package c.c.a.e.d.r;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.common.model.reviews.VoteState;
import h.f.b.j;

/* compiled from: ReviewDto.kt */
public final class b {
    @c("comment")
    public final String comment;
    @c("date")
    public final String date;
    @c("id")
    public final int id;
    @c("likes")
    public final int likeCount;
    @c("rate")
    public final int rate;
    @c("reply")
    public final a reply;
    @c("total")
    public final int totalCount;
    @c("user")
    public final String user;
    @c("versionCode")
    public final int versionCode;
    @c("likedByMe")
    public final int voteStatus;

    public final ReviewItem a(Long l2) {
        int i2 = this.id;
        String str = this.user;
        Integer valueOf = Integer.valueOf(this.rate);
        String str2 = this.comment;
        String str3 = this.date;
        Integer valueOf2 = Integer.valueOf(this.likeCount);
        Integer valueOf3 = Integer.valueOf(this.totalCount - this.likeCount);
        Integer valueOf4 = Integer.valueOf(this.versionCode);
        a aVar = this.reply;
        ReviewItem reviewItem = new ReviewItem(i2, str, valueOf, str2, str3, valueOf2, valueOf3, valueOf4, l2, aVar != null ? aVar.a() : null, false, false, false, VoteState.Companion.fromVoteStatus(this.voteStatus), 7168, null);
        return reviewItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if ((this.id == bVar.id) && j.a((Object) this.user, (Object) bVar.user)) {
                    if ((this.rate == bVar.rate) && j.a((Object) this.comment, (Object) bVar.comment) && j.a((Object) this.date, (Object) bVar.date)) {
                        if (this.likeCount == bVar.likeCount) {
                            if (this.totalCount == bVar.totalCount) {
                                if ((this.versionCode == bVar.versionCode) && j.a((Object) this.reply, (Object) bVar.reply)) {
                                    if (this.voteStatus == bVar.voteStatus) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.id * 31;
        String str = this.user;
        int i3 = 0;
        int hashCode = (((i2 + (str != null ? str.hashCode() : 0)) * 31) + this.rate) * 31;
        String str2 = this.comment;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.date;
        int hashCode3 = (((((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.likeCount) * 31) + this.totalCount) * 31) + this.versionCode) * 31;
        a aVar = this.reply;
        if (aVar != null) {
            i3 = aVar.hashCode();
        }
        return ((hashCode3 + i3) * 31) + this.voteStatus;
    }

    public String toString() {
        return "ReviewDto(id=" + this.id + ", user=" + this.user + ", rate=" + this.rate + ", comment=" + this.comment + ", date=" + this.date + ", likeCount=" + this.likeCount + ", totalCount=" + this.totalCount + ", versionCode=" + this.versionCode + ", reply=" + this.reply + ", voteStatus=" + this.voteStatus + ")";
    }

    public static /* synthetic */ ReviewItem a(b bVar, Long l2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            l2 = null;
        }
        return bVar.a(l2);
    }
}
