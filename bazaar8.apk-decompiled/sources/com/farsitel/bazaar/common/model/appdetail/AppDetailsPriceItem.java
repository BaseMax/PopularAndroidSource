package com.farsitel.bazaar.common.model.appdetail;

import java.io.Serializable;

/* compiled from: ViewHolderItem.kt */
public final class AppDetailsPriceItem implements Serializable {
    public final Integer price;
    public final Integer priceBeforeDiscount;
    public final String priceBeforeDiscountString;
    public final String priceString;

    public AppDetailsPriceItem(Integer num, Integer num2, String str, String str2) {
        this.price = num;
        this.priceBeforeDiscount = num2;
        this.priceString = str;
        this.priceBeforeDiscountString = str2;
    }

    public static /* synthetic */ AppDetailsPriceItem copy$default(AppDetailsPriceItem appDetailsPriceItem, Integer num, Integer num2, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            num = appDetailsPriceItem.price;
        }
        if ((i2 & 2) != 0) {
            num2 = appDetailsPriceItem.priceBeforeDiscount;
        }
        if ((i2 & 4) != 0) {
            str = appDetailsPriceItem.priceString;
        }
        if ((i2 & 8) != 0) {
            str2 = appDetailsPriceItem.priceBeforeDiscountString;
        }
        return appDetailsPriceItem.copy(num, num2, str, str2);
    }

    public final Integer component1() {
        return this.price;
    }

    public final Integer component2() {
        return this.priceBeforeDiscount;
    }

    public final String component3() {
        return this.priceString;
    }

    public final String component4() {
        return this.priceBeforeDiscountString;
    }

    public final AppDetailsPriceItem copy(Integer num, Integer num2, String str, String str2) {
        return new AppDetailsPriceItem(num, num2, str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.priceBeforeDiscountString, (java.lang.Object) r3.priceBeforeDiscountString) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.AppDetailsPriceItem
            if (r0 == 0) goto L_0x0031
            com.farsitel.bazaar.common.model.appdetail.AppDetailsPriceItem r3 = (com.farsitel.bazaar.common.model.appdetail.AppDetailsPriceItem) r3
            java.lang.Integer r0 = r2.price
            java.lang.Integer r1 = r3.price
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.Integer r0 = r2.priceBeforeDiscount
            java.lang.Integer r1 = r3.priceBeforeDiscount
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.priceString
            java.lang.String r1 = r3.priceString
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.priceBeforeDiscountString
            java.lang.String r3 = r3.priceBeforeDiscountString
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.AppDetailsPriceItem.equals(java.lang.Object):boolean");
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

    public int hashCode() {
        Integer num = this.price;
        int i2 = 0;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        Integer num2 = this.priceBeforeDiscount;
        int hashCode2 = (hashCode + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str = this.priceString;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.priceBeforeDiscountString;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "AppDetailsPriceItem(price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", priceString=" + this.priceString + ", priceBeforeDiscountString=" + this.priceBeforeDiscountString + ")";
    }
}
