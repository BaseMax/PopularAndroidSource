package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;

/* compiled from: AppDetail.kt */
public final class AppDetailsStats {
    public final String installCountRange;
    public final float rate;
    public final int rate1Count;
    public final int rate2Count;
    public final int rate3Count;
    public final int rate4Count;
    public final int rate5Count;
    public final int reviewCount;
    public final String verboseInstallCountRange;
    public final String verboseInstallCountRangeDescription;
    public final String verboseInstallCountRangeLabel;
    public final String verboseReviewCount;

    public AppDetailsStats(float f2, int i2, int i3, int i4, int i5, int i6, String str, String str2, String str3, String str4, int i7, String str5) {
        j.b(str, "installCountRange");
        j.b(str2, "verboseInstallCountRange");
        j.b(str4, "verboseInstallCountRangeDescription");
        j.b(str5, "verboseReviewCount");
        this.rate = f2;
        this.rate1Count = i2;
        this.rate2Count = i3;
        this.rate3Count = i4;
        this.rate4Count = i5;
        this.rate5Count = i6;
        this.installCountRange = str;
        this.verboseInstallCountRange = str2;
        this.verboseInstallCountRangeLabel = str3;
        this.verboseInstallCountRangeDescription = str4;
        this.reviewCount = i7;
        this.verboseReviewCount = str5;
    }

    public final String getInstallCountRange() {
        return this.installCountRange;
    }

    public final float getRate() {
        return this.rate;
    }

    public final int getRate1Count() {
        return this.rate1Count;
    }

    public final int getRate2Count() {
        return this.rate2Count;
    }

    public final int getRate3Count() {
        return this.rate3Count;
    }

    public final int getRate4Count() {
        return this.rate4Count;
    }

    public final int getRate5Count() {
        return this.rate5Count;
    }

    public final int getReviewCount() {
        return this.reviewCount;
    }

    public final String getVerboseInstallCountRange() {
        return this.verboseInstallCountRange;
    }

    public final String getVerboseInstallCountRangeDescription() {
        return this.verboseInstallCountRangeDescription;
    }

    public final String getVerboseInstallCountRangeLabel() {
        return this.verboseInstallCountRangeLabel;
    }

    public final String getVerboseReviewCount() {
        return this.verboseReviewCount;
    }
}
