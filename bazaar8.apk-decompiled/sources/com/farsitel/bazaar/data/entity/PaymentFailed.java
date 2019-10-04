package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class PaymentFailed extends ErrorModel.Feature {
    public static final PaymentFailed INSTANCE = new PaymentFailed();

    public PaymentFailed() {
        super("PaymentError");
    }
}
