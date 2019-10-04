package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class VideoReviewItem implements RecyclerData {
    public final ReviewItem reviewItem;
    public final int viewType = CinemaViewItemType.REVIEW_ITEM.ordinal();

    public VideoReviewItem(ReviewItem reviewItem2) {
        j.b(reviewItem2, "reviewItem");
        this.reviewItem = reviewItem2;
    }

    public static /* synthetic */ VideoReviewItem copy$default(VideoReviewItem videoReviewItem, ReviewItem reviewItem2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            reviewItem2 = videoReviewItem.reviewItem;
        }
        return videoReviewItem.copy(reviewItem2);
    }

    public final ReviewItem component1() {
        return this.reviewItem;
    }

    public final VideoReviewItem copy(ReviewItem reviewItem2) {
        j.b(reviewItem2, "reviewItem");
        return new VideoReviewItem(reviewItem2);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof VideoReviewItem) && j.a((Object) this.reviewItem, (Object) ((VideoReviewItem) obj).reviewItem));
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
        return "VideoReviewItem(reviewItem=" + this.reviewItem + ")";
    }
}
