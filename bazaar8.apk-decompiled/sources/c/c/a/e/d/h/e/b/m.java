package c.c.a.e.d.h.e.b;

import c.c.a.e.d.c.a.o;
import c.c.a.e.d.h.b.a.a;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaDescriptionItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.CrewsItem;
import com.farsitel.bazaar.common.model.cinema.OtherInfoTitleItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.a.u;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class m {
    @c("cast")
    public final List<a> cast;
    @c("description")
    public final String description;
    @c("genres")
    public final List<b> genres;
    @c("isDownloadable")
    public final boolean isDownloadable;
    @c("isLive")
    public final boolean isLive;
    @c("isSubscriptionOnly")
    public final boolean isSubscriptionOnly;
    @c("name")
    public final String name;
    @c("price")
    public final int price;
    @c("priceBeforeDiscount")
    public final int priceBeforeDiscount;
    @c("publisher")
    public final f publisher;
    @c("referrerList")
    public final String referrer;
    @c("relatedVideoPage")
    public final o relatedVideoPage;
    @c("shareMessage")
    public final String shareMessage;
    @c("previews")
    public final List<a> thumbnails;
    @c("cover")
    public final a videoCover;
    @c("identifier")
    public final String videoId;
    @c("videoInfoList")
    public final List<j> videoInfoList;

    public final CinemaDescriptionItem a() {
        return new CinemaDescriptionItem(this.description, 0, 2, null);
    }

    public final CinemaInfoItem b() {
        ArrayList arrayList;
        String str;
        String str2 = this.videoId;
        String str3 = this.name;
        List<b> list = this.genres;
        if (list != null) {
            arrayList = new ArrayList(h.a.m.a(list, 10));
            for (b a2 : list) {
                arrayList.add(a2.a(this.referrer));
            }
        } else {
            arrayList = null;
        }
        f fVar = this.publisher;
        PublisherModel a3 = fVar != null ? fVar.a(this.referrer) : null;
        a aVar = this.videoCover;
        CinemaScreenshotItem d2 = aVar != null ? aVar.d() : null;
        String str4 = this.shareMessage;
        List<a> list2 = this.thumbnails;
        if (list2 != null) {
            a aVar2 = (a) u.i(list2);
            if (aVar2 != null) {
                str = aVar2.a();
                CinemaInfoItem cinemaInfoItem = new CinemaInfoItem(str2, str3, arrayList, a3, d2, str4, str, this.isLive, this.referrer);
                return cinemaInfoItem;
            }
        }
        str = null;
        CinemaInfoItem cinemaInfoItem2 = new CinemaInfoItem(str2, str3, arrayList, a3, d2, str4, str, this.isLive, this.referrer);
        return cinemaInfoItem2;
    }

    public final List<RecyclerData> c() {
        List<j> list = this.videoInfoList;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new OtherInfoTitleItem());
        ArrayList arrayList2 = new ArrayList(h.a.m.a(list, 10));
        for (j a2 : list) {
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.b.m.d():com.farsitel.bazaar.common.model.cinema.ScreenshotsItem");
    }

    public final CinemaActionsItem e() {
        String str = this.videoId;
        String str2 = this.name;
        Integer valueOf = Integer.valueOf(this.price);
        Integer valueOf2 = Integer.valueOf(this.priceBeforeDiscount);
        f fVar = this.publisher;
        CinemaActionsItem cinemaActionsItem = new CinemaActionsItem(str, str2, valueOf, valueOf2, this.isDownloadable, fVar != null ? fVar.a() : null, null, false, false, null, null, this.referrer, 1920, null);
        return cinemaActionsItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof m) {
                m mVar = (m) obj;
                if (j.a((Object) this.cast, (Object) mVar.cast) && j.a((Object) this.description, (Object) mVar.description) && j.a((Object) this.genres, (Object) mVar.genres)) {
                    if (this.isLive == mVar.isLive) {
                        if (this.isSubscriptionOnly == mVar.isSubscriptionOnly) {
                            if ((this.isDownloadable == mVar.isDownloadable) && j.a((Object) this.name, (Object) mVar.name)) {
                                if (this.price == mVar.price) {
                                    if (!(this.priceBeforeDiscount == mVar.priceBeforeDiscount) || !j.a((Object) this.publisher, (Object) mVar.publisher) || !j.a((Object) this.relatedVideoPage, (Object) mVar.relatedVideoPage) || !j.a((Object) this.shareMessage, (Object) mVar.shareMessage) || !j.a((Object) this.thumbnails, (Object) mVar.thumbnails) || !j.a((Object) this.videoCover, (Object) mVar.videoCover) || !j.a((Object) this.videoId, (Object) mVar.videoId) || !j.a((Object) this.videoInfoList, (Object) mVar.videoInfoList) || !j.a((Object) this.referrer, (Object) mVar.referrer)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final List<RecyclerData> f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(b());
        arrayList.add(e());
        arrayList.add(a());
        ScreenshotsItem d2 = d();
        if (d2 != null) {
            arrayList.add(d2);
        }
        List<a> list = this.cast;
        if (!(list == null || list.isEmpty())) {
            List<a> list2 = this.cast;
            ArrayList arrayList2 = new ArrayList(h.a.m.a(list2, 10));
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

    public int hashCode() {
        List<a> list = this.cast;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        List<b> list2 = this.genres;
        int hashCode3 = (hashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31;
        boolean z = this.isLive;
        if (z) {
            z = true;
        }
        int i3 = (hashCode3 + (z ? 1 : 0)) * 31;
        boolean z2 = this.isSubscriptionOnly;
        if (z2) {
            z2 = true;
        }
        int i4 = (i3 + (z2 ? 1 : 0)) * 31;
        boolean z3 = this.isDownloadable;
        if (z3) {
            z3 = true;
        }
        int i5 = (i4 + (z3 ? 1 : 0)) * 31;
        String str2 = this.name;
        int hashCode4 = (((((i5 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.price) * 31) + this.priceBeforeDiscount) * 31;
        f fVar = this.publisher;
        int hashCode5 = (hashCode4 + (fVar != null ? fVar.hashCode() : 0)) * 31;
        o oVar = this.relatedVideoPage;
        int hashCode6 = (hashCode5 + (oVar != null ? oVar.hashCode() : 0)) * 31;
        String str3 = this.shareMessage;
        int hashCode7 = (hashCode6 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<a> list3 = this.thumbnails;
        int hashCode8 = (hashCode7 + (list3 != null ? list3.hashCode() : 0)) * 31;
        a aVar = this.videoCover;
        int hashCode9 = (hashCode8 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        String str4 = this.videoId;
        int hashCode10 = (hashCode9 + (str4 != null ? str4.hashCode() : 0)) * 31;
        List<j> list4 = this.videoInfoList;
        int hashCode11 = (hashCode10 + (list4 != null ? list4.hashCode() : 0)) * 31;
        String str5 = this.referrer;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode11 + i2;
    }

    public String toString() {
        return "VideoInfoResponseDto(cast=" + this.cast + ", description=" + this.description + ", genres=" + this.genres + ", isLive=" + this.isLive + ", isSubscriptionOnly=" + this.isSubscriptionOnly + ", isDownloadable=" + this.isDownloadable + ", name=" + this.name + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", publisher=" + this.publisher + ", relatedVideoPage=" + this.relatedVideoPage + ", shareMessage=" + this.shareMessage + ", thumbnails=" + this.thumbnails + ", videoCover=" + this.videoCover + ", videoId=" + this.videoId + ", videoInfoList=" + this.videoInfoList + ", referrer=" + this.referrer + ")";
    }
}
