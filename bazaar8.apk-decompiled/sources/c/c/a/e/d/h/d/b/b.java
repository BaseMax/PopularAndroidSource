package c.c.a.e.d.h.d.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class b {
    @c("episodes")
    public final List<a> episodes;
    @c("seeMore")
    public final f seeMore;

    public final List<RecyclerData> a() {
        ArrayList arrayList = new ArrayList();
        List<a> list = this.episodes;
        ArrayList arrayList2 = new ArrayList(m.a(list, 10));
        for (a a2 : list) {
            arrayList2.add(a2.a());
        }
        arrayList.addAll(arrayList2);
        f fVar = this.seeMore;
        if (fVar != null) {
            SeriesEpisodeSeeMoreItem a3 = fVar.a();
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.seeMore, (java.lang.Object) r3.seeMore) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.h.d.b.b
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.h.d.b.b r3 = (c.c.a.e.d.h.d.b.b) r3
            java.util.List<c.c.a.e.d.h.d.b.a> r0 = r2.episodes
            java.util.List<c.c.a.e.d.h.d.b.a> r1 = r3.episodes
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.h.d.b.f r0 = r2.seeMore
            c.c.a.e.d.h.d.b.f r3 = r3.seeMore
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.b.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        List<a> list = this.episodes;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        f fVar = this.seeMore;
        if (fVar != null) {
            i2 = fVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "EpisodesResponseDto(episodes=" + this.episodes + ", seeMore=" + this.seeMore + ")";
    }
}
