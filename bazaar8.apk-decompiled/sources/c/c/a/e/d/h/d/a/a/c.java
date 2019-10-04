package c.c.a.e.d.h.d.a.a;

import c.c.a.e.d.h.b.a.a;
import c.c.a.e.d.h.d.b.e;
import c.c.a.e.d.h.d.b.l;
import c.c.a.e.d.h.e.b.f;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaDescriptionItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSingleSeasonsItem;
import h.a.m;
import h.a.u;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class c {
    @c.e.d.a.c("cover")
    public final a cover;
    @c.e.d.a.c("description")
    public final String description;
    @c.e.d.a.c("episodeId")
    public final String episodeId;
    @c.e.d.a.c("episodeIndex")
    public final Integer episodeIndex;
    @c.e.d.a.c("episodeIndexTitle")
    public final String episodeIndexTitle;
    @c.e.d.a.c("isDownloadable")
    public final boolean isDownloadable;
    @c.e.d.a.c("name")
    public final String name;
    @c.e.d.a.c("price")
    public final Integer price;
    @c.e.d.a.c("priceBeforeDiscount")
    public final Integer priceBeforeDiscount;
    @c.e.d.a.c("publisher")
    public final f publisher;
    @c.e.d.a.c("referrerList")
    public final String referrer;
    @c.e.d.a.c("seasonIndex")
    public final int seasonIndex;
    @c.e.d.a.c("seasonIndexTitle")
    public final String seasonIndexTitle;
    @c.e.d.a.c("seasons")
    public final List<e> seasons;
    @c.e.d.a.c("seriesId")
    public final String seriesId;
    @c.e.d.a.c("shareMessage")
    public final String shareMessage;
    @c.e.d.a.c("subscriptionStatus")
    public final l subscriptionStatus;
    @c.e.d.a.c("thumbnails")
    public final List<a> thumbnails;

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0037, code lost:
        if ((r1 == null || r1.length() == 0) == false) goto L_0x0039;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a() {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r4.name
            int r1 = r1.length()
            r2 = 1
            r3 = 0
            if (r1 <= 0) goto L_0x0011
            r1 = 1
            goto L_0x0012
        L_0x0011:
            r1 = 0
        L_0x0012:
            if (r1 == 0) goto L_0x003e
            java.lang.String r1 = r4.name
            r0.append(r1)
            java.lang.String r1 = r4.seasonIndexTitle
            if (r1 == 0) goto L_0x0026
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0024
            goto L_0x0026
        L_0x0024:
            r1 = 0
            goto L_0x0027
        L_0x0026:
            r1 = 1
        L_0x0027:
            if (r1 == 0) goto L_0x0039
            java.lang.String r1 = r4.episodeIndexTitle
            if (r1 == 0) goto L_0x0036
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0034
            goto L_0x0036
        L_0x0034:
            r1 = 0
            goto L_0x0037
        L_0x0036:
            r1 = 1
        L_0x0037:
            if (r1 != 0) goto L_0x003e
        L_0x0039:
            java.lang.String r1 = " / "
            r0.append(r1)
        L_0x003e:
            java.lang.String r1 = r4.seasonIndexTitle
            if (r1 == 0) goto L_0x004b
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0049
            goto L_0x004b
        L_0x0049:
            r1 = 0
            goto L_0x004c
        L_0x004b:
            r1 = 1
        L_0x004c:
            if (r1 != 0) goto L_0x0053
            java.lang.String r1 = r4.seasonIndexTitle
            r0.append(r1)
        L_0x0053:
            java.lang.String r1 = r4.episodeIndexTitle
            if (r1 == 0) goto L_0x0060
            int r1 = r1.length()
            if (r1 != 0) goto L_0x005e
            goto L_0x0060
        L_0x005e:
            r1 = 0
            goto L_0x0061
        L_0x0060:
            r1 = 1
        L_0x0061:
            if (r1 != 0) goto L_0x007b
            java.lang.String r1 = r4.seasonIndexTitle
            if (r1 == 0) goto L_0x006f
            int r1 = r1.length()
            if (r1 != 0) goto L_0x006e
            goto L_0x006f
        L_0x006e:
            r2 = 0
        L_0x006f:
            if (r2 != 0) goto L_0x0076
            java.lang.String r1 = " : "
            r0.append(r1)
        L_0x0076:
            java.lang.String r1 = r4.episodeIndexTitle
            r0.append(r1)
        L_0x007b:
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "fullName.toString()"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.a.a.c.a():java.lang.String");
    }

    public final CinemaActionsItem b() {
        String str = this.episodeId;
        String str2 = this.name;
        Integer num = this.price;
        Integer num2 = this.priceBeforeDiscount;
        f fVar = this.publisher;
        CinemaActionsItem cinemaActionsItem = new CinemaActionsItem(str, str2, num, num2, this.isDownloadable, fVar != null ? fVar.a() : null, this.episodeIndex, false, false, null, null, this.referrer, 1920, null);
        return cinemaActionsItem;
    }

    public final CinemaDescriptionItem c() {
        return new CinemaDescriptionItem(this.description, 0, 2, null);
    }

    public final List<RecyclerData> d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e());
        arrayList.add(b());
        arrayList.add(c());
        ScreenshotsItem f2 = f();
        if (f2 != null) {
            arrayList.add(f2);
        }
        RecyclerData a2 = a(this.seasonIndex);
        if (a2 != null) {
            arrayList.add(a2);
        }
        return arrayList;
    }

    public final EpisodeInfoItem e() {
        String str;
        String str2 = this.episodeId;
        String str3 = this.seriesId;
        String a2 = a();
        ArrayList arrayList = new ArrayList();
        f fVar = this.publisher;
        PublisherModel a3 = fVar != null ? fVar.a(this.referrer) : null;
        a aVar = this.cover;
        CinemaScreenshotItem d2 = aVar != null ? aVar.d() : null;
        String str4 = this.shareMessage;
        a aVar2 = this.cover;
        if (aVar2 != null) {
            CinemaScreenshotItem d3 = aVar2.d();
            if (d3 != null) {
                str = d3.getMainUrl();
                EpisodeInfoItem episodeInfoItem = new EpisodeInfoItem(str2, str3, a2, arrayList, a3, d2, str4, str, this.referrer);
                return episodeInfoItem;
            }
        }
        str = null;
        EpisodeInfoItem episodeInfoItem2 = new EpisodeInfoItem(str2, str3, a2, arrayList, a3, d2, str4, str, this.referrer);
        return episodeInfoItem2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (j.a((Object) this.name, (Object) cVar.name) && j.a((Object) this.cover, (Object) cVar.cover) && j.a((Object) this.seriesId, (Object) cVar.seriesId) && j.a((Object) this.price, (Object) cVar.price) && j.a((Object) this.priceBeforeDiscount, (Object) cVar.priceBeforeDiscount) && j.a((Object) this.publisher, (Object) cVar.publisher) && j.a((Object) this.description, (Object) cVar.description) && j.a((Object) this.thumbnails, (Object) cVar.thumbnails) && j.a((Object) this.shareMessage, (Object) cVar.shareMessage) && j.a((Object) this.seasons, (Object) cVar.seasons) && j.a((Object) this.episodeId, (Object) cVar.episodeId) && j.a((Object) this.seasonIndexTitle, (Object) cVar.seasonIndexTitle) && j.a((Object) this.episodeIndexTitle, (Object) cVar.episodeIndexTitle) && j.a((Object) this.episodeIndex, (Object) cVar.episodeIndex)) {
                    if ((this.seasonIndex == cVar.seasonIndex) && j.a((Object) this.subscriptionStatus, (Object) cVar.subscriptionStatus)) {
                        if (!(this.isDownloadable == cVar.isDownloadable) || !j.a((Object) this.referrer, (Object) cVar.referrer)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
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
    public final com.farsitel.bazaar.common.model.cinema.ScreenshotsItem f() {
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.a.a.c.f():com.farsitel.bazaar.common.model.cinema.ScreenshotsItem");
    }

    public int hashCode() {
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        a aVar = this.cover;
        int hashCode2 = (hashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
        String str2 = this.seriesId;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.price;
        int hashCode4 = (hashCode3 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.priceBeforeDiscount;
        int hashCode5 = (hashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31;
        f fVar = this.publisher;
        int hashCode6 = (hashCode5 + (fVar != null ? fVar.hashCode() : 0)) * 31;
        String str3 = this.description;
        int hashCode7 = (hashCode6 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<a> list = this.thumbnails;
        int hashCode8 = (hashCode7 + (list != null ? list.hashCode() : 0)) * 31;
        String str4 = this.shareMessage;
        int hashCode9 = (hashCode8 + (str4 != null ? str4.hashCode() : 0)) * 31;
        List<e> list2 = this.seasons;
        int hashCode10 = (hashCode9 + (list2 != null ? list2.hashCode() : 0)) * 31;
        String str5 = this.episodeId;
        int hashCode11 = (hashCode10 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.seasonIndexTitle;
        int hashCode12 = (hashCode11 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.episodeIndexTitle;
        int hashCode13 = (hashCode12 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Integer num3 = this.episodeIndex;
        int hashCode14 = (((hashCode13 + (num3 != null ? num3.hashCode() : 0)) * 31) + this.seasonIndex) * 31;
        l lVar = this.subscriptionStatus;
        int hashCode15 = (hashCode14 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        boolean z = this.isDownloadable;
        if (z) {
            z = true;
        }
        int i3 = (hashCode15 + (z ? 1 : 0)) * 31;
        String str8 = this.referrer;
        if (str8 != null) {
            i2 = str8.hashCode();
        }
        return i3 + i2;
    }

    public String toString() {
        return "EpisodeDetailResponseDto(name=" + this.name + ", cover=" + this.cover + ", seriesId=" + this.seriesId + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", publisher=" + this.publisher + ", description=" + this.description + ", thumbnails=" + this.thumbnails + ", shareMessage=" + this.shareMessage + ", seasons=" + this.seasons + ", episodeId=" + this.episodeId + ", seasonIndexTitle=" + this.seasonIndexTitle + ", episodeIndexTitle=" + this.episodeIndexTitle + ", episodeIndex=" + this.episodeIndex + ", seasonIndex=" + this.seasonIndex + ", subscriptionStatus=" + this.subscriptionStatus + ", isDownloadable=" + this.isDownloadable + ", referrer=" + this.referrer + ")";
    }

    public final RecyclerData a(int i2) {
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
}
