package com.farsitel.bazaar.common.model.reviews;

import com.crashlytics.android.core.CodedOutputStream;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ReviewItem.kt */
public final class ReviewItem implements RecyclerData {
    public final Integer _dislikeCount;
    public final Integer _likeCount;
    public final Long appVersionCode;
    public final String comment;
    public final String date;
    public Integer dislikeCount;
    public final int id;
    public Integer likeCount;
    public final Integer rate;
    public final ReplyReviewItem replyItem;
    public VoteState replyVoteState;
    public final boolean showLikeDislike;
    public final boolean showRate;
    public final boolean showReplyVote;
    public final boolean showReport;
    public final String user;
    public final Integer versionCode;
    public final int viewType;
    public VoteState voteState;

    public ReviewItem(int i2, String str, Integer num, String str2, String str3, Integer num2, Integer num3, Integer num4, Long l2, ReplyReviewItem replyReviewItem, boolean z, boolean z2, boolean z3, VoteState voteState2) {
        j.b(str2, "comment");
        j.b(str3, "date");
        j.b(voteState2, "voteState");
        this.id = i2;
        this.user = str;
        this.rate = num;
        this.comment = str2;
        this.date = str3;
        this._likeCount = num2;
        this._dislikeCount = num3;
        this.versionCode = num4;
        this.appVersionCode = l2;
        this.replyItem = replyReviewItem;
        this.showLikeDislike = z;
        this.showReport = z2;
        this.showRate = z3;
        this.voteState = voteState2;
        this.viewType = ReviewItemViewType.REVIEW_ITEM.ordinal();
        boolean z4 = true;
        int i3 = 1;
        this.showReplyVote = (this.replyItem == null || !this.showLikeDislike || !this.showReport) ? false : z4;
        Integer num5 = this._likeCount;
        this.likeCount = (num5 != null && num5.intValue() == 0 && this.voteState == VoteState.UP_VOTE) ? 1 : this._likeCount;
        Integer num6 = this._dislikeCount;
        this.dislikeCount = (num6 != null && num6.intValue() == 0 && this.voteState == VoteState.DOWN_VOTE) ? this._dislikeCount : this._dislikeCount;
        ReplyReviewItem replyReviewItem2 = this.replyItem;
        this.replyVoteState = replyReviewItem2 != null ? replyReviewItem2.getVoteState() : null;
    }

    private final Long component9() {
        return this.appVersionCode;
    }

