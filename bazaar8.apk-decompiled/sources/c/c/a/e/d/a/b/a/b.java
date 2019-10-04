package c.c.a.e.d.a.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.getAccessTokenRequest")
/* compiled from: GetAccessTokenRequestDto.kt */
public final class b {
    @c("refreshToken")
    public final String refreshToken;

    public b(String str) {
        j.b(str, "refreshToken");
        this.refreshToken = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof b) && j.a((Object) this.refreshToken, (Object) ((b) obj).refreshToken));
    }

    public int hashCode() {
        String str = this.refreshToken;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "GetAccessTokenRequestDto(refreshToken=" + this.refreshToken + ")";
    }
}
