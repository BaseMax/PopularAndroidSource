package c.c.a.e.d.a.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.changePhoneNumberRequest")
/* compiled from: ChangePhoneNumberRequestDto.kt */
public final class a {
    @c("phoneNumber")
    public final String phoneNumber;

    public a(String str) {
        j.b(str, "phoneNumber");
        this.phoneNumber = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && j.a((Object) this.phoneNumber, (Object) ((a) obj).phoneNumber));
    }

    public int hashCode() {
        String str = this.phoneNumber;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ChangePhoneNumberRequestDto(phoneNumber=" + this.phoneNumber + ")";
    }
}
