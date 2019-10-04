package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.j;

@h("singleRequest.markReviewRequest")
/* compiled from: VoteReviewRequestDto.kt */
public final class VoteReviewRequestDto {
    @c("isReply")
    public final boolean isReply;
    @c("reviewId")
    public final int reviewId;
    @c("type")
    public final String type;

    public VoteReviewRequestDto(int i2, String str, boolean z) {
        j.b(str, SessionEventTransform.TYPE_KEY);
        this.reviewId = i2;
        this.type = str;
        this.isReply = z;
    }

    public final int getReviewId() {
        return this.reviewId;
    }

    public final String getType() {
        return this.type;
    }

    public final boolean isReply() {
        return this.isReply;
    }
}