    public static /* synthetic */ ReviewItem copy$default(ReviewItem reviewItem, int i2, String str, Integer num, String str2, String str3, Integer num2, Integer num3, Integer num4, Long l2, ReplyReviewItem replyReviewItem, boolean z, boolean z2, boolean z3, VoteState voteState2, int i3, Object obj) {
        ReviewItem reviewItem2 = reviewItem;
        int i4 = i3;
        return reviewItem.copy((i4 & 1) != 0 ? reviewItem2.id : i2, (i4 & 2) != 0 ? reviewItem2.user : str, (i4 & 4) != 0 ? reviewItem2.rate : num, (i4 & 8) != 0 ? reviewItem2.comment : str2, (i4 & 16) != 0 ? reviewItem2.date : str3, (i4 & 32) != 0 ? reviewItem2._likeCount : num2, (i4 & 64) != 0 ? reviewItem2._dislikeCount : num3, (i4 & 128) != 0 ? reviewItem2.versionCode : num4, (i4 & 256) != 0 ? reviewItem2.appVersionCode : l2, (i4 & 512) != 0 ? reviewItem2.replyItem : replyReviewItem, (i4 & 1024) != 0 ? reviewItem2.showLikeDislike : z, (i4 & 2048) != 0 ? reviewItem2.showReport : z2, (i4 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? reviewItem2.showRate : z3, (i4 & 8192) != 0 ? reviewItem2.voteState : voteState2);
    }

    public final void addDownVote() {
        if (this.voteState == VoteState.UP_VOTE) {
            removeUpVote();
        }
        if (this.voteState == VoteState.NONE) {
            Integer num = this.dislikeCount;
            this.dislikeCount = num != null ? Integer.valueOf(num.intValue() + 1) : null;
        }
        this.voteState = VoteState.DOWN_VOTE;
    }

    public final void addReplyDownVote() {
        if (this.replyVoteState == VoteState.UP_VOTE) {
            removeReplyUpVote();
        }
        if (this.replyVoteState == VoteState.NONE) {
            ReplyReviewItem replyReviewItem = this.replyItem;
            if (replyReviewItem != null) {
                replyReviewItem.setDislikeCount(replyReviewItem.getDislikeCount() + 1);
            } else {
                j.a();
                throw null;
            }
        }
        setReplyVoteState(VoteState.DOWN_VOTE);
    }

    public final void addReplyUpVote() {
        if (this.replyVoteState == VoteState.DOWN_VOTE) {
            removeReplyDownVote();
        }
        if (this.replyVoteState == VoteState.NONE) {
            ReplyReviewItem replyReviewItem = this.replyItem;
            if (replyReviewItem != null) {
                replyReviewItem.setLikes(replyReviewItem.getLikes() + 1);
            } else {
                j.a();
                throw null;
            }
        }
        setReplyVoteState(VoteState.UP_VOTE);
    }

    public final void addUpVote() {
        if (this.voteState == VoteState.DOWN_VOTE) {
            removeDownVote();
        }
        if (this.voteState == VoteState.NONE) {
            Integer num = this.likeCount;
            this.likeCount = num != null ? Integer.valueOf(num.intValue() + 1) : null;
        }
        this.voteState = VoteState.UP_VOTE;
    }

    public final boolean commentOnOldVersion() {
        Long l2 = this.appVersionCode;
        if (l2 != null) {
            Integer num = this.versionCode;
            if (!j.a((Object) l2, (Object) num != null ? Long.valueOf((long) num.intValue()) : null)) {
                return true;
            }
        }
        return false;
    }

    public final int component1() {
        return this.id;
    }

    public final ReplyReviewItem component10() {
        return this.replyItem;
    }

    public final boolean component11() {
        return this.showLikeDislike;
    }

    public final boolean component12() {
        return this.showReport;
    }

    public final boolean component13() {
        return this.showRate;
    }

    public final VoteState component14() {
        return this.voteState;
    }

    public final String component2() {
        return this.user;
    }

    public final Integer component3() {
        return this.rate;
    }

    public final String component4() {
        return this.comment;
    }

    public final String component5() {
        return this.date;
    }

    public final Integer component6() {
        return this._likeCount;
    }

    public final Integer component7() {
        return this._dislikeCount;
    }

    public final Integer component8() {
        return this.versionCode;
    }

    public final ReviewItem copy(int i2, String str, Integer num, String str2, String str3, Integer num2, Integer num3, Integer num4, Long l2, ReplyReviewItem replyReviewItem, boolean z, boolean z2, boolean z3, VoteState voteState2) {
        String str4 = str2;
        j.b(str4, "comment");
        String str5 = str3;
        j.b(str5, "date");
        VoteState voteState3 = voteState2;
        j.b(voteState3, "voteState");
        ReviewItem reviewItem = new ReviewItem(i2, str, num, str4, str5, num2, num3, num4, l2, replyReviewItem, z, z2, z3, voteState3);
        return reviewItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ReviewItem) {
                ReviewItem reviewItem = (ReviewItem) obj;
                if ((this.id == reviewItem.id) && j.a((Object) this.user, (Object) reviewItem.user) && j.a((Object) this.rate, (Object) reviewItem.rate) && j.a((Object) this.comment, (Object) reviewItem.comment) && j.a((Object) this.date, (Object) reviewItem.date) && j.a((Object) this._likeCount, (Object) reviewItem._likeCount) && j.a((Object) this._dislikeCount, (Object) reviewItem._dislikeCount) && j.a((Object) this.versionCode, (Object) reviewItem.versionCode) && j.a((Object) this.appVersionCode, (Object) reviewItem.appVersionCode) && j.a((Object) this.replyItem, (Object) reviewItem.replyItem)) {
                    if (this.showLikeDislike == reviewItem.showLikeDislike) {
                        if (this.showReport == reviewItem.showReport) {
                            if (!(this.showRate == reviewItem.showRate) || !j.a((Object) this.voteState, (Object) reviewItem.voteState)) {
                                return false;
                            }
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

    public final Integer getDislikeCount() {
        return this.dislikeCount;
    }

    public final int getId() {
        return this.id;
    }

    public final Integer getLikeCount() {
        return this.likeCount;
    }

    public final Integer getRate() {
        return this.rate;
    }

    public final ReplyReviewItem getReplyItem() {
        return this.replyItem;
    }

    public final VoteState getReplyVoteState() {
        return this.replyVoteState;
    }

    public final boolean getShowLikeDislike() {
        return this.showLikeDislike;
    }

    public final boolean getShowRate() {
        return this.showRate;
    }

    public final boolean getShowReplyVote() {
        return this.showReplyVote;
    }

    public final boolean getShowReport() {
        return this.showReport;
    }

    public final String getUser() {
        return this.user;
    }

    public final Integer getVersionCode() {
        return this.versionCode;
    }

    public int getViewType() {
        return this.viewType;
    }

    public final VoteState getVoteState() {
        return this.voteState;
    }

    public final Integer get_dislikeCount() {
        return this._dislikeCount;
    }

    public final Integer get_likeCount() {
        return this._likeCount;
    }

    public int hashCode() {
        int i2 = this.id * 31;
        String str = this.user;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        Integer num = this.rate;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.comment;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.date;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Integer num2 = this._likeCount;
        int hashCode5 = (hashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Integer num3 = this._dislikeCount;
        int hashCode6 = (hashCode5 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.versionCode;
        int hashCode7 = (hashCode6 + (num4 != null ? num4.hashCode() : 0)) * 31;
        Long l2 = this.appVersionCode;
        int hashCode8 = (hashCode7 + (l2 != null ? l2.hashCode() : 0)) * 31;
        ReplyReviewItem replyReviewItem = this.replyItem;
        int hashCode9 = (hashCode8 + (replyReviewItem != null ? replyReviewItem.hashCode() : 0)) * 31;
        boolean z = this.showLikeDislike;
        if (z) {
            z = true;
        }
        int i4 = (hashCode9 + (z ? 1 : 0)) * 31;
        boolean z2 = this.showReport;
        if (z2) {
            z2 = true;
        }
        int i5 = (i4 + (z2 ? 1 : 0)) * 31;
        boolean z3 = this.showRate;
        if (z3) {
            z3 = true;
        }
        int i6 = (i5 + (z3 ? 1 : 0)) * 31;
        VoteState voteState2 = this.voteState;
        if (voteState2 != null) {
            i3 = voteState2.hashCode();
        }
        return i6 + i3;
    }

    public final boolean isDisliked() {
        return this.voteState == VoteState.DOWN_VOTE;
    }

    public final boolean isLiked() {
        return this.voteState == VoteState.UP_VOTE;
    }

    public final boolean isReplyDisliked() {
        return this.replyVoteState == VoteState.DOWN_VOTE;
    }

    public final boolean isReplyLiked() {
        return this.replyVoteState == VoteState.UP_VOTE;
    }

    public final void removeDownVote() {
        if (this.voteState == VoteState.DOWN_VOTE) {
            Integer num = this.dislikeCount;
            this.dislikeCount = num != null ? Integer.valueOf(num.intValue() - 1) : null;
        }
        this.voteState = VoteState.NONE;
    }

    public final void removeReplyDownVote() {
        if (this.replyVoteState == VoteState.DOWN_VOTE) {
            ReplyReviewItem replyReviewItem = this.replyItem;
            if (replyReviewItem != null) {
                replyReviewItem.setDislikeCount(replyReviewItem.getDislikeCount() - 1);
            } else {
                j.a();
                throw null;
            }
        }
        setReplyVoteState(VoteState.NONE);
    }

    public final void removeReplyUpVote() {
        if (this.replyVoteState == VoteState.UP_VOTE) {
            ReplyReviewItem replyReviewItem = this.replyItem;
            if (replyReviewItem != null) {
                replyReviewItem.setLikes(replyReviewItem.getLikes() - 1);
            } else {
                j.a();
                throw null;
            }
        }
        setReplyVoteState(VoteState.NONE);
    }

    public final void removeUpVote() {
        if (this.voteState == VoteState.UP_VOTE) {
            Integer num = this.likeCount;
            this.likeCount = num != null ? Integer.valueOf(num.intValue() - 1) : null;
        }
        this.voteState = VoteState.NONE;
    }

    public final void setDislikeCount(Integer num) {
        this.dislikeCount = num;
    }

    public final void setLikeCount(Integer num) {
        this.likeCount = num;
    }

    public final void setReplyVoteState(VoteState voteState2) {
        ReplyReviewItem replyReviewItem = this.replyItem;
        if (replyReviewItem != null) {
            if (voteState2 != null) {
                replyReviewItem.setVoteState(voteState2);
            } else {
                j.a();
                throw null;
            }
        }
        this.replyVoteState = voteState2;
    }

    public final void setVoteState(VoteState voteState2) {
        j.b(voteState2, "<set-?>");
        this.voteState = voteState2;
    }

    public String toString() {
        return "ReviewItem(id=" + this.id + ", user=" + this.user + ", rate=" + this.rate + ", comment=" + this.comment + ", date=" + this.date + ", _likeCount=" + this._likeCount + ", _dislikeCount=" + this._dislikeCount + ", versionCode=" + this.versionCode + ", appVersionCode=" + this.appVersionCode + ", replyItem=" + this.replyItem + ", showLikeDislike=" + this.showLikeDislike + ", showReport=" + this.showReport + ", showRate=" + this.showRate + ", voteState=" + this.voteState + ")";
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ ReviewItem(int r19, java.lang.String r20, java.lang.Integer r21, java.lang.String r22, java.lang.String r23, java.lang.Integer r24, java.lang.Integer r25, java.lang.Integer r26, java.lang.Long r27, com.farsitel.bazaar.common.model.reviews.ReplyReviewItem r28, boolean r29, boolean r30, boolean r31, com.farsitel.bazaar.common.model.reviews.VoteState r32, int r33, h.f.b.f r34) {
        /*
            r18 = this;
            r0 = r33
            r1 = r0 & 1024(0x400, float:1.435E-42)
            r2 = 1
            if (r1 == 0) goto L_0x0009
            r14 = 1
            goto L_0x000b
        L_0x0009:
            r14 = r29
        L_0x000b:
            r1 = r0 & 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L_0x0011
            r15 = 1
            goto L_0x0013
        L_0x0011:
            r15 = r30
        L_0x0013:
            r1 = r0 & 4096(0x1000, float:5.74E-42)
            if (r1 == 0) goto L_0x001a
            r16 = 1
            goto L_0x001c
        L_0x001a:
            r16 = r31
        L_0x001c:
            r0 = r0 & 8192(0x2000, float:1.14794E-41)
            if (r0 == 0) goto L_0x0025
            com.farsitel.bazaar.common.model.reviews.VoteState r0 = com.farsitel.bazaar.common.model.reviews.VoteState.NONE
            r17 = r0
            goto L_0x0027
        L_0x0025:
            r17 = r32
        L_0x0027:
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            r7 = r22
            r8 = r23
            r9 = r24
            r10 = r25
            r11 = r26
            r12 = r27
            r13 = r28
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.reviews.ReviewItem.<init>(int, java.lang.String, java.lang.Integer, java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, java.lang.Integer, java.lang.Long, com.farsitel.bazaar.common.model.reviews.ReplyReviewItem, boolean, boolean, boolean, com.farsitel.bazaar.common.model.reviews.VoteState, int, h.f.b.f):void");
    }
}
