package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;

/* compiled from: VoteCommentResponseDto.kt */
public final class VoteCommentResponseDto {
    @c("result")
    public final boolean result;

    public VoteCommentResponseDto(boolean z) {
        this.result = z;
    }

    public static /* synthetic */ VoteCommentResponseDto copy$default(VoteCommentResponseDto voteCommentResponseDto, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = voteCommentResponseDto.result;
        }
        return voteCommentResponseDto.copy(z);
    }

    public final boolean component1() {
        return this.result;
    }

    public final VoteCommentResponseDto copy(boolean z) {
        return new VoteCommentResponseDto(z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof VoteCommentResponseDto) {
                if (this.result == ((VoteCommentResponseDto) obj).result) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getResult() {
        return this.result;
    }

    public int hashCode() {
        boolean z = this.result;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "VoteCommentResponseDto(result=" + this.result + ")";
    }
}
