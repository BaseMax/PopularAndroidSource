package c.c.a.e.d.h.d.b;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import h.f.b.j;

@h("singleRequest.seriesEpisodeListRequest")
/* compiled from: RequestDto.kt */
public final class d {
    @c("referrers")
    public final m referrers;
    @c("seasonIndex")
    public final int seasonIndex;
    @c("seriesId")
    public final String seriesId;

    public d(String str, int i2, m mVar) {
        j.b(str, "seriesId");
        j.b(mVar, "referrers");
        this.seriesId = str;
        this.seasonIndex = i2;
        this.referrers = mVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (j.a((Object) this.seriesId, (Object) dVar.seriesId)) {
                    if (!(this.seasonIndex == dVar.seasonIndex) || !j.a((Object) this.referrers, (Object) dVar.referrers)) {
                        return false;
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
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.seasonIndex) * 31;
        m mVar = this.referrers;
        if (mVar != null) {
            i2 = mVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "GetSeriesEpisodesRequestDto(seriesId=" + this.seriesId + ", seasonIndex=" + this.seasonIndex + ", referrers=" + this.referrers + ")";
    }
}
