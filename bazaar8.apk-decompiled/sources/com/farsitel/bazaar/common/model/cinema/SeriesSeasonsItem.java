package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class SeriesSeasonsItem implements RecyclerData {
    public final List<SeriesSeason> items;
    public final int selectedSeasonPosition;
    public final int viewType = CinemaViewItemType.SERIES_SEASON_ITEM.ordinal();

    public SeriesSeasonsItem(List<SeriesSeason> list, int i2) {
        j.b(list, "items");
        this.items = list;
        this.selectedSeasonPosition = i2;
    }

    public static /* synthetic */ SeriesSeasonsItem copy$default(SeriesSeasonsItem seriesSeasonsItem, List<SeriesSeason> list, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            list = seriesSeasonsItem.items;
        }
        if ((i3 & 2) != 0) {
            i2 = seriesSeasonsItem.selectedSeasonPosition;
        }
        return seriesSeasonsItem.copy(list, i2);
    }

    public final List<SeriesSeason> component1() {
        return this.items;
    }

    public final int component2() {
        return this.selectedSeasonPosition;
    }

    public final SeriesSeasonsItem copy(List<SeriesSeason> list, int i2) {
        j.b(list, "items");
        return new SeriesSeasonsItem(list, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SeriesSeasonsItem) {
                SeriesSeasonsItem seriesSeasonsItem = (SeriesSeasonsItem) obj;
                if (j.a((Object) this.items, (Object) seriesSeasonsItem.items)) {
                    if (this.selectedSeasonPosition == seriesSeasonsItem.selectedSeasonPosition) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final List<SeriesSeason> getItems() {
        return this.items;
    }

    public final int getSelectedSeasonPosition() {
        return this.selectedSeasonPosition;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        List<SeriesSeason> list = this.items;
        return ((list != null ? list.hashCode() : 0) * 31) + this.selectedSeasonPosition;
    }

    public String toString() {
        return "SeriesSeasonsItem(items=" + this.items + ", selectedSeasonPosition=" + this.selectedSeasonPosition + ")";
    }
}
