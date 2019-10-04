package c.c.a.e.d.a.b.b;

import c.e.d.a.c;
import com.farsitel.bazaar.data.entity.WaitingTime;

/* compiled from: GetMergeAccountOtpTokenResponseDto.kt */
public final class d {
    @c("waitingSeconds")
    public final long waitingSeconds;

    public final long a() {
        long j2 = this.waitingSeconds;
        WaitingTime.m2constructorimpl(j2);
        return j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                if (this.waitingSeconds == ((d) obj).waitingSeconds) {
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
        return "GetMergeAccountOtpTokenResponseDto(waitingSeconds=" + this.waitingSeconds + ")";
    }
}
