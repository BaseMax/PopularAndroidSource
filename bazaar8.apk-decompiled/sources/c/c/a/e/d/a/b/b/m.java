package c.c.a.e.d.a.b.b;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: VerifyEmailOtpTokenResponseDto.kt */
public final class m {
    @c("waitingSeconds")
    public final String waitingSeconds;

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof m) && j.a((Object) this.waitingSeconds, (Object) ((m) obj).waitingSeconds));
    }

    public int hashCode() {
        String str = this.waitingSeconds;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "VerifyEmailOtpTokenResponseDto(waitingSeconds=" + this.waitingSeconds + ")";
    }
}
