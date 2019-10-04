package c.c.a.e.d.h.d.a.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import h.f.b.j;

@h("singleRequest.seasonPageRequest")
/* compiled from: RequestDto.kt */
public final class g {
    @c("limit")
    public final int limit;
    @c("offset")
    public final int offset;
    @c("referrers")
    public final m referrers;
    @c("seasonIndex")
    public final int seasonIndex;
    @c("identifier")
    public final String seriesId;

    public g(String str, int i2, int i3, int i4, m mVar) {
        j.b(str, "seriesId");
        j.b(mVar, "referrers");
        this.seriesId = str;
        this.seasonIndex = i2;
        this.offset = i3;
        this.limit = i4;
        this.referrers = mVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                if (j.a((Object) this.seriesId, (Object) gVar.seriesId)) {
                    if (this.seasonIndex == gVar.seasonIndex) {
                        if (this.offset == gVar.offset) {
                            if (!(this.limit == gVar.limit) || !j.a((Object) this.referrers, (Object) gVar.referrers)) {
                                return false;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.seriesId;
        int i2 = 0;
        int hashCode = (((((((str != null ? str.hashCode() : 0) * 31) + this.seasonIndex) * 31) + this.offset) * 31) + this.limit) * 31;
        m mVar = this.referrers;
        if (mVar != null) {
            i2 = mVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "GetSeasonPageRequestDto(seriesId=" + this.seriesId + ", seasonIndex=" + this.seasonIndex + ", offset=" + this.offset + ", limit=" + this.limit + ", referrers=" + this.referrers + ")";
    }
}
