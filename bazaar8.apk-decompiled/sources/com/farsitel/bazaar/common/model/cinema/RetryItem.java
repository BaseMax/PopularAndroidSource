package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class RetryItem implements RecyclerData {
    public final String message;
    public final int viewType = CinemaViewItemType.RETRY_ITEM.ordinal();

    public RetryItem(String str) {
        this.message = str;
    }

    public static /* synthetic */ RetryItem copy$default(RetryItem retryItem, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = retryItem.message;
        }
        return retryItem.copy(str);
    }

    public final String component1() {
        return this.message;
    }

    public final RetryItem copy(String str) {
        return new RetryItem(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof RetryItem) && j.a((Object) this.message, (Object) ((RetryItem) obj).message));
    }

    public final String getMessage() {
        return this.message;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.message;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "RetryItem(message=" + this.message + ")";
    }
}
