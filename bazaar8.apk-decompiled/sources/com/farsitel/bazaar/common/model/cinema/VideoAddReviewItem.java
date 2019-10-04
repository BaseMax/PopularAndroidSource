package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: ViewHolderItem.kt */
public final class VideoAddReviewItem implements RecyclerData {
    public final int viewType = CinemaViewItemType.ADD_REVIEW.ordinal();

    public int getViewType() {
        return this.viewType;
    }
}
