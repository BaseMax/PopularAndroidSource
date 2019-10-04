package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class FehrestResponseDto {
    @c("pages")
    public final List<SinglePage> pages;

    public FehrestResponseDto(List<SinglePage> list) {
        j.b(list, "pages");
        this.pages = list;
    }

    public static /* synthetic */ FehrestResponseDto copy$default(FehrestResponseDto fehrestResponseDto, List<SinglePage> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = fehrestResponseDto.pages;
        }
        return fehrestResponseDto.copy(list);
    }

    public final List<SinglePage> component1() {
        return this.pages;
    }

    public final FehrestResponseDto copy(List<SinglePage> list) {
        j.b(list, "pages");
        return new FehrestResponseDto(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof FehrestResponseDto) && j.a((Object) this.pages, (Object) ((FehrestResponseDto) obj).pages));
    }

    public final List<SinglePage> getPages() {
        return this.pages;
    }

    public int hashCode() {
        List<SinglePage> list = this.pages;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "FehrestResponseDto(pages=" + this.pages + ")";
    }
}
