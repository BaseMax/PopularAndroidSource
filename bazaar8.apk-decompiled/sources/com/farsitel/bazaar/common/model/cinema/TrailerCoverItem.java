package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class TrailerCoverItem implements RecyclerData {
    public final String previewUrl;
    public final String videoUrl;
    public final int viewType = ScreenshotViewItemType.TRAILER_ITEM.ordinal();

    public TrailerCoverItem(String str, String str2) {
        j.b(str, "previewUrl");
        j.b(str2, "videoUrl");
        this.previewUrl = str;
        this.videoUrl = str2;
    }

    public static /* synthetic */ TrailerCoverItem copy$default(TrailerCoverItem trailerCoverItem, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = trailerCoverItem.previewUrl;
        }
        if ((i2 & 2) != 0) {
            str2 = trailerCoverItem.videoUrl;
        }
        return trailerCoverItem.copy(str, str2);
    }

    public final String component1() {
        return this.previewUrl;
    }

    public final String component2() {
        return this.videoUrl;
    }

    public final TrailerCoverItem copy(String str, String str2) {
        j.b(str, "previewUrl");
        j.b(str2, "videoUrl");
        return new TrailerCoverItem(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.videoUrl, (java.lang.Object) r3.videoUrl) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.TrailerCoverItem
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.cinema.TrailerCoverItem r3 = (com.farsitel.bazaar.common.model.cinema.TrailerCoverItem) r3
            java.lang.String r0 = r2.previewUrl
            java.lang.String r1 = r3.previewUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.videoUrl
            java.lang.String r3 = r3.videoUrl
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.TrailerCoverItem.equals(java.lang.Object):boolean");
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.previewUrl;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.videoUrl;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "TrailerCoverItem(previewUrl=" + this.previewUrl + ", videoUrl=" + this.videoUrl + ")";
    }
}
