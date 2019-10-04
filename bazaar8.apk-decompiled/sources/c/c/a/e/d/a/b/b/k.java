package c.c.a.e.d.a.b.b;

import c.c.a.e.d.m.a;
import c.e.d.a.c;

/* compiled from: RedeemGiftCardResponseDto.kt */
public final class k {
    @c("credit")
    public final long credit;

    public final long a() {
        long j2 = this.credit;
        a.b(j2);
        return j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof k) {
                if (this.credit == ((k) obj).credit) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.credit;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public String toString() {
        return "RedeemGiftCardResponseDto(credit=" + this.credit + ")";
    }
}
