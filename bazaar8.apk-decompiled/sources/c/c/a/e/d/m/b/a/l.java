package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.redeemGiftCardRequest")
/* compiled from: RedeemGiftCardRequestDto.kt */
public final class l {
    @c("code")
    public final String code;

    public l(String str) {
        j.b(str, "code");
        this.code = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof l) && j.a((Object) this.code, (Object) ((l) obj).code));
    }

    public int hashCode() {
        String str = this.code;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "RedeemGiftCardRequestDto(code=" + this.code + ")";
    }
}
