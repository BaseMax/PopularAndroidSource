package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;

/* compiled from: PostCommentResponseDto.kt */
public final class PostCommentResponseDto {
    @c("result")
    public final boolean result;

    public PostCommentResponseDto(boolean z) {
        this.result = z;
    }

    public static /* synthetic */ PostCommentResponseDto copy$default(PostCommentResponseDto postCommentResponseDto, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = postCommentResponseDto.result;
        }
        return postCommentResponseDto.copy(z);
    }

    public final boolean component1() {
        return this.result;
    }

    public final PostCommentResponseDto copy(boolean z) {
        return new PostCommentResponseDto(z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PostCommentResponseDto) {
                if (this.result == ((PostCommentResponseDto) obj).result) {
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
        return "PostCommentResponseDto(result=" + this.result + ")";
    }
}
