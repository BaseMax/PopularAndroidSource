package com.farsitel.bazaar.data.feature.cinema.common.remote;

import c.c.a.e.d.h.b.a.b;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: VideoPurchaseStateDto.kt */
public enum VideoPurchaseStateDto {
    free,
    bought,
    subscription;

    public final VideoPurchaseState f() {
        int i2 = b.f5082a[ordinal()];
        if (i2 == 1) {
            return VideoPurchaseState.FREE;
        }
        if (i2 == 2) {
            return VideoPurchaseState.SUBSCRIPTION;
        }
        if (i2 == 3) {
            return VideoPurchaseState.BOUGHT;
        }
        throw new NoWhenBranchMatchedException();
    }
}
