package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsStats;
import h.f.b.j;

/* compiled from: AppDetailResponseDto.kt */
public final class i {
    @c("installCountRange")
    public final String installCountRange;
    @c("rate")
    public final float rate;
    @c("rate1Count")
    public final int rate1Count;
    @c("rate2Count")
    public final int rate2Count;
    @c("rate3Count")
    public final int rate3Count;
    @c("rate4Count")
    public final int rate4Count;
    @c("rate5Count")
    public final int rate5Count;
    @c("reviewCount")
    public final int reviewCount;
    @c("verboseInstallCountRange")
    public final String verboseInstallCountRange;
    @c("verboseInstallCountRangeDescription")
    public final String verboseInstallCountRangeDescription;
    @c("verboseInstallCountRangeLabel")
    public final String verboseInstallCountRangeLabel;
    @c("verboseReviewCount")
    public final String verboseReviewCount;

    public final AppDetailsStats a() {
        AppDetailsStats appDetailsStats = new AppDetailsStats(this.rate, this.rate1Count, this.rate2Count, this.rate3Count, this.rate4Count, this.rate5Count, this.installCountRange, this.verboseInstallCountRange, this.verboseInstallCountRangeLabel, this.verboseInstallCountRangeDescription, this.reviewCount, this.verboseReviewCount);
        return appDetailsStats;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                i iVar = (i) obj;
                if (Float.compare(this.rate, iVar.rate) == 0) {
                    if (this.rate1Count == iVar.rate1Count) {
                        if (this.rate2Count == iVar.rate2Count) {
                            if (this.rate3Count == iVar.rate3Count) {
                                if (this.rate4Count == iVar.rate4Count) {
                                    if ((this.rate5Count == iVar.rate5Count) && j.a((Object) this.installCountRange, (Object) iVar.installCountRange) && j.a((Object) this.verboseInstallCountRange, (Object) iVar.verboseInstallCountRange) && j.a((Object) this.verboseInstallCountRangeLabel, (Object) iVar.verboseInstallCountRangeLabel) && j.a((Object) this.verboseInstallCountRangeDescription, (Object) iVar.verboseInstallCountRangeDescription)) {
                                        if (!(this.reviewCount == iVar.reviewCount) || !j.a((Object) this.verboseReviewCount, (Object) iVar.verboseReviewCount)) {
                                            return false;
                                        }
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

    public int hashCode() {
        int floatToIntBits = ((((((((((Float.floatToIntBits(this.rate) * 31) + this.rate1Count) * 31) + this.rate2Count) * 31) + this.rate3Count) * 31) + this.rate4Count) * 31) + this.rate5Count) * 31;
        String str = this.installCountRange;
        int i2 = 0;
        int hashCode = (floatToIntBits + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.verboseInstallCountRange;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.verboseInstallCountRangeLabel;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.verboseInstallCountRangeDescription;
        int hashCode4 = (((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.reviewCount) * 31;
        String str5 = this.verboseReviewCount;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "AppDetailsStatsDto(rate=" + this.rate + ", rate1Count=" + this.rate1Count + ", rate2Count=" + this.rate2Count + ", rate3Count=" + this.rate3Count + ", rate4Count=" + this.rate4Count + ", rate5Count=" + this.rate5Count + ", installCountRange=" + this.installCountRange + ", verboseInstallCountRange=" + this.verboseInstallCountRange + ", verboseInstallCountRangeLabel=" + this.verboseInstallCountRangeLabel + ", verboseInstallCountRangeDescription=" + this.verboseInstallCountRangeDescription + ", reviewCount=" + this.reviewCount + ", verboseReviewCount=" + this.verboseReviewCount + ")";
    }
}
