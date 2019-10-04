package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;

/* compiled from: ReportCommentResponseDto.kt */
public final class ReportCommentResponseDto {
    @c("result")
    public final boolean result;

    public ReportCommentResponseDto(boolean z) {
        this.result = z;
    }

    public static /* synthetic */ ReportCommentResponseDto copy$default(ReportCommentResponseDto reportCommentResponseDto, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = reportCommentResponseDto.result;
        }
        return reportCommentResponseDto.copy(z);
    }

    public final boolean component1() {
        return this.result;
    }

    public final ReportCommentResponseDto copy(boolean z) {
        return new ReportCommentResponseDto(z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ReportCommentResponseDto) {
                if (this.result == ((ReportCommentResponseDto) obj).result) {
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
        return "ReportCommentResponseDto(result=" + this.result + ")";
    }
}
