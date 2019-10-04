package c.c.a.l.b.a;

import c.c.a.e.j.b;
import h.f.b.j;

/* compiled from: RequestDto.kt */
public final class c {
    @c.e.d.a.c("playerTime")
    public final long playerTime;
    @c.e.d.a.c("videoIdentifier")
    public final String videoIdentifier;

    public c(String str, long j2) {
        j.b(str, "videoIdentifier");
        this.videoIdentifier = str;
        this.playerTime = j2;
    }

    public final String a() {
        String a2 = b.f5549b.a().a((Object) this);
        j.a((Object) a2, "GSON().toJson(this)");
        return a2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (j.a((Object) this.videoIdentifier, (Object) cVar.videoIdentifier)) {
                    if (this.playerTime == cVar.playerTime) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.videoIdentifier;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.playerTime;
        return (hashCode * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "StatsDto(videoIdentifier=" + this.videoIdentifier + ", playerTime=" + this.playerTime + ")";
    }
}
