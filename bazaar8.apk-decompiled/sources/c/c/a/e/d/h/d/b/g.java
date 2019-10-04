package c.c.a.e.d.h.d.b;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: ResponseDto.kt */
public final class g {
    @c("thumbnailUrl")
    public final String thumbnailUrl;
    @c("type")
    public final int type;

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                if (j.a((Object) this.thumbnailUrl, (Object) gVar.thumbnailUrl)) {
                    if (this.type == gVar.type) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.thumbnailUrl;
        return ((str != null ? str.hashCode() : 0) * 31) + this.type;
    }

    public String toString() {
        return "SeriesCoverDto(thumbnailUrl=" + this.thumbnailUrl + ", type=" + this.type + ")";
    }
}
