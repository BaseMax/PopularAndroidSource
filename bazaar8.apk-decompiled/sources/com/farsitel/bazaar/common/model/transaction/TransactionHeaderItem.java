package com.farsitel.bazaar.common.model.transaction;

import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: TransactionItem.kt */
public final class TransactionHeaderItem implements RecyclerData {
    public final int viewType = TransactionItemViewType.TRANSACTION_HEADER_ITEM.ordinal();

    public int getViewType() {
        return this.viewType;
    }
}
