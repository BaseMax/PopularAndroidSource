package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: ViewHolderItem.kt */
public final class ProgressItem implements RecyclerData {
    public final int viewType = CinemaViewItemType.LOADING_ITEM.ordinal();

    public int getViewType() {
        return this.viewType;
    }
}
