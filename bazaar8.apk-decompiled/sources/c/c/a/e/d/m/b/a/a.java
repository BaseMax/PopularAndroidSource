package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.collectPaymentRequest")
/* compiled from: CollectPaymentRequestDto.kt */
public final class a {
    @c("invoiceToken")
    public final String invoiceToken;

    public a(String str) {
        j.b(str, "invoiceToken");
        this.invoiceToken = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && j.a((Object) this.invoiceToken, (Object) ((a) obj).invoiceToken));
    }

    public int hashCode() {
        String str = this.invoiceToken;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "CollectPaymentRequestDto(invoiceToken=" + this.invoiceToken + ")";
    }
}
