package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsPrice;

/* compiled from: AppDetailResponseDto.kt */
public final class h {
    @c("price")
    public final Integer price;
    @c("priceBeforeDiscount")
    public final Integer priceBeforeDiscount;
    @c("priceBeforeDiscountString")
    public final String priceBeforeDiscountString;
    @c("priceString")
    public final String priceString;

    public final AppDetailsPrice a() {
        return new AppDetailsPrice(this.price, this.priceBeforeDiscount, this.priceString, this.priceBeforeDiscountString);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.priceBeforeDiscountString, (java.lang.Object) r3.priceBeforeDiscountString) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.h
            if (r0 == 0) goto L_0x0031
            c.c.a.e.d.c.a.h r3 = (c.c.a.e.d.c.a.h) r3
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.h.equals(java.lang.Object):boolean");
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
        return "AppDetailsPriceDto(price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", priceString=" + this.priceString + ", priceBeforeDiscountString=" + this.priceBeforeDiscountString + ")";
    }
}
