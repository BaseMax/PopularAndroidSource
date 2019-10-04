package c.c.a.e.d.h.d.b;

import c.c.a.e.d.c.a.o;
import c.c.a.e.d.h.e.b.a;
import c.c.a.e.d.h.e.b.b;
import c.c.a.e.d.h.e.b.f;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaDescriptionItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.CrewsItem;
import com.farsitel.bazaar.common.model.cinema.OtherInfoTitleItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSingleSeasonsItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.a.m;
import h.a.u;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class j {
    @c("cast")
    public final List<a> cast;
    @c("description")
    public final String description;
    @c("genres")
    public final List<b> genres;
    @c("identifier")
    public final String identifier;
    @c("name")
    public final String name;
    @c("otherInfoList")
    public final List<c.c.a.e.d.h.e.b.j> otherInfoList;
    @c("price")
    public final int price;
    @c("publisher")
    public final f publisher;
    @c("referrerList")
    public final String referrer;
    @c("relatedVideoPage")
    public final o relatedVideoPage;
    @c("seasons")
    public final List<e> seasons;
    @c("seriesCover")
    public final g seriesCover;
    @c("shareMessage")
    public final String shareMessage;
    @c("subscriptionStatus")
    public final l subscriptionStatus;
    @c("previews")
    public final List<c.c.a.e.d.h.b.a.a> thumbnails;
    @c("cover")
    public final c.c.a.e.d.h.b.a.a videoCover;

    public final List<RecyclerData> a(int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(b());
        arrayList.add(a());
        RecyclerData b2 = b(i2);
        if (b2 != null) {
            arrayList.add(b2);
        }
        ScreenshotsItem d2 = d();
        if (d2 != null) {
            arrayList.add(d2);
        }
        List<a> list = this.cast;
        if (!(list == null || list.isEmpty())) {
            List<a> list2 = this.cast;
            ArrayList arrayList2 = new ArrayList(m.a(list2, 10));
            for (a a2 : list2) {
                arrayList2.add(a2.a(this.referrer));
            }
            arrayList.add(new CrewsItem(arrayList2));
        }
        o oVar = this.relatedVideoPage;
        if (oVar != null) {
            List<PageTypeItem> a3 = oVar.a();
            if (a3 != null) {
                arrayList.addAll(a3);
            }
        }
        List<RecyclerData> c2 = c();
        if (c2 != null) {
            arrayList.addAll(c2);
        }
        return arrayList;
    }

    public final CinemaInfoItem b() {
        ArrayList arrayList;
        String str;
        String str2 = this.identifier;
        String str3 = this.name;
        List<b> list = this.genres;
        if (list != null) {
            arrayList = new ArrayList(m.a(list, 10));
            for (b a2 : list) {
                arrayList.add(a2.a(this.referrer));
            }
        } else {
            arrayList = null;
        }
        f fVar = this.publisher;
        PublisherModel a3 = fVar != null ? fVar.a(this.referrer) : null;
        c.c.a.e.d.h.b.a.a aVar = this.videoCover;
        CinemaScreenshotItem d2 = aVar != null ? aVar.d() : null;
        String str4 = this.shareMessage;
        List<c.c.a.e.d.h.b.a.a> list2 = this.thumbnails;
        if (list2 != null) {
            c.c.a.e.d.h.b.a.a aVar2 = (c.c.a.e.d.h.b.a.a) u.i(list2);
            if (aVar2 != null) {
                str = aVar2.a();
                CinemaInfoItem cinemaInfoItem = new CinemaInfoItem(str2, str3, arrayList, a3, d2, str4, str, false, this.referrer);
                return cinemaInfoItem;
            }
        }
        str = null;
        CinemaInfoItem cinemaInfoItem2 = new CinemaInfoItem(str2, str3, arrayList, a3, d2, str4, str, false, this.referrer);
        return cinemaInfoItem2;
    }

    public final List<RecyclerData> c() {
        List<c.c.a.e.d.h.e.b.j> list = this.otherInfoList;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new OtherInfoTitleItem());
        ArrayList arrayList2 = new ArrayList(m.a(list, 10));
        for (c.c.a.e.d.h.e.b.j a2 : list) {
            arrayList2.add(a2.a());
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x004d, code lost:
        if (r1 != null) goto L_0x0054;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00c4, code lost:
        if (r1 != null) goto L_0x00cb;
     */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c0  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00d5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.farsitel.bazaar.common.model.cinema.ScreenshotsItem d() {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.List<c.c.a.e.d.h.b.a.a> r1 = r8.thumbnails
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L_0x0039
            java.util.Iterator r1 = r1.iterator()
        L_0x0010:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L_0x002f
            java.lang.Object r5 = r1.next()
            r6 = r5
            c.c.a.e.d.h.b.a.a r6 = (c.c.a.e.d.h.b.a.a) r6
            java.lang.Integer r6 = r6.b()
            com.farsitel.bazaar.common.model.cinema.ThumbnailType r6 = c.c.a.e.d.h.e.b.i.a((java.lang.Integer) r6)
            com.farsitel.bazaar.common.model.cinema.ThumbnailType r7 = com.farsitel.bazaar.common.model.cinema.ThumbnailType.VIDEO
            if (r6 != r7) goto L_0x002b
            r6 = 1
            goto L_0x002c
        L_0x002b:
            r6 = 0
        L_0x002c:
            if (r6 == 0) goto L_0x0010
            goto L_0x0030
        L_0x002f:
            r5 = r4
        L_0x0030:
            c.c.a.e.d.h.b.a.a r5 = (c.c.a.e.d.h.b.a.a) r5
            if (r5 == 0) goto L_0x0039
            com.farsitel.bazaar.common.model.cinema.TrailerCoverItem r1 = r5.e()
            goto L_0x003a
        L_0x0039:
            r1 = r4
        L_0x003a:
            if (r1 == 0) goto L_0x0068
            r0.add(r1)
            java.util.List<c.c.a.e.d.h.b.a.a> r1 = r8.thumbnails
            if (r1 == 0) goto L_0x0050
            com.farsitel.bazaar.common.model.cinema.ScreenshotsItem r1 = c.c.a.e.d.h.e.b.i.a((java.util.List<c.c.a.e.d.h.b.a.a>) r1)
            if (r1 == 0) goto L_0x0050
            java.util.List r1 = r1.getItems()
            if (r1 == 0) goto L_0x0050
            goto L_0x0054
        L_0x0050:
            java.util.List r1 = h.a.l.a()
        L_0x0054:
            r0.addAll(r1)
            boolean r1 = r0.isEmpty()
            r1 = r1 ^ r3
            if (r1 == 0) goto L_0x0067
            com.farsitel.bazaar.common.model.cinema.ScreenshotsItem r4 = new com.farsitel.bazaar.common.model.cinema.ScreenshotsItem
            java.util.List r0 = h.a.u.h(r0)
            r4.<init>(r0)
        L_0x0067:
            return r4
        L_0x0068:
            java.util.List<c.c.a.e.d.h.b.a.a> r1 = r8.thumbnails
            if (r1 == 0) goto L_0x009d
            java.util.Iterator r1 = r1.iterator()
        L_0x0070:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L_0x008f
            java.lang.Object r5 = r1.next()
            r6 = r5
            c.c.a.e.d.h.b.a.a r6 = (c.c.a.e.d.h.b.a.a) r6
            java.lang.Integer r6 = r6.b()
            com.farsitel.bazaar.common.model.cinema.ThumbnailType r6 = c.c.a.e.d.h.e.b.i.a((java.lang.Integer) r6)
            com.farsitel.bazaar.common.model.cinema.ThumbnailType r7 = com.farsitel.bazaar.common.model.cinema.ThumbnailType.IMAGE
            if (r6 != r7) goto L_0x008b
            r6 = 1
            goto L_0x008c
        L_0x008b:
            r6 = 0
        L_0x008c:
            if (r6 == 0) goto L_0x0070
            goto L_0x0090
        L_0x008f:
            r5 = r4
        L_0x0090:
            c.c.a.e.d.h.b.a.a r5 = (c.c.a.e.d.h.b.a.a) r5
            if (r5 == 0) goto L_0x009d
            com.farsitel.bazaar.common.model.cinema.CinemaBigScreenshotItem r1 = r5.c()
            if (r1 == 0) goto L_0x009d
            r0.add(r1)
        L_0x009d:
            java.util.List<c.c.a.e.d.h.b.a.a> r1 = r8.thumbnails
            if (r1 == 0) goto L_0x00b2
            com.farsitel.bazaar.common.model.cinema.ScreenshotsItem r1 = c.c.a.e.d.h.e.b.i.a((java.util.List<c.c.a.e.d.h.b.a.a>) r1)
            if (r1 == 0) goto L_0x00b2
            java.util.List r1 = r1.getItems()
            if (r1 == 0) goto L_0x00b2
            java.util.List r1 = h.a.u.a(r1)
            goto L_0x00b3
        L_0x00b2:
            r1 = r4
        L_0x00b3:
            if (r1 == 0) goto L_0x00be
            int r5 = r1.size()
            if (r5 <= 0) goto L_0x00be
            r1.remove(r2)
        L_0x00be:
            if (r1 == 0) goto L_0x00c7
            java.util.List r1 = h.a.u.h(r1)
            if (r1 == 0) goto L_0x00c7
            goto L_0x00cb
        L_0x00c7:
            java.util.List r1 = h.a.l.a()
        L_0x00cb:
            r0.addAll(r1)
            boolean r1 = r0.isEmpty()
            r1 = r1 ^ r3
            if (r1 == 0) goto L_0x00de
            com.farsitel.bazaar.common.model.cinema.ScreenshotsItem r4 = new com.farsitel.bazaar.common.model.cinema.ScreenshotsItem
            java.util.List r0 = h.a.u.h(r0)
            r4.<init>(r0)
        L_0x00de:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.b.j.d():com.farsitel.bazaar.common.model.cinema.ScreenshotsItem");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                if (h.f.b.j.a((Object) this.cast, (Object) jVar.cast) && h.f.b.j.a((Object) this.videoCover, (Object) jVar.videoCover) && h.f.b.j.a((Object) this.description, (Object) jVar.description) && h.f.b.j.a((Object) this.genres, (Object) jVar.genres) && h.f.b.j.a((Object) this.identifier, (Object) jVar.identifier) && h.f.b.j.a((Object) this.name, (Object) jVar.name)) {
                    if (!(this.price == jVar.price) || !h.f.b.j.a((Object) this.otherInfoList, (Object) jVar.otherInfoList) || !h.f.b.j.a((Object) this.publisher, (Object) jVar.publisher) || !h.f.b.j.a((Object) this.relatedVideoPage, (Object) jVar.relatedVideoPage) || !h.f.b.j.a((Object) this.seasons, (Object) jVar.seasons) || !h.f.b.j.a((Object) this.seriesCover, (Object) jVar.seriesCover) || !h.f.b.j.a((Object) this.shareMessage, (Object) jVar.shareMessage) || !h.f.b.j.a((Object) this.subscriptionStatus, (Object) jVar.subscriptionStatus) || !h.f.b.j.a((Object) this.thumbnails, (Object) jVar.thumbnails) || !h.f.b.j.a((Object) this.referrer, (Object) jVar.referrer)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        List<a> list = this.cast;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        c.c.a.e.d.h.b.a.a aVar = this.videoCover;
        int hashCode2 = (hashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
        String str = this.description;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        List<b> list2 = this.genres;
        int hashCode4 = (hashCode3 + (list2 != null ? list2.hashCode() : 0)) * 31;
        String str2 = this.identifier;
        int hashCode5 = (hashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.name;
        int hashCode6 = (((hashCode5 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.price) * 31;
        List<c.c.a.e.d.h.e.b.j> list3 = this.otherInfoList;
        int hashCode7 = (hashCode6 + (list3 != null ? list3.hashCode() : 0)) * 31;
        f fVar = this.publisher;
        int hashCode8 = (hashCode7 + (fVar != null ? fVar.hashCode() : 0)) * 31;
        o oVar = this.relatedVideoPage;
        int hashCode9 = (hashCode8 + (oVar != null ? oVar.hashCode() : 0)) * 31;
        List<e> list4 = this.seasons;
        int hashCode10 = (hashCode9 + (list4 != null ? list4.hashCode() : 0)) * 31;
        g gVar = this.seriesCover;
        int hashCode11 = (hashCode10 + (gVar != null ? gVar.hashCode() : 0)) * 31;
        String str4 = this.shareMessage;
        int hashCode12 = (hashCode11 + (str4 != null ? str4.hashCode() : 0)) * 31;
        l lVar = this.subscriptionStatus;
        int hashCode13 = (hashCode12 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        List<c.c.a.e.d.h.b.a.a> list5 = this.thumbnails;
        int hashCode14 = (hashCode13 + (list5 != null ? list5.hashCode() : 0)) * 31;
        String str5 = this.referrer;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode14 + i2;
    }

    public String toString() {
        return "SeriesInfoResponseDto(cast=" + this.cast + ", videoCover=" + this.videoCover + ", description=" + this.description + ", genres=" + this.genres + ", identifier=" + this.identifier + ", name=" + this.name + ", price=" + this.price + ", otherInfoList=" + this.otherInfoList + ", publisher=" + this.publisher + ", relatedVideoPage=" + this.relatedVideoPage + ", seasons=" + this.seasons + ", seriesCover=" + this.seriesCover + ", shareMessage=" + this.shareMessage + ", subscriptionStatus=" + this.subscriptionStatus + ", thumbnails=" + this.thumbnails + ", referrer=" + this.referrer + ")";
    }

    public final RecyclerData b(int i2) {
        ArrayList arrayList;
        List<e> list = this.seasons;
        if (list != null) {
            arrayList = new ArrayList(m.a(list, 10));
            for (e a2 : list) {
                arrayList.add(a2.a());
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        if (arrayList.size() == 1) {
            return new SeriesSingleSeasonsItem((SeriesSeason) u.f(arrayList));
        }
        return new SeriesSeasonsItem(arrayList, i2 - 1);
    }

    public final CinemaDescriptionItem a() {
        return new CinemaDescriptionItem(this.description, 0, 2, null);
    }
}
