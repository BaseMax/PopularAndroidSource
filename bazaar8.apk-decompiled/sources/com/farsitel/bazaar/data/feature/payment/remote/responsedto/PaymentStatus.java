package com.farsitel.bazaar.data.feature.payment.remote.responsedto;

/* compiled from: CollectPaymentResponseDto.kt */
public enum PaymentStatus {
    OK(0),
    CANCELED(1),
    FAILED(2),
    UNKNOWN(3);
    
    public final int value;

    /* access modifiers changed from: public */
    PaymentStatus(int i2) {
        this.value = i2;
    }
}
