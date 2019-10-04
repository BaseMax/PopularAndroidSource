package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.reviewRequest")
/* compiled from: GetReviewRequestDto.kt */
public final class GetReviewRequestDto {
    @c("end")
    public final int end;
    @c("packageName")
    public final String packageName;
    @c("sortType")
    public final String sortType;
    @c("start")
    public final int start;

    public GetReviewRequestDto(String str, int i2, int i3, String str2) {
        j.b(str, "packageName");
        j.b(str2, "sortType");
        this.packageName = str;
        this.start = i2;
        this.end = i3;
        this.sortType = str2;
    }

    public static /* synthetic */ GetReviewRequestDto copy$default(GetReviewRequestDto getReviewRequestDto, String str, int i2, int i3, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = getReviewRequestDto.packageName;
        }
        if ((i4 & 2) != 0) {
            i2 = getReviewRequestDto.start;
        }
        if ((i4 & 4) != 0) {
            i3 = getReviewRequestDto.end;
        }
        if ((i4 & 8) != 0) {
            str2 = getReviewRequestDto.sortType;
        }
        return getReviewRequestDto.copy(str, i2, i3, str2);
    }

    public final String component1() {
        return this.packageName;
    }

    public final int component2() {
        return this.start;
    }

    public final int component3() {
        return this.end;
    }

    public final String component4() {
        return this.sortType;
    }

    public final GetReviewRequestDto copy(String str, int i2, int i3, String str2) {
        j.b(str, "packageName");
        j.b(str2, "sortType");
        return new GetReviewRequestDto(str, i2, i3, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GetReviewRequestDto) {
                GetReviewRequestDto getReviewRequestDto = (GetReviewRequestDto) obj;
                if (j.a((Object) this.packageName, (Object) getReviewRequestDto.packageName)) {
                    if (this.start == getReviewRequestDto.start) {
                        if (!(this.end == getReviewRequestDto.end) || !j.a((Object) this.sortType, (Object) getReviewRequestDto.sortType)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getEnd() {
        return this.end;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getSortType() {
        return this.sortType;
    }

    public final int getStart() {
        return this.start;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (((((str != null ? str.hashCode() : 0) * 31) + this.start) * 31) + this.end) * 31;
        String str2 = this.sortType;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "GetReviewRequestDto(packageName=" + this.packageName + ", start=" + this.start + ", end=" + this.end + ", sortType=" + this.sortType + ")";
    }
}
