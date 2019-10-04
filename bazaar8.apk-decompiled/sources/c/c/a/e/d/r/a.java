package c.c.a.e.d.r;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.reviews.ReplyReviewItem;
import com.farsitel.bazaar.common.model.reviews.VoteState;
import h.f.b.j;

/* compiled from: ReviewDto.kt */
public final class a {
    @c("comment")
    public final String comment;
    @c("date")
    public final String date;
    @c("id")
    public final int id;
    @c("likes")
    public final Integer likes;
    @c("total")
    public final Integer total;
    @c("user")
    public final String user;
    @c("likedByMe")
    public final int voteStatus;

    public final ReplyReviewItem a() {
        String str;
        int i2 = this.id;
        String str2 = this.user;
        String str3 = str2 != null ? str2 : "";
        String str4 = this.comment;
        Integer num = this.likes;
        int i3 = 0;
        int intValue = num != null ? num.intValue() : 0;
        Integer num2 = this.total;
        int intValue2 = num2 != null ? num2.intValue() : 0;
        Integer num3 = this.likes;
        if (num3 != null) {
            i3 = num3.intValue();
        }
        int i4 = intValue2 - i3;
        String str5 = this.date;
        if (str5 != null) {
            str = str5;
        } else {
            str = "";
        }
        ReplyReviewItem replyReviewItem = new ReplyReviewItem(i2, str3, str4, intValue, i4, str, VoteState.Companion.fromVoteStatus(this.voteStatus));
        return replyReviewItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if ((this.id == aVar.id) && j.a((Object) this.user, (Object) aVar.user) && j.a((Object) this.comment, (Object) aVar.comment) && j.a((Object) this.likes, (Object) aVar.likes) && j.a((Object) this.total, (Object) aVar.total) && j.a((Object) this.date, (Object) aVar.date)) {
                    if (this.voteStatus == aVar.voteStatus) {
                        return true;
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
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.comment;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.likes;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.total;
        int hashCode4 = (hashCode3 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str3 = this.date;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return ((hashCode4 + i3) * 31) + this.voteStatus;
    }

    public String toString() {
        return "ReplyReviewDto(id=" + this.id + ", user=" + this.user + ", comment=" + this.comment + ", likes=" + this.likes + ", total=" + this.total + ", date=" + this.date + ", voteStatus=" + this.voteStatus + ")";
    }
}
