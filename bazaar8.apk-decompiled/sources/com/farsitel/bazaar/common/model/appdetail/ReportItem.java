package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: ViewHolderItem.kt */
public final class ReportItem implements RecyclerData {
    public final int viewType = AppDetailViewItemType.REPORT.ordinal();

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }
}
