package c.c.a.e.d.a.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.getOtpTokenRequest")
/* compiled from: GetOtpTokenRequestDto.kt */
public final class d {
    @c("username")
    public final String username;

    public d(String str) {
        j.b(str, "username");
        this.username = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof d) && j.a((Object) this.username, (Object) ((d) obj).username));
    }

    public int hashCode() {
        String str = this.username;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "GetOtpTokenRequestDto(username=" + this.username + ")";
    }
}
