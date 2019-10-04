package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;

@h("singleRequest.singleReviewRequest")
/* compiled from: GetReviewRequestDto.kt */
public final class GetSingleReviewRequestDto {
    @c("reviewId")
    public final int reviewId;

    public GetSingleReviewRequestDto(int i2) {
        this.reviewId = i2;
    }

    public static /* synthetic */ GetSingleReviewRequestDto copy$default(GetSingleReviewRequestDto getSingleReviewRequestDto, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = getSingleReviewRequestDto.reviewId;
        }
        return getSingleReviewRequestDto.copy(i2);
    }

    public final int component1() {
        return this.reviewId;
    }

    public final GetSingleReviewRequestDto copy(int i2) {
        return new GetSingleReviewRequestDto(i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GetSingleReviewRequestDto) {
                if (this.reviewId == ((GetSingleReviewRequestDto) obj).reviewId) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int getReviewId() {
        return this.reviewId;
    }

    public int hashCode() {
        return this.reviewId;
    }

    public String toString() {
        return "GetSingleReviewRequestDto(reviewId=" + this.reviewId + ")";
    }
}
