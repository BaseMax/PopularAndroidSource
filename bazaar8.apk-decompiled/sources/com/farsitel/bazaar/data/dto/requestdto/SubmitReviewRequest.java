package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.submitReviewRequest")
/* compiled from: SubmitReviewRequest.kt */
public final class SubmitReviewRequest {
    @c("appVersionCode")
    public final long appVersionCode;
    @c("isInline")
    public final boolean isInline;
    @c("packageName")
    public final String packageName;
    @c("rate")
    public final int rate;
    @c("sdkVersion")
    public final long sdkVersion;
    @c("text")
    public final String text;

    public SubmitReviewRequest(String str, int i2, String str2, long j2, long j3, boolean z) {
        j.b(str, "packageName");
        this.packageName = str;
        this.rate = i2;
        this.text = str2;
        this.sdkVersion = j2;
        this.appVersionCode = j3;
        this.isInline = z;
    }

    public final long getAppVersionCode() {
        return this.appVersionCode;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getRate() {
        return this.rate;
    }

    public final long getSdkVersion() {
        return this.sdkVersion;
    }

    public final String getText() {
        return this.text;
    }

    public final boolean isInline() {
        return this.isInline;
    }
}
