package com.farsitel.bazaar.data.feature.payment;

import c.c.a.e.d.m.c;
import c.c.a.e.d.m.f;
import com.crashlytics.android.core.MetaDataStore;
import h.f.b.j;
import java.util.List;

/* compiled from: PaymentEntities.kt */
public final class PaymentInfo extends PaymentData {
    public final String agreementDescription;
    public final Long credit;
    public final String creditString;
    public final String dealerIconUrl;
    public final String dealerName;
    public final String kind;
    public final String paymentData;
    public final List<PaymentGateway> paymentMethods;
    public final String productName;
    public final String sign;

    public PaymentInfo(String str, String str2, Long l2, String str3, String str4, String str5, String str6, String str7, String str8, List<PaymentGateway> list) {
        super(null);
        this.paymentData = str;
        this.sign = str2;
        this.credit = l2;
        this.creditString = str3;
        this.productName = str4;
        this.kind = str5;
        this.dealerName = str6;
        this.dealerIconUrl = str7;
        this.agreementDescription = str8;
        this.paymentMethods = list;
    }

    public final String a() {
        return this.agreementDescription;
    }

    public final Long b() {
        return this.credit;
    }

    public final String c() {
        return this.creditString;
    }

    public final String d() {
        return this.dealerIconUrl;
    }

    public final String e() {
        return this.dealerName;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.paymentMethods, (java.lang.Object) r3.paymentMethods) != false) goto L_0x006f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x006f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.feature.payment.PaymentInfo
            if (r0 == 0) goto L_0x006d
            com.farsitel.bazaar.data.feature.payment.PaymentInfo r3 = (com.farsitel.bazaar.data.feature.payment.PaymentInfo) r3
            java.lang.String r0 = r2.paymentData
            java.lang.String r1 = r3.paymentData
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.sign
            java.lang.String r1 = r3.sign
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.Long r0 = r2.credit
            java.lang.Long r1 = r3.credit
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.creditString
            java.lang.String r1 = r3.creditString
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.productName
            java.lang.String r1 = r3.productName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.kind
            java.lang.String r1 = r3.kind
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.dealerName
            java.lang.String r1 = r3.dealerName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.dealerIconUrl
            java.lang.String r1 = r3.dealerIconUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.agreementDescription
            java.lang.String r1 = r3.agreementDescription
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.util.List<com.farsitel.bazaar.data.feature.payment.PaymentGateway> r0 = r2.paymentMethods
            java.util.List<com.farsitel.bazaar.data.feature.payment.PaymentGateway> r3 = r3.paymentMethods
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x006d
            goto L_0x006f
        L_0x006d:
            r3 = 0
            return r3
        L_0x006f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.payment.PaymentInfo.equals(java.lang.Object):boolean");
    }

    public final String f() {
        return this.paymentData;
    }

    public final List<PaymentGateway> g() {
        return this.paymentMethods;
    }

    public final String h() {
        return this.productName;
    }

    public int hashCode() {
        String str = this.paymentData;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sign;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Long l2 = this.credit;
        int hashCode3 = (hashCode2 + (l2 != null ? l2.hashCode() : 0)) * 31;
        String str3 = this.creditString;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.productName;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.kind;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.dealerName;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.dealerIconUrl;
        int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.agreementDescription;
        int hashCode9 = (hashCode8 + (str8 != null ? str8.hashCode() : 0)) * 31;
        List<PaymentGateway> list = this.paymentMethods;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode9 + i2;
    }

    public final String i() {
        return this.sign;
    }

    public final boolean j() {
        String str = this.paymentData;
        if (str == null || str.length() == 0) {
            return false;
        }
        String str2 = this.sign;
        return !(str2 == null || str2.length() == 0);
    }

    public String toString() {
        return "PaymentInfo(paymentData=" + this.paymentData + ", sign=" + this.sign + ", credit=" + this.credit + ", creditString=" + this.creditString + ", productName=" + this.productName + ", kind=" + this.kind + ", dealerName=" + this.dealerName + ", dealerIconUrl=" + this.dealerIconUrl + ", agreementDescription=" + this.agreementDescription + ", paymentMethods=" + this.paymentMethods + ")";
    }

    public final f a(String str) {
        j.b(str, MetaDataStore.KEY_USER_ID);
        String str2 = this.paymentData;
        boolean z = false;
        if (!(str2 == null || str2.length() == 0)) {
            String str3 = this.sign;
            if (str3 == null || str3.length() == 0) {
                z = true;
            }
            if (!z) {
                c a2 = c.f5275a.a(this.paymentData);
                f fVar = new f(a2.e(), str, a2.d(), a2.c(), a2.a(), a2.b(), "", this.paymentData, this.sign, false);
                return fVar;
            }
        }
        throw new RuntimeException("trying to cast not bought product to purchaseEntity");
    }
}
