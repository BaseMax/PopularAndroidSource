package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;

@h("singleRequest.getBuyCreditMethodsRequest")
/* compiled from: GetBuyCreditMethodsRequestDto.kt */
public final class c {
    @c.e.d.a.c("amount")
    public final long amount;

    public c(long j2) {
        this.amount = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                if (this.amount == ((c) obj).amount) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.amount;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public String toString() {
        return "GetBuyCreditMethodsRequestDto(amount=" + this.amount + ")";
    }
}
