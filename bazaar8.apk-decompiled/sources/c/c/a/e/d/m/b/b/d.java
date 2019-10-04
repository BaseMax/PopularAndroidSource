package c.c.a.e.d.m.b.b;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: CollectPaymentResponseDto.kt */
public final class d {
    @c("errorMessage")
    public final String errorMessage;
    @c("statusCode")
    public final int status;

    public final int a() {
        return this.status;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (!(this.status == dVar.status) || !j.a((Object) this.errorMessage, (Object) dVar.errorMessage)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.status * 31;
        String str = this.errorMessage;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "CollectPaymentResponseDto(status=" + this.status + ", errorMessage=" + this.errorMessage + ")";
    }
}
