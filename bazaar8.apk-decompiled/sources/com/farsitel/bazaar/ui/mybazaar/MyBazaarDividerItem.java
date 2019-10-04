package com.farsitel.bazaar.ui.mybazaar;

import com.farsitel.bazaar.common.model.common.DividerItem;

/* compiled from: MyBazaarItem.kt */
public final class MyBazaarDividerItem extends DividerItem {
    public final int viewType = MyBazaarItemViewType.DIVIDER.ordinal();

    public MyBazaarDividerItem() {
        super(0, false, 56, 0, 3, null);
    }

    public int getViewType() {
        return this.viewType;
    }
}
