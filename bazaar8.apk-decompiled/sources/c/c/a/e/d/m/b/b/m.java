package c.c.a.e.d.m.b.b;

import c.e.d.a.c;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import h.f.b.j;

/* compiled from: PaymentGatewayDto.kt */
public final class m {
    @c("agreement")
    public final String agreement;
    @c("code")
    public final String code;
    @c("description")
    public final String description;
    @c("icon")
    public final String icon;
    @c("price")
    public final long price;
    @c("rank")
    public final int rank;
    @c("subDescription")
    public final String subDescription;
    @c("title")
    public final String title;
    @c("type")
    public final String type;

    public final int a() {
        return this.rank;
    }

    public final PaymentGateway b() {
        PaymentGateway paymentGateway = new PaymentGateway(this.title, this.icon, this.type, this.code, this.agreement, this.description, this.subDescription, this.price);
        return paymentGateway;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof m) {
                m mVar = (m) obj;
                if ((this.rank == mVar.rank) && j.a((Object) this.title, (Object) mVar.title) && j.a((Object) this.icon, (Object) mVar.icon) && j.a((Object) this.type, (Object) mVar.type) && j.a((Object) this.code, (Object) mVar.code) && j.a((Object) this.agreement, (Object) mVar.agreement) && j.a((Object) this.description, (Object) mVar.description) && j.a((Object) this.subDescription, (Object) mVar.subDescription)) {
                    if (this.price == mVar.price) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.rank * 31;
        String str = this.title;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.icon;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.type;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.code;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.agreement;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.description;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.subDescription;
        if (str7 != null) {
            i3 = str7.hashCode();
        }
        long j2 = this.price;
        return ((hashCode6 + i3) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "PaymentGatewayDto(rank=" + this.rank + ", title=" + this.title + ", icon=" + this.icon + ", type=" + this.type + ", code=" + this.code + ", agreement=" + this.agreement + ", description=" + this.description + ", subDescription=" + this.subDescription + ", price=" + this.price + ")";
    }
}
