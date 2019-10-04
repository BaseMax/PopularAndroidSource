package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: ViewHolderItem.kt */
public final class AppMyRateItem implements RecyclerData {
    public int myRate;
    public final int viewType = AppDetailViewItemType.APP_MY_RATE.ordinal();

    public AppMyRateItem(int i2) {
        this.myRate = i2;
    }

    public static /* synthetic */ AppMyRateItem copy$default(AppMyRateItem appMyRateItem, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = appMyRateItem.myRate;
        }
        return appMyRateItem.copy(i2);
    }

    public final int component1() {
        return this.myRate;
    }

    public final AppMyRateItem copy(int i2) {
        return new AppMyRateItem(i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AppMyRateItem) {
                if (this.myRate == ((AppMyRateItem) obj).myRate) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int getMyRate() {
        return this.myRate;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        return this.myRate;
    }

    public final void setMyRate(int i2) {
        this.myRate = i2;
    }

    public String toString() {
        return "AppMyRateItem(myRate=" + this.myRate + ")";
    }
}
