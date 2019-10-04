package c.c.a.e.d.a.b.b;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: AuthenticationResponseDto.kt */
public final class a {
    @c("accessToken")
    public final String token;

    public final String a() {
        return this.token;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && j.a((Object) this.token, (Object) ((a) obj).token));
    }

    public int hashCode() {
        String str = this.token;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "AuthenticationResponseDto(token=" + this.token + ")";
    }
}
