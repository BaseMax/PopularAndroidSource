package c.c.a.e.d.a.b.a;

import c.c.a.c.f.a.h;
import h.f.b.j;

@h("singleRequest.getMergeAccountOtpTokenRequest")
/* compiled from: GetMergeAccountOtpTokenRequestDto.kt */
public final class c {
    @c.e.d.a.c("email")
    public final String email;

    public c(String str) {
        j.b(str, "email");
        this.email = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof c) && j.a((Object) this.email, (Object) ((c) obj).email));
    }

    public int hashCode() {
        String str = this.email;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "GetMergeAccountOtpTokenRequestDto(email=" + this.email + ")";
    }
}
