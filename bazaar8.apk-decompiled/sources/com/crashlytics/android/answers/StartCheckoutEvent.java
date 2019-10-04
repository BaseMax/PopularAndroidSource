package com.crashlytics.android.answers;

import java.math.BigDecimal;
import java.util.Currency;

public class StartCheckoutEvent extends PredefinedEvent<StartCheckoutEvent> {
    public static final String CURRENCY_ATTRIBUTE = "currency";
    public static final String ITEM_COUNT_ATTRIBUTE = "itemCount";
    public static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(RetryManager.NANOSECONDS_IN_MS);
    public static final String TOTAL_PRICE_ATTRIBUTE = "totalPrice";
    public static final String TYPE = "startCheckout";

    public String getPredefinedType() {
        return TYPE;
    }

    public long priceToMicros(BigDecimal bigDecimal) {
        return MICRO_CONSTANT.multiply(bigDecimal).longValue();
    }

    public StartCheckoutEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    public StartCheckoutEvent putItemCount(int i2) {
        this.predefinedAttributes.put(ITEM_COUNT_ATTRIBUTE, (Number) Integer.valueOf(i2));
        return this;
    }

    public StartCheckoutEvent putTotalPrice(BigDecimal bigDecimal) {
        if (!this.validator.isNull(bigDecimal, TOTAL_PRICE_ATTRIBUTE)) {
            this.predefinedAttributes.put(TOTAL_PRICE_ATTRIBUTE, (Number) Long.valueOf(priceToMicros(bigDecimal)));
        }
        return this;
    }
}
