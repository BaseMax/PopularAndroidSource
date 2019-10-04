package com.farsitel.bazaar.common.model.reviews;

import com.crashlytics.android.core.MetaDataStore;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: ReviewItem.kt */
public final class ReplyReviewItem implements Serializable {
    public final String comment;
    public final String date;
    public int dislikeCount;
    public final int id;
    public int likes;
    public final String user;
    public VoteState voteState;

    public ReplyReviewItem(int i2, String str, String str2, int i3, int i4, String str3, VoteState voteState2) {
        j.b(str, MetaDataStore.USERDATA_SUFFIX);
        j.b(str2, "comment");
        j.b(str3, "date");
        j.b(voteState2, "voteState");
        this.id = i2;
        this.user = str;
        this.comment = str2;
        this.likes = i3;
        this.dislikeCount = i4;
        this.date = str3;
        this.voteState = voteState2;
    }

    public static /* synthetic */ ReplyReviewItem copy$default(ReplyReviewItem replyReviewItem, int i2, String str, String str2, int i3, int i4, String str3, VoteState voteState2, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = replyReviewItem.id;
        }
        if ((i5 & 2) != 0) {
            str = replyReviewItem.user;
        }
        String str4 = str;
        if ((i5 & 4) != 0) {
            str2 = replyReviewItem.comment;
        }
        String str5 = str2;
        if ((i5 & 8) != 0) {
            i3 = replyReviewItem.likes;
        }
        int i6 = i3;
        if ((i5 & 16) != 0) {
            i4 = replyReviewItem.dislikeCount;
        }
        int i7 = i4;
        if ((i5 & 32) != 0) {
            str3 = replyReviewItem.date;
        }
        String str6 = str3;
        if ((i5 & 64) != 0) {
            voteState2 = replyReviewItem.voteState;
        }
        return replyReviewItem.copy(i2, str4, str5, i6, i7, str6, voteState2);
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.user;
    }

    public final String component3() {
        return this.comment;
    }

    public final int component4() {
        return this.likes;
    }

    public final int component5() {
        return this.dislikeCount;
    }

    public final String component6() {
        return this.date;
    }

    public final VoteState component7() {
        return this.voteState;
    }

    public final ReplyReviewItem copy(int i2, String str, String str2, int i3, int i4, String str3, VoteState voteState2) {
        j.b(str, MetaDataStore.USERDATA_SUFFIX);
        j.b(str2, "comment");
        j.b(str3, "date");
        VoteState voteState3 = voteState2;
        j.b(voteState3, "voteState");
        ReplyReviewItem replyReviewItem = new ReplyReviewItem(i2, str, str2, i3, i4, str3, voteState3);
        return replyReviewItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ReplyReviewItem) {
                ReplyReviewItem replyReviewItem = (ReplyReviewItem) obj;
                if ((this.id == replyReviewItem.id) && j.a((Object) this.user, (Object) replyReviewItem.user) && j.a((Object) this.comment, (Object) replyReviewItem.comment)) {
                    if (this.likes == replyReviewItem.likes) {
                        if (!(this.dislikeCount == replyReviewItem.dislikeCount) || !j.a((Object) this.date, (Object) replyReviewItem.date) || !j.a((Object) this.voteState, (Object) replyReviewItem.voteState)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getComment() {
        return this.comment;
    }

    public final String getDate() {
        return this.date;
    }

    public final int getDislikeCount() {
        return this.dislikeCount;
    }

    public final int getId() {
        return this.id;
    }

    public final int getLikes() {
        return this.likes;
    }

    public final String getUser() {
        return this.user;
    }

    public final VoteState getVoteState() {
        return this.voteState;
    }

    public int hashCode() {
        int i2 = this.id * 31;
        String str = this.user;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.comment;
        int hashCode2 = (((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.likes) * 31) + this.dislikeCount) * 31;
        String str3 = this.date;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        VoteState voteState2 = this.voteState;
        if (voteState2 != null) {
            i3 = voteState2.hashCode();
        }
        return hashCode3 + i3;
    }

    public final void setDislikeCount(int i2) {
        this.dislikeCount = i2;
    }

    public final void setLikes(int i2) {
        this.likes = i2;
    }

    public final void setVoteState(VoteState voteState2) {
        j.b(voteState2, "<set-?>");
        this.voteState = voteState2;
    }

    public String toString() {
        return "ReplyReviewItem(id=" + this.id + ", user=" + this.user + ", comment=" + this.comment + ", likes=" + this.likes + ", dislikeCount=" + this.dislikeCount + ", date=" + this.date + ", voteState=" + this.voteState + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReplyReviewItem(int i2, String str, String str2, int i3, int i4, String str3, VoteState voteState2, int i5, f fVar) {
        this(i2, str, str2, i3, i4, str3, (i5 & 64) != 0 ? VoteState.NONE : voteState2);
    }
}
