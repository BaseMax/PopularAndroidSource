package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class AppListDto {
    @c("appList")
    public final List<PageAppRowItemDto> apps;

    public AppListDto(List<PageAppRowItemDto> list) {
        j.b(list, "apps");
        this.apps = list;
    }

    public final List<PageAppRowItemDto> getApps() {
        return this.apps;
    }
}
