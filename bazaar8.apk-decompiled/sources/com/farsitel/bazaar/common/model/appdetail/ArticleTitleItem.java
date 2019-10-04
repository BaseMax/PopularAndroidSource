package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: ViewHolderItem.kt */
public final class ArticleTitleItem implements RecyclerData {
    public final int viewType = AppDetailViewItemType.ARTICLE_TITLE.ordinal();

    public int getViewType() {
        return this.viewType;
    }
}
