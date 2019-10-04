package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: AppDetail.kt */
public final class Screenshot implements Serializable {
    public static final Companion Companion = new Companion(null);
    public final boolean isImage;
    public final String mainUrl;
    public final String thumbnailUrl;

    /* compiled from: AppDetail.kt */
    public static final class Companion {
        public Companion() {
        }

        public final Screenshot createImageScreenshot(String str, String str2) {
            j.b(str, "mainUrl");
            j.b(str2, "thumbnailUrl");
            return new Screenshot(str, str2, true, null);
        }

        public final Screenshot createVideoScreenshot(String str, String str2) {
            j.b(str, "mainUrl");
            j.b(str2, "thumbnailUrl");
            return new Screenshot(str, str2, false, null);
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    public Screenshot(String str, String str2, boolean z) {
        this.mainUrl = str;
        this.thumbnailUrl = str2;
        this.isImage = z;
    }

    public final String getMainUrl() {
        return this.mainUrl;
    }

    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public final boolean isImage() {
        return this.isImage;
    }

    public final Screenshot toScreenShotItem() {
        return Companion.createImageScreenshot(this.mainUrl, this.thumbnailUrl);
    }

    public /* synthetic */ Screenshot(String str, String str2, boolean z, f fVar) {
        this(str, str2, z);
    }
}
