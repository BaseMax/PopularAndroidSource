package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class GatewayPaymentFailed extends ErrorModel.Feature {
    public static final GatewayPaymentFailed INSTANCE = new GatewayPaymentFailed();

    public GatewayPaymentFailed() {
        super("GatewayPaymentError");
    }
}
