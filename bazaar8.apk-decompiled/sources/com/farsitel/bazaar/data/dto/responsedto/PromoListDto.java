package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class PromoListDto {
    @c("promoList")
    public final List<PagePromoRowDto> promos;

    public PromoListDto(List<PagePromoRowDto> list) {
        j.b(list, "promos");
        this.promos = list;
    }

    public final List<PagePromoRowDto> getPromos() {
        return this.promos;
    }
}
