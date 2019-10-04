package c.c.a.e.d.h.e.b;

import c.c.a.e.d.h.d.a.a.i;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.common.model.cinema.RefreshData;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.data.feature.cinema.common.remote.VideoPurchaseStateDto;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class n {
    @c("buyInfo")
    public final VideoPurchaseStateDto buyInfo;
    @c("details")
    public final i playedVideoDetails;
    @c("referrerList")
    public final String referrer;
    @c("refreshData")
    public final g refreshData;
    @c("subtitles")
    public final List<c.c.a.e.d.h.b.a.c> subtitlesResponseDto;
    @c("videoUrl")
    public final String videoUrl;
    @c("watermarkUrl")
    public final String watermarkUrl;

    public final VideoPlayInfoModel a(String str) {
        ArrayList arrayList;
        j.b(str, "entityId");
        VideoPurchaseState f2 = this.buyInfo.f();
        String str2 = this.videoUrl;
        RefreshData a2 = this.refreshData.a();
        String str3 = this.watermarkUrl;
        List<c.c.a.e.d.h.b.a.c> list = this.subtitlesResponseDto;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList(m.a(list, 10));
            for (c.c.a.e.d.h.b.a.c a3 : list) {
                arrayList2.add(a3.a());
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        VideoPlayInfoModel videoPlayInfoModel = new VideoPlayInfoModel(str, f2, str2, str3, a2, arrayList, this.playedVideoDetails.a(), this.referrer);
        return videoPlayInfoModel;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0051;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0051
            boolean r0 = r3 instanceof c.c.a.e.d.h.e.b.n
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.h.e.b.n r3 = (c.c.a.e.d.h.e.b.n) r3
            com.farsitel.bazaar.data.feature.cinema.common.remote.VideoPurchaseStateDto r0 = r2.buyInfo
            com.farsitel.bazaar.data.feature.cinema.common.remote.VideoPurchaseStateDto r1 = r3.buyInfo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = r2.videoUrl
            java.lang.String r1 = r3.videoUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = r2.watermarkUrl
            java.lang.String r1 = r3.watermarkUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.util.List<c.c.a.e.d.h.b.a.c> r0 = r2.subtitlesResponseDto
            java.util.List<c.c.a.e.d.h.b.a.c> r1 = r3.subtitlesResponseDto
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.h.e.b.g r0 = r2.refreshData
            c.c.a.e.d.h.e.b.g r1 = r3.refreshData
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.h.d.a.a.i r0 = r2.playedVideoDetails
            c.c.a.e.d.h.d.a.a.i r1 = r3.playedVideoDetails
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x004f
            goto L_0x0051
        L_0x004f:
            r3 = 0
            return r3
        L_0x0051:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.b.n.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        VideoPurchaseStateDto videoPurchaseStateDto = this.buyInfo;
        int i2 = 0;
        int hashCode = (videoPurchaseStateDto != null ? videoPurchaseStateDto.hashCode() : 0) * 31;
        String str = this.videoUrl;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.watermarkUrl;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<c.c.a.e.d.h.b.a.c> list = this.subtitlesResponseDto;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        g gVar = this.refreshData;
        int hashCode5 = (hashCode4 + (gVar != null ? gVar.hashCode() : 0)) * 31;
        i iVar = this.playedVideoDetails;
        int hashCode6 = (hashCode5 + (iVar != null ? iVar.hashCode() : 0)) * 31;
        String str3 = this.referrer;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode6 + i2;
    }

    public String toString() {
        return "VideoPlayInfoResponseDto(buyInfo=" + this.buyInfo + ", videoUrl=" + this.videoUrl + ", watermarkUrl=" + this.watermarkUrl + ", subtitlesResponseDto=" + this.subtitlesResponseDto + ", refreshData=" + this.refreshData + ", playedVideoDetails=" + this.playedVideoDetails + ", referrer=" + this.referrer + ")";
    }
}
