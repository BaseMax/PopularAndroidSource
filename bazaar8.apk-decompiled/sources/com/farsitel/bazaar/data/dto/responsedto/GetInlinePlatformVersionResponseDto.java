package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: GetInlinePlatformVersionResponseDto.kt */
public final class GetInlinePlatformVersionResponseDto {
    @c("lastPlatformVersion")
    public final String lastPlatformVersion;

    public GetInlinePlatformVersionResponseDto(String str) {
        j.b(str, "lastPlatformVersion");
        this.lastPlatformVersion = str;
    }

    public final String getLastPlatformVersion() {
        return this.lastPlatformVersion;
    }
}
