package com.farsitel.bazaar.common.model.appdetail;

/* compiled from: AppDetail.kt */
public final class AppDetailsPrice {
    public final Integer price;
    public final Integer priceBeforeDiscount;
    public final String priceBeforeDiscountString;
    public final String priceString;

    public AppDetailsPrice(Integer num, Integer num2, String str, String str2) {
        this.price = num;
        this.priceBeforeDiscount = num2;
        this.priceString = str;
        this.priceBeforeDiscountString = str2;
    }

    public final Integer getPrice() {
        return this.price;
    }

    public final Integer getPriceBeforeDiscount() {
        return this.priceBeforeDiscount;
    }

    public final String getPriceBeforeDiscountString() {
        return this.priceBeforeDiscountString;
    }

    public final String getPriceString() {
        return this.priceString;
    }

    public final AppDetailsPriceItem toAppDetailPriceItem() {
        return new AppDetailsPriceItem(this.price, this.priceBeforeDiscount, this.priceString, this.priceBeforeDiscountString);
    }
}
