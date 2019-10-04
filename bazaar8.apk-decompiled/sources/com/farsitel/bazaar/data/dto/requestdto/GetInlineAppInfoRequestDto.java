package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.getInlineAppInfoRequest")
/* compiled from: GetInlineAppInfoRequestDto.kt */
public final class GetInlineAppInfoRequestDto {
    @c("kashanId")
    public final String kashanId;

    public GetInlineAppInfoRequestDto(String str) {
        j.b(str, "kashanId");
        this.kashanId = str;
    }

    public static /* synthetic */ GetInlineAppInfoRequestDto copy$default(GetInlineAppInfoRequestDto getInlineAppInfoRequestDto, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = getInlineAppInfoRequestDto.kashanId;
        }
        return getInlineAppInfoRequestDto.copy(str);
    }

    public final String component1() {
        return this.kashanId;
    }

    public final GetInlineAppInfoRequestDto copy(String str) {
        j.b(str, "kashanId");
        return new GetInlineAppInfoRequestDto(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof GetInlineAppInfoRequestDto) && j.a((Object) this.kashanId, (Object) ((GetInlineAppInfoRequestDto) obj).kashanId));
    }

    public final String getKashanId() {
        return this.kashanId;
    }

    public int hashCode() {
        String str = this.kashanId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "GetInlineAppInfoRequestDto(kashanId=" + this.kashanId + ")";
    }
}
