package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;

@h("singleRequest.initiatePaymentRequest")
/* compiled from: InitiatePaymentRequestDto.kt */
public final class j {
    @c("amount")
    public final long amount;
    @c("gatewayCode")
    public final String gatewayCode;

    public j(String str, long j2) {
        h.f.b.j.b(str, "gatewayCode");
        this.gatewayCode = str;
        this.amount = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                if (h.f.b.j.a((Object) this.gatewayCode, (Object) jVar.gatewayCode)) {
                    if (this.amount == jVar.amount) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.gatewayCode;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.amount;
        return (hashCode * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "InitiatePaymentRequestDto(gatewayCode=" + this.gatewayCode + ", amount=" + this.amount + ")";
    }
}
