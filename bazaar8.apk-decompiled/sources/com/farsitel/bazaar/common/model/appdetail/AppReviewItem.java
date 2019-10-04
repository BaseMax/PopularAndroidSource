package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class AppReviewItem implements RecyclerData {
    public final ReviewItem reviewItem;
    public final int viewType = AppDetailViewItemType.MY_REVIEW.ordinal();

    public AppReviewItem(ReviewItem reviewItem2) {
        j.b(reviewItem2, "reviewItem");
        this.reviewItem = reviewItem2;
    }

    public static /* synthetic */ AppReviewItem copy$default(AppReviewItem appReviewItem, ReviewItem reviewItem2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            reviewItem2 = appReviewItem.reviewItem;
        }
        return appReviewItem.copy(reviewItem2);
    }

    public final ReviewItem component1() {
        return this.reviewItem;
    }

    public final AppReviewItem copy(ReviewItem reviewItem2) {
        j.b(reviewItem2, "reviewItem");
        return new AppReviewItem(reviewItem2);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof AppReviewItem) && j.a((Object) this.reviewItem, (Object) ((AppReviewItem) obj).reviewItem));
    }

    public final ReviewItem getReviewItem() {
        return this.reviewItem;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        ReviewItem reviewItem2 = this.reviewItem;
        if (reviewItem2 != null) {
            return reviewItem2.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "AppReviewItem(reviewItem=" + this.reviewItem + ")";
    }
}
