package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class ScreenshotsItem implements RecyclerData {
    public final List<RecyclerData> items;
    public final int viewType = CinemaViewItemType.SCREEN_SHOT.ordinal();

    public ScreenshotsItem(List<? extends RecyclerData> list) {
        j.b(list, "items");
        this.items = list;
    }

    public static /* synthetic */ ScreenshotsItem copy$default(ScreenshotsItem screenshotsItem, List<RecyclerData> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = screenshotsItem.items;
        }
        return screenshotsItem.copy(list);
    }

    public final List<RecyclerData> component1() {
        return this.items;
    }

    public final ScreenshotsItem copy(List<? extends RecyclerData> list) {
        j.b(list, "items");
        return new ScreenshotsItem(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ScreenshotsItem) && j.a((Object) this.items, (Object) ((ScreenshotsItem) obj).items));
    }

    public final List<RecyclerData> getItems() {
        return this.items;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        List<RecyclerData> list = this.items;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ScreenshotsItem(items=" + this.items + ")";
    }
}
