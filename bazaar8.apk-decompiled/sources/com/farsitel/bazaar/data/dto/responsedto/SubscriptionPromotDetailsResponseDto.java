package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: SubscriptionPromotDetailsResponseDto.kt */
public final class SubscriptionPromotDetailsResponseDto {
    public final boolean hasSubscription;
    @c("subscriptionData")
    public final SubscriptionDataDto subscriptionDataDto;

    public SubscriptionPromotDetailsResponseDto(boolean z, SubscriptionDataDto subscriptionDataDto2) {
        j.b(subscriptionDataDto2, "subscriptionDataDto");
        this.hasSubscription = z;
        this.subscriptionDataDto = subscriptionDataDto2;
    }

    public static /* synthetic */ SubscriptionPromotDetailsResponseDto copy$default(SubscriptionPromotDetailsResponseDto subscriptionPromotDetailsResponseDto, boolean z, SubscriptionDataDto subscriptionDataDto2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = subscriptionPromotDetailsResponseDto.hasSubscription;
        }
        if ((i2 & 2) != 0) {
            subscriptionDataDto2 = subscriptionPromotDetailsResponseDto.subscriptionDataDto;
        }
        return subscriptionPromotDetailsResponseDto.copy(z, subscriptionDataDto2);
    }

    public final boolean component1() {
        return this.hasSubscription;
    }

    public final SubscriptionDataDto component2() {
        return this.subscriptionDataDto;
    }

    public final SubscriptionPromotDetailsResponseDto copy(boolean z, SubscriptionDataDto subscriptionDataDto2) {
        j.b(subscriptionDataDto2, "subscriptionDataDto");
        return new SubscriptionPromotDetailsResponseDto(z, subscriptionDataDto2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SubscriptionPromotDetailsResponseDto) {
                SubscriptionPromotDetailsResponseDto subscriptionPromotDetailsResponseDto = (SubscriptionPromotDetailsResponseDto) obj;
                if (!(this.hasSubscription == subscriptionPromotDetailsResponseDto.hasSubscription) || !j.a((Object) this.subscriptionDataDto, (Object) subscriptionPromotDetailsResponseDto.subscriptionDataDto)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getHasSubscription() {
        return this.hasSubscription;
    }

    public final SubscriptionDataDto getSubscriptionDataDto() {
        return this.subscriptionDataDto;
    }

    public int hashCode() {
        boolean z = this.hasSubscription;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        SubscriptionDataDto subscriptionDataDto2 = this.subscriptionDataDto;
        return i2 + (subscriptionDataDto2 != null ? subscriptionDataDto2.hashCode() : 0);
    }

    public String toString() {
        return "SubscriptionPromotDetailsResponseDto(hasSubscription=" + this.hasSubscription + ", subscriptionDataDto=" + this.subscriptionDataDto + ")";
    }
}
