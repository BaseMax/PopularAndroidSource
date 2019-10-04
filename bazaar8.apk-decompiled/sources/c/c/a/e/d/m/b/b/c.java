package c.c.a.e.d.m.b.b;

import com.farsitel.bazaar.data.feature.payment.PaymentInfo;
import h.a.m;
import h.a.u;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BuyProductMethodsResponseDto.kt */
public final class c {
    @c.e.d.a.c("agreementDescription")
    public final String agreementDescription;
    @c.e.d.a.c("credit")
    public final long credit;
    @c.e.d.a.c("creditString")
    public final String creditString;
    @c.e.d.a.c("dealerIconUrl")
    public final String dealerIconUrl;
    @c.e.d.a.c("dealerName")
    public final String dealerName;
    @c.e.d.a.c("kind")
    public final String kind;
    @c.e.d.a.c("paymentData")
    public final String paymentData;
    @c.e.d.a.c("methods")
    public final List<m> paymentMethods;
    @c.e.d.a.c("productName")
    public final String productName;
    @c.e.d.a.c("sign")
    public final String sign;

    public final PaymentInfo a() {
        String str = this.paymentData;
        String str2 = this.sign;
        Long valueOf = Long.valueOf(this.credit);
        String str3 = this.creditString;
        String str4 = this.productName;
        String str5 = this.kind;
        String str6 = this.dealerIconUrl;
        String str7 = this.dealerName;
        String str8 = this.agreementDescription;
        List<T> a2 = u.a(this.paymentMethods, new b());
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (T b2 : a2) {
            arrayList.add(b2.b());
        }
        PaymentInfo paymentInfo = new PaymentInfo(str, str2, valueOf, str3, str4, str5, str7, str6, str8, arrayList);
        return paymentInfo;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (j.a((Object) this.paymentData, (Object) cVar.paymentData) && j.a((Object) this.sign, (Object) cVar.sign)) {
                    if (!(this.credit == cVar.credit) || !j.a((Object) this.productName, (Object) cVar.productName) || !j.a((Object) this.dealerName, (Object) cVar.dealerName) || !j.a((Object) this.dealerIconUrl, (Object) cVar.dealerIconUrl) || !j.a((Object) this.kind, (Object) cVar.kind) || !j.a((Object) this.creditString, (Object) cVar.creditString) || !j.a((Object) this.agreementDescription, (Object) cVar.agreementDescription) || !j.a((Object) this.paymentMethods, (Object) cVar.paymentMethods)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.paymentData;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sign;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j2 = this.credit;
        int i3 = (((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str3 = this.productName;
        int hashCode3 = (i3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.dealerName;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.dealerIconUrl;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.kind;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.creditString;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.agreementDescription;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        List<m> list = this.paymentMethods;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode8 + i2;
    }

    public String toString() {
        return "BuyProductMethodsResponseDto(paymentData=" + this.paymentData + ", sign=" + this.sign + ", credit=" + this.credit + ", productName=" + this.productName + ", dealerName=" + this.dealerName + ", dealerIconUrl=" + this.dealerIconUrl + ", kind=" + this.kind + ", creditString=" + this.creditString + ", agreementDescription=" + this.agreementDescription + ", paymentMethods=" + this.paymentMethods + ")";
    }
}
