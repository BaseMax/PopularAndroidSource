package c.c.a.e.d.m.b.b;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: BuyCreditMethodsResponseDto.kt */
public final class a {
    @c("credit")
    public final int credit;
    @c("methods")
    public final List<m> paymentMethods;

    public final List<m> a() {
        return this.paymentMethods;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (!(this.credit == aVar.credit) || !j.a((Object) this.paymentMethods, (Object) aVar.paymentMethods)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.credit * 31;
        List<m> list = this.paymentMethods;
        return i2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "BuyCreditMethodsResponseDto(credit=" + this.credit + ", paymentMethods=" + this.paymentMethods + ")";
    }
}
