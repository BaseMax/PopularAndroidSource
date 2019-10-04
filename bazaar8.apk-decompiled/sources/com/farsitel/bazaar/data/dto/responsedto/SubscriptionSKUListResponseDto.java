package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: SubscriptionSKUListResponseDto.kt */
public final class SubscriptionSKUListResponseDto {
    @c("data")
    public final List<SubscriptionDataDto> subscriptionDataDto;

    public SubscriptionSKUListResponseDto(List<SubscriptionDataDto> list) {
        j.b(list, "subscriptionDataDto");
        this.subscriptionDataDto = list;
    }

    public static /* synthetic */ SubscriptionSKUListResponseDto copy$default(SubscriptionSKUListResponseDto subscriptionSKUListResponseDto, List<SubscriptionDataDto> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = subscriptionSKUListResponseDto.subscriptionDataDto;
        }
        return subscriptionSKUListResponseDto.copy(list);
    }

    public final List<SubscriptionDataDto> component1() {
        return this.subscriptionDataDto;
    }

    public final SubscriptionSKUListResponseDto copy(List<SubscriptionDataDto> list) {
        j.b(list, "subscriptionDataDto");
        return new SubscriptionSKUListResponseDto(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SubscriptionSKUListResponseDto) && j.a((Object) this.subscriptionDataDto, (Object) ((SubscriptionSKUListResponseDto) obj).subscriptionDataDto));
    }

    public final List<SubscriptionDataDto> getSubscriptionDataDto() {
        return this.subscriptionDataDto;
    }

    public int hashCode() {
        List<SubscriptionDataDto> list = this.subscriptionDataDto;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "SubscriptionSKUListResponseDto(subscriptionDataDto=" + this.subscriptionDataDto + ")";
    }
}
