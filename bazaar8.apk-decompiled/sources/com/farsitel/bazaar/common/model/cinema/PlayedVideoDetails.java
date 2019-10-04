package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.ShortInfo;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: VideoDetail.kt */
public final class PlayedVideoDetails implements Serializable {
    public final ShortInfo shortInfo;
    public final String title;

    public PlayedVideoDetails() {
        this(null, null, 3, null);
    }

    public PlayedVideoDetails(String str, ShortInfo shortInfo2) {
        j.b(str, "title");
        this.title = str;
        this.shortInfo = shortInfo2;
    }

    public static /* synthetic */ PlayedVideoDetails copy$default(PlayedVideoDetails playedVideoDetails, String str, ShortInfo shortInfo2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = playedVideoDetails.title;
        }
        if ((i2 & 2) != 0) {
            shortInfo2 = playedVideoDetails.shortInfo;
        }
        return playedVideoDetails.copy(str, shortInfo2);
    }

    public final String component1() {
        return this.title;
    }

    public final ShortInfo component2() {
        return this.shortInfo;
    }

    public final PlayedVideoDetails copy(String str, ShortInfo shortInfo2) {
        j.b(str, "title");
        return new PlayedVideoDetails(str, shortInfo2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.shortInfo, (java.lang.Object) r3.shortInfo) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails r3 = (com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.ShortInfo r0 = r2.shortInfo
            com.farsitel.bazaar.common.model.ShortInfo r3 = r3.shortInfo
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails.equals(java.lang.Object):boolean");
    }

    public final ShortInfo getShortInfo() {
        return this.shortInfo;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        ShortInfo shortInfo2 = this.shortInfo;
        if (shortInfo2 != null) {
            i2 = shortInfo2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "PlayedVideoDetails(title=" + this.title + ", shortInfo=" + this.shortInfo + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PlayedVideoDetails(String str, ShortInfo shortInfo2, int i2, f fVar) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? null : shortInfo2);
    }
}
