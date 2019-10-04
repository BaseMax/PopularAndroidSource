package c.c.a.e.g;

import com.farsitel.bazaar.common.model.DownloadStatus;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import com.farsitel.bazaar.data.model.VideoDownloadStep;
import h.f.b.j;
import i.a.b.p;
import java.util.List;

/* compiled from: VideoDownloadModel.kt */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f5471a;

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f5472b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5473c;

    /* renamed from: d  reason: collision with root package name */
    public final List<VideoSubtitle> f5474d;

    /* renamed from: e  reason: collision with root package name */
    public VideoDownloadStep f5475e;

    /* renamed from: f  reason: collision with root package name */
    public final p<DownloaderProgressInfo> f5476f;

    /* renamed from: g  reason: collision with root package name */
    public final p<DownloadStatus> f5477g;

    public g(String str, List<String> list, String str2, List<VideoSubtitle> list2, VideoDownloadStep videoDownloadStep, p<DownloaderProgressInfo> pVar, p<DownloadStatus> pVar2) {
        j.b(str, "videoId");
        j.b(list, "videoUrl");
        j.b(str2, "coverUrl");
        j.b(videoDownloadStep, "videoDownloadStep");
        j.b(pVar, "videoProgressInfo");
        j.b(pVar2, "videoDownloadState");
        this.f5471a = str;
        this.f5472b = list;
        this.f5473c = str2;
        this.f5474d = list2;
        this.f5475e = videoDownloadStep;
        this.f5476f = pVar;
        this.f5477g = pVar2;
    }

    public final String a() {
        return this.f5473c;
    }

    public final List<VideoSubtitle> b() {
        return this.f5474d;
    }

    public final p<DownloadStatus> c() {
        return this.f5477g;
    }

    public final VideoDownloadStep d() {
        return this.f5475e;
    }

    public final String e() {
        return this.f5471a;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f5477g, (java.lang.Object) r3.f5477g) != false) goto L_0x0051;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0051
            boolean r0 = r3 instanceof c.c.a.e.g.g
            if (r0 == 0) goto L_0x004f
            c.c.a.e.g.g r3 = (c.c.a.e.g.g) r3
            java.lang.String r0 = r2.f5471a
            java.lang.String r1 = r3.f5471a
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.util.List<java.lang.String> r0 = r2.f5472b
            java.util.List<java.lang.String> r1 = r3.f5472b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = r2.f5473c
            java.lang.String r1 = r3.f5473c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            java.util.List<com.farsitel.bazaar.common.model.VideoSubtitle> r0 = r2.f5474d
            java.util.List<com.farsitel.bazaar.common.model.VideoSubtitle> r1 = r3.f5474d
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            com.farsitel.bazaar.data.model.VideoDownloadStep r0 = r2.f5475e
            com.farsitel.bazaar.data.model.VideoDownloadStep r1 = r3.f5475e
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            i.a.b.p<com.farsitel.bazaar.common.model.DownloaderProgressInfo> r0 = r2.f5476f
            i.a.b.p<com.farsitel.bazaar.common.model.DownloaderProgressInfo> r1 = r3.f5476f
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            i.a.b.p<com.farsitel.bazaar.common.model.DownloadStatus> r0 = r2.f5477g
            i.a.b.p<com.farsitel.bazaar.common.model.DownloadStatus> r3 = r3.f5477g
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.g.g.equals(java.lang.Object):boolean");
    }

    public final p<DownloaderProgressInfo> f() {
        return this.f5476f;
    }

    public final List<String> g() {
        return this.f5472b;
    }

    public int hashCode() {
        String str = this.f5471a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        List<String> list = this.f5472b;
        int hashCode2 = (hashCode + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.f5473c;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<VideoSubtitle> list2 = this.f5474d;
        int hashCode4 = (hashCode3 + (list2 != null ? list2.hashCode() : 0)) * 31;
        VideoDownloadStep videoDownloadStep = this.f5475e;
        int hashCode5 = (hashCode4 + (videoDownloadStep != null ? videoDownloadStep.hashCode() : 0)) * 31;
        p<DownloaderProgressInfo> pVar = this.f5476f;
        int hashCode6 = (hashCode5 + (pVar != null ? pVar.hashCode() : 0)) * 31;
        p<DownloadStatus> pVar2 = this.f5477g;
        if (pVar2 != null) {
            i2 = pVar2.hashCode();
        }
        return hashCode6 + i2;
    }

    public String toString() {
        return "VideoDownloadModel(videoId=" + this.f5471a + ", videoUrl=" + this.f5472b + ", coverUrl=" + this.f5473c + ", subtitleUrls=" + this.f5474d + ", videoDownloadStep=" + this.f5475e + ", videoProgressInfo=" + this.f5476f + ", videoDownloadState=" + this.f5477g + ")";
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ g(java.lang.String r10, java.util.List r11, java.lang.String r12, java.util.List r13, com.farsitel.bazaar.data.model.VideoDownloadStep r14, i.a.b.p r15, i.a.b.p r16, int r17, h.f.b.f r18) {
        /*
            r9 = this;
            r0 = r17 & 16
            if (r0 == 0) goto L_0x0008
            com.farsitel.bazaar.data.model.VideoDownloadStep r0 = com.farsitel.bazaar.data.model.VideoDownloadStep.COVER
            r6 = r0
            goto L_0x0009
        L_0x0008:
            r6 = r14
        L_0x0009:
            r0 = r17 & 32
            if (r0 == 0) goto L_0x0019
            i.a.b.p r0 = new i.a.b.p
            com.farsitel.bazaar.common.model.DownloaderProgressInfo r1 = new com.farsitel.bazaar.common.model.DownloaderProgressInfo
            r1.<init>()
            r0.<init>(r1)
            r7 = r0
            goto L_0x001a
        L_0x0019:
            r7 = r15
        L_0x001a:
            r0 = r17 & 64
            if (r0 == 0) goto L_0x0027
            i.a.b.p r0 = new i.a.b.p
            com.farsitel.bazaar.common.model.DownloadStatus r1 = com.farsitel.bazaar.common.model.DownloadStatus.NONE
            r0.<init>(r1)
            r8 = r0
            goto L_0x0029
        L_0x0027:
            r8 = r16
        L_0x0029:
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.g.g.<init>(java.lang.String, java.util.List, java.lang.String, java.util.List, com.farsitel.bazaar.data.model.VideoDownloadStep, i.a.b.p, i.a.b.p, int, h.f.b.f):void");
    }

    public final void a(VideoDownloadStep videoDownloadStep) {
        j.b(videoDownloadStep, "<set-?>");
        this.f5475e = videoDownloadStep;
    }
}
