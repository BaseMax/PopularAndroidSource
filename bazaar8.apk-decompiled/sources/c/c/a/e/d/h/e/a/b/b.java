package c.c.a.e.d.h.e.a.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.VideoDownloadQualityInfo;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.data.feature.cinema.common.remote.VideoPurchaseStateDto;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class b {
    @c("coverUrl")
    public String coverVideo;
    @c("description")
    public String description;
    @c("expirationTime")
    public Long expireTime;
    @c("buyInfo")
    public VideoPurchaseStateDto purchaseState;
    @c("referrerList")
    public final String referrer;
    @c("remainingDownloads")
    public Integer remainingDownloadCount;
    @c("subtitles")
    public List<c.c.a.e.d.h.b.a.c> subtitles;
    @c("downloadFiles")
    public List<d> videoDownloadItemModels;

    public final VideoDownloadQualityInfo a() {
        ArrayList arrayList;
        String str = this.coverVideo;
        Long l2 = this.expireTime;
        String str2 = this.description;
        Integer num = this.remainingDownloadCount;
        List<d> list = this.videoDownloadItemModels;
        ArrayList arrayList2 = new ArrayList(m.a(list, 10));
        for (d a2 : list) {
            arrayList2.add(a2.a());
        }
        List<c.c.a.e.d.h.b.a.c> list2 = this.subtitles;
        VideoPurchaseState videoPurchaseState = null;
        if (list2 != null) {
            ArrayList arrayList3 = new ArrayList(m.a(list2, 10));
            for (c.c.a.e.d.h.b.a.c a3 : list2) {
                arrayList3.add(a3.a());
            }
            arrayList = arrayList3;
        } else {
            arrayList = null;
        }
        VideoPurchaseStateDto videoPurchaseStateDto = this.purchaseState;
        if (videoPurchaseStateDto != null) {
            videoPurchaseState = videoPurchaseStateDto.f();
        }
        VideoDownloadQualityInfo videoDownloadQualityInfo = new VideoDownloadQualityInfo(str, l2, str2, num, arrayList2, arrayList, videoPurchaseState, this.referrer);
        return videoDownloadQualityInfo;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0056, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x005b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x005b
            boolean r0 = r3 instanceof c.c.a.e.d.h.e.a.b.b
            if (r0 == 0) goto L_0x0059
            c.c.a.e.d.h.e.a.b.b r3 = (c.c.a.e.d.h.e.a.b.b) r3
            java.lang.String r0 = r2.coverVideo
            java.lang.String r1 = r3.coverVideo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.Long r0 = r2.expireTime
            java.lang.Long r1 = r3.expireTime
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.description
            java.lang.String r1 = r3.description
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.Integer r0 = r2.remainingDownloadCount
            java.lang.Integer r1 = r3.remainingDownloadCount
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.util.List<c.c.a.e.d.h.e.a.b.d> r0 = r2.videoDownloadItemModels
            java.util.List<c.c.a.e.d.h.e.a.b.d> r1 = r3.videoDownloadItemModels
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.util.List<c.c.a.e.d.h.b.a.c> r0 = r2.subtitles
            java.util.List<c.c.a.e.d.h.b.a.c> r1 = r3.subtitles
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.feature.cinema.common.remote.VideoPurchaseStateDto r0 = r2.purchaseState
            com.farsitel.bazaar.data.feature.cinema.common.remote.VideoPurchaseStateDto r1 = r3.purchaseState
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0059
            goto L_0x005b
        L_0x0059:
            r3 = 0
            return r3
        L_0x005b:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.b.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.coverVideo;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Long l2 = this.expireTime;
        int hashCode2 = (hashCode + (l2 != null ? l2.hashCode() : 0)) * 31;
        String str2 = this.description;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.remainingDownloadCount;
        int hashCode4 = (hashCode3 + (num != null ? num.hashCode() : 0)) * 31;
        List<d> list = this.videoDownloadItemModels;
        int hashCode5 = (hashCode4 + (list != null ? list.hashCode() : 0)) * 31;
        List<c.c.a.e.d.h.b.a.c> list2 = this.subtitles;
        int hashCode6 = (hashCode5 + (list2 != null ? list2.hashCode() : 0)) * 31;
        VideoPurchaseStateDto videoPurchaseStateDto = this.purchaseState;
        int hashCode7 = (hashCode6 + (videoPurchaseStateDto != null ? videoPurchaseStateDto.hashCode() : 0)) * 31;
        String str3 = this.referrer;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode7 + i2;
    }

    public String toString() {
        return "DownloadQualityResponseDto(coverVideo=" + this.coverVideo + ", expireTime=" + this.expireTime + ", description=" + this.description + ", remainingDownloadCount=" + this.remainingDownloadCount + ", videoDownloadItemModels=" + this.videoDownloadItemModels + ", subtitles=" + this.subtitles + ", purchaseState=" + this.purchaseState + ", referrer=" + this.referrer + ")";
    }
}
