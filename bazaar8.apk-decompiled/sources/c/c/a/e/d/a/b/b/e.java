package c.c.a.e.d.a.b.b;

import c.e.d.a.c;

/* compiled from: GetOtpTokenResponseDto.kt */
public final class e {
    @c("waitingSeconds")
    public final long waitingSeconds;

    public final long a() {
        return this.waitingSeconds;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                if (this.waitingSeconds == ((e) obj).waitingSeconds) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.waitingSeconds;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public String toString() {
        return "GetOtpTokenResponseDto(waitingSeconds=" + this.waitingSeconds + ")";
    }
}
