package c.c.a.e.d.a.b.b;

import c.c.a.e.d.m.a;
import c.e.d.a.c;
import h.f.b.j;

/* compiled from: MergeAccountResponseDto.kt */
public final class h {
    @c("credit")
    public final long credit;
    @c("creditString")
    public final String creditString;
    @c("waitingSeconds")
    public final String waitingSeconds;

    public final long a() {
        long j2 = this.credit;
        a.b(j2);
        return j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof h) {
                h hVar = (h) obj;
                if (j.a((Object) this.waitingSeconds, (Object) hVar.waitingSeconds)) {
                    if (!(this.credit == hVar.credit) || !j.a((Object) this.creditString, (Object) hVar.creditString)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.waitingSeconds;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.credit;
        int i3 = ((hashCode * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str2 = this.creditString;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return i3 + i2;
    }

    public String toString() {
        return "MergeAccountResponseDto(waitingSeconds=" + this.waitingSeconds + ", credit=" + this.credit + ", creditString=" + this.creditString + ")";
    }
}
