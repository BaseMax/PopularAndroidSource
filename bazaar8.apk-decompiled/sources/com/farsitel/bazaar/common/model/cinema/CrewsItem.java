package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class CrewsItem implements RecyclerData {
    public final List<CrewItem> items;
    public final int viewType = CinemaViewItemType.CREWS.ordinal();

    public CrewsItem(List<CrewItem> list) {
        j.b(list, "items");
        this.items = list;
    }

    public final List<CrewItem> getItems() {
        return this.items;
    }

    public int getViewType() {
        return this.viewType;
    }
}
