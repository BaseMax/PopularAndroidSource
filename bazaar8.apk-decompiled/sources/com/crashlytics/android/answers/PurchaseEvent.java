package com.crashlytics.android.answers;

import java.math.BigDecimal;
import java.util.Currency;

public class PurchaseEvent extends PredefinedEvent<PurchaseEvent> {
    public static final String CURRENCY_ATTRIBUTE = "currency";
    public static final String ITEM_ID_ATTRIBUTE = "itemId";
    public static final String ITEM_NAME_ATTRIBUTE = "itemName";
    public static final String ITEM_PRICE_ATTRIBUTE = "itemPrice";
    public static final String ITEM_TYPE_ATTRIBUTE = "itemType";
    public static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(RetryManager.NANOSECONDS_IN_MS);
    public static final String SUCCESS_ATTRIBUTE = "success";
    public static final String TYPE = "purchase";

    public String getPredefinedType() {
        return TYPE;
    }

    public long priceToMicros(BigDecimal bigDecimal) {
        return MICRO_CONSTANT.multiply(bigDecimal).longValue();
    }

    public PurchaseEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    public PurchaseEvent putItemId(String str) {
        this.predefinedAttributes.put("itemId", str);
        return this;
    }

    public PurchaseEvent putItemName(String str) {
        this.predefinedAttributes.put("itemName", str);
        return this;
    }

    public PurchaseEvent putItemPrice(BigDecimal bigDecimal) {
        if (!this.validator.isNull(bigDecimal, "itemPrice")) {
            this.predefinedAttributes.put("itemPrice", (Number) Long.valueOf(priceToMicros(bigDecimal)));
        }
        return this;
    }

    public PurchaseEvent putItemType(String str) {
        this.predefinedAttributes.put("itemType", str);
        return this;
    }

    public PurchaseEvent putSuccess(boolean z) {
        this.predefinedAttributes.put("success", Boolean.toString(z));
        return this;
    }
}
