package com.farsitel.bazaar.common.model;

import h.f.b.j;
import java.util.Map;

/* compiled from: VideoStatsResult.kt */
public final class VideoStatsResult {
    public final String data;
    public final Map<String, String> header;
    public final String url;

    public VideoStatsResult(String str, String str2, Map<String, String> map) {
        j.b(str, "url");
        j.b(str2, "data");
        j.b(map, "header");
        this.url = str;
        this.data = str2;
        this.header = map;
    }

    public static /* synthetic */ VideoStatsResult copy$default(VideoStatsResult videoStatsResult, String str, String str2, Map<String, String> map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = videoStatsResult.url;
        }
        if ((i2 & 2) != 0) {
            str2 = videoStatsResult.data;
        }
        if ((i2 & 4) != 0) {
            map = videoStatsResult.header;
        }
        return videoStatsResult.copy(str, str2, map);
    }

    public final String component1() {
        return this.url;
    }

    public final String component2() {
        return this.data;
    }

    public final Map<String, String> component3() {
        return this.header;
    }

    public final VideoStatsResult copy(String str, String str2, Map<String, String> map) {
        j.b(str, "url");
        j.b(str2, "data");
        j.b(map, "header");
        return new VideoStatsResult(str, str2, map);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.header, (java.lang.Object) r3.header) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.VideoStatsResult
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.common.model.VideoStatsResult r3 = (com.farsitel.bazaar.common.model.VideoStatsResult) r3
            java.lang.String r0 = r2.url
            java.lang.String r1 = r3.url
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.data
            java.lang.String r1 = r3.data
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.util.Map<java.lang.String, java.lang.String> r0 = r2.header
            java.util.Map<java.lang.String, java.lang.String> r3 = r3.header
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.VideoStatsResult.equals(java.lang.Object):boolean");
    }

    public final String getData() {
        return this.data;
    }

    public final Map<String, String> getHeader() {
        return this.header;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.data;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map<String, String> map = this.header;
        if (map != null) {
            i2 = map.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "VideoStatsResult(url=" + this.url + ", data=" + this.data + ", header=" + this.header + ")";
    }
}
