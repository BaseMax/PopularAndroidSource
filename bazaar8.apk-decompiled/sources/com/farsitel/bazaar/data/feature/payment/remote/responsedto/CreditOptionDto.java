package com.farsitel.bazaar.data.feature.payment.remote.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import java.io.Serializable;

/* compiled from: GetCreditOptionDto.kt */
public final class CreditOptionDto implements Serializable {
    @c("amount")
    public final long amount;
    @c("label")
    public final String label;

    public final CreditOption a() {
        return new CreditOption(this.label, this.amount);
    }
}
