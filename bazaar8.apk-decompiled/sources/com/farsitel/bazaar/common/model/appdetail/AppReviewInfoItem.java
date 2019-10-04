package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class AppReviewInfoItem implements RecyclerData {
    public final float rate;
    public final int rate1;
    public final int rate1Count;
    public final int rate2;
    public final int rate2Count;
    public final int rate3;
    public final int rate3Count;
    public final int rate4;
    public final int rate4Count;
    public final int rate5;
    public final int rate5Count;
    public final String reviewCount;
    public final int sumRate;
    public final int viewType = AppDetailViewItemType.REVIEW_INFO.ordinal();

    public AppReviewInfoItem(int i2, int i3, int i4, int i5, int i6, String str, float f2) {
        j.b(str, "reviewCount");
        this.rate1Count = i2;
        this.rate2Count = i3;
        this.rate3Count = i4;
        this.rate4Count = i5;
        this.rate5Count = i6;
        this.reviewCount = str;
        this.rate = f2;
        int i7 = this.rate5Count;
        int i8 = this.rate4Count;
        int i9 = this.rate3Count;
        int i10 = this.rate2Count;
        int i11 = this.rate1Count;
        this.sumRate = i7 + i8 + i9 + i10 + i11;
        float f3 = (float) i11;
        int i12 = this.sumRate;
        float f4 = (float) 100;
        this.rate1 = (int) ((f3 / ((float) i12)) * f4);
        this.rate2 = (int) ((((float) i10) / ((float) i12)) * f4);
        this.rate3 = (int) ((((float) i9) / ((float) i12)) * f4);
        this.rate4 = (int) ((((float) i8) / ((float) i12)) * f4);
        this.rate5 = (int) ((((float) i7) / ((float) i12)) * f4);
    }

    private final int component1() {
        return this.rate1Count;
    }

    private final int component2() {
        return this.rate2Count;
    }

    private final int component3() {
        return this.rate3Count;
    }

    private final int component4() {
        return this.rate4Count;
    }

    private final int component5() {
        return this.rate5Count;
    }

    public static /* synthetic */ AppReviewInfoItem copy$default(AppReviewInfoItem appReviewInfoItem, int i2, int i3, int i4, int i5, int i6, String str, float f2, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i2 = appReviewInfoItem.rate1Count;
        }
        if ((i7 & 2) != 0) {
            i3 = appReviewInfoItem.rate2Count;
        }
        int i8 = i3;
        if ((i7 & 4) != 0) {
            i4 = appReviewInfoItem.rate3Count;
        }
        int i9 = i4;
        if ((i7 & 8) != 0) {
            i5 = appReviewInfoItem.rate4Count;
        }
        int i10 = i5;
        if ((i7 & 16) != 0) {
            i6 = appReviewInfoItem.rate5Count;
        }
        int i11 = i6;
        if ((i7 & 32) != 0) {
            str = appReviewInfoItem.reviewCount;
        }
        String str2 = str;
        if ((i7 & 64) != 0) {
            f2 = appReviewInfoItem.rate;
        }
        return appReviewInfoItem.copy(i2, i8, i9, i10, i11, str2, f2);
    }

    public final String component6() {
        return this.reviewCount;
    }

    public final float component7() {
        return this.rate;
    }

    public final AppReviewInfoItem copy(int i2, int i3, int i4, int i5, int i6, String str, float f2) {
        j.b(str, "reviewCount");
        AppReviewInfoItem appReviewInfoItem = new AppReviewInfoItem(i2, i3, i4, i5, i6, str, f2);
        return appReviewInfoItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AppReviewInfoItem) {
                AppReviewInfoItem appReviewInfoItem = (AppReviewInfoItem) obj;
                if (this.rate1Count == appReviewInfoItem.rate1Count) {
                    if (this.rate2Count == appReviewInfoItem.rate2Count) {
                        if (this.rate3Count == appReviewInfoItem.rate3Count) {
                            if (this.rate4Count == appReviewInfoItem.rate4Count) {
                                if (!(this.rate5Count == appReviewInfoItem.rate5Count) || !j.a((Object) this.reviewCount, (Object) appReviewInfoItem.reviewCount) || Float.compare(this.rate, appReviewInfoItem.rate) != 0) {
                                    return false;
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

    public final float getRate() {
        return this.rate;
    }

    public final int getRate1() {
        return this.rate1;
    }

    public final int getRate2() {
        return this.rate2;
    }

    public final int getRate3() {
        return this.rate3;
    }

    public final int getRate4() {
        return this.rate4;
    }

    public final int getRate5() {
        return this.rate5;
    }

    public final String getReviewCount() {
        return this.reviewCount;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i2 = ((((((((this.rate1Count * 31) + this.rate2Count) * 31) + this.rate3Count) * 31) + this.rate4Count) * 31) + this.rate5Count) * 31;
        String str = this.reviewCount;
        return ((i2 + (str != null ? str.hashCode() : 0)) * 31) + Float.floatToIntBits(this.rate);
    }

    public String toString() {
        return "AppReviewInfoItem(rate1Count=" + this.rate1Count + ", rate2Count=" + this.rate2Count + ", rate3Count=" + this.rate3Count + ", rate4Count=" + this.rate4Count + ", rate5Count=" + this.rate5Count + ", reviewCount=" + this.reviewCount + ", rate=" + this.rate + ")";
    }
}
